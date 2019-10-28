/*!\file packet.h
 * MEMPHIS VERSION - 8.0 - support for RT applications
 *
 * Distribution:  June 2016
 *
 * Created by: Marcelo Ruaro - contact: marcelo.ruaro@acad.pucrs.br
 *
 * Research group: GAPH-PUCRS   -  contact:  fernando.moraes@pucrs.br
 *
 * \brief
 * This module defines the ServiceHeader structure. This structure is used by all software components to
 * send and receive packets. It defines the service header of each packets.
 */

#ifndef SOFTWARE_INCLUDE_PACKET_PACKET_H_
#define SOFTWARE_INCLUDE_PACKET_PACKET_H_

#include "../../include/kernel_pkg.h"

#define CONSTANT_PKT_SIZE	13	//!<Constant Service Header size, based on the structure ServiceHeader. If you change it, please change the same define within app_injector.h

/**
 * \brief This structure is in charge to defines the ServiceHeader field that can be filled by the software part
 * when need to send a packet, or that will be read when the packet is received
 */
typedef struct {
	//flit 0
	unsigned int header;				//!<Is the first flit of packet, keeps the target NoC router
	//flit 1
	unsigned int payload_size;			//!<Stores the number of flits that forms the remaining of packet
	// flit 2
	unsigned int service;				//!<Store the packet service code (see services.h file)
	// flit 3
	union {								//!<Generic union
		   unsigned int producer_task;
		   unsigned int task_ID;
		   unsigned int app_ID;
	};
	// flit 4
	union {								//!<Generic union
	   unsigned int consumer_task;
	   unsigned int cluster_ID;
	   unsigned int master_ID;
	   unsigned int hops;
	   unsigned int period;
	};
	// flit 5
	unsigned int source_PE;				//!<Store the packet source PE address
	// flit 6
	unsigned int timestamp;				//!<Store the packet timestamp, filled automatically by send_packet function
	// flit 7
	unsigned int transaction;			//!<Unused field for while
	// flit 8
	union {								//!<Generic union
		unsigned int msg_lenght;
		unsigned int resolution;
		unsigned int priority;
		unsigned int deadline;
		unsigned int pkt_latency;
		unsigned int stack_size;
		unsigned int requesting_task;
		unsigned int released_proc;
		unsigned int app_task_number;
		unsigned int app_descriptor_size;
		unsigned int allocated_processor;
		unsigned int requesting_processor;
	};
	// flit 9
	union {								//!<Generic union
		unsigned int pkt_size;
		unsigned int data_size;
		unsigned int insert_request;
	};
	// flit 10
	union {								//!<Generic union
		unsigned int code_size;
		unsigned int max_free_procs;
		unsigned int execution_time;
	};
	// flit 11
	union {								//!<Generic union
		unsigned int bss_size;
		unsigned int cpu_slack_time;
		unsigned int request_size;
	};
	// flit 12
	union {								//!<Generic union
		unsigned int initial_address;
		unsigned int program_counter;
		unsigned int utilization;
	};

	//Add new variables here ...

} ServiceHeader;

/**
 * \brief This structure is in charge to store a ServiceHeader slot memory space
 */
typedef struct {

	ServiceHeader service_header;
	unsigned int status;

}ServiceHeaderSlot;


ServiceHeader* get_service_header_slot();

void init_service_header_slots();

void DMNI_read_data(unsigned int, unsigned int);

void DMNI_send_data(unsigned int, unsigned int);

void send_packet(ServiceHeader *, unsigned int, unsigned int);

void read_packet(ServiceHeader *);


#endif /* SOFTWARE_INCLUDE_PACKET_PACKET_H_ */
