# Hermes Odyssey

## VHDL NoC Simulation - synthetic traffic 

In this first example we will utilize the ModelSim (or QuestaSim) to test the infected NoC and watch its the behavior utilizing traffic generated by two traffic injectors.

The simulation presents this given scenario:

![alt text](https://raw.githubusercontent.com/iacanaw/Hermes_Odyssey/master/fig/scenario.png)

In this scenario we can see the following situation:
- *Flow Manager* **01** is sending random packets periodicaly at a 20% rate to address **21**.
- *Flow Manager* **10** is sending random packets periodicaly at a 20% rate to address **12**.
- *Data Manager* **11** is programmed to transmit to **20** a specific packet (this is the target of our demonstration).
- *Data Manager* **22** has the malicious application packet that will set the *Hardware Trojan* to *duplicate* the target packet and sent the copy to it.

In directory */Simulation/data* we find the packet that will be read by the *Data Manager* module. In this example only the files *fileIn0202* (Hardware Trojan configuration packets) and *fileIn0101* (target packet that will be stolen) have content. Traffic genereted by the *Flow Manager* is randomicaly generated. 

At the end of the simulation, you can verify the correct operation by comparing the content of *fileIn0101* (source of the packet) and *fileOut0200* (packet's legitimal destination) and *fileOut0202* (duplicated packet, malicious destination). It's expected that only the first flit (destination flit) will be different.

To run the simulation, just access the project root directory in QuestaSim/ModelSim and run the following command:

> do compile_example.tcl

The vhdl will be compiled and the simulation will start with the wave:

![alt text](https://raw.githubusercontent.com/iacanaw/Hermes_Odyssey/master/fig/wave1.png)

1. Here we see the *Router 11* local input (4), that is connected to *Data Manager*, receiving a packet to send to *Router 20*.
2. At this point the *DataManager 22* sends the configuration packet to the Hardware Trojan located at *Router 11*.
3. The configuration packet gets to the *Router 11* 
4. The hardware trojan is configured and waits a new header to start the duplication process.

![alt text](https://raw.githubusercontent.com/iacanaw/Hermes_Odyssey/master/fig/wave2.png)

1. At this point *Router 11* starts to transmitt a new packet to *Router 20* using port east (0), but you can see that in the port north (2) has a copy of that, this is the duplicated packet, beeing sent to the malicious destination (*Router 22*).
2. Note that the Trojan status has change from "*waitHeader*" to "*transmitting*".
3. Here you can see both legitimate and the malicious destinations receiving the same packet (*Router 20* and *Router 22* respectively).

=====================================================================================

## A Manycore System Simulation - malicious application testing

In this example we will use the a modified version of a Manycore called [Memphis](https://www.inf.pucrs.br/hemps/memphis.html), that is developed by our research group. 
- [Here](https://github.com/GaphGroup/Memphis/raw/master/tutorials/Tutorial-Memphis-V4-English.pdf) you will find a tutorial of how to install/use it. **To run our modified version, you need to use the provided directory "*memphis*" as your $MEMPHIS_HOME.**

We have two scenarios to simulate here:
1. **Baseline Scenario** *memphis_sortingDivideConquer* - runs an sorting application divided in 15 tasks.
2. **Attack Scenario** *memphis_trojanRun* - runs the same application but with a malicious task running in the system.

Use the command to run each scenario.

> memphis-all my_testcase.yaml my_scenario.yaml 10

