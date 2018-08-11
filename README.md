# time-triggered-network

There are 3 code documents in this project. CPU1 is the master node of one network, while the others should get connected with the master node.

Every code is split into 4 main modules. To use the time synchronization code in you own project, you need to change the parameters in receiving module and the sending module. When you have changed the parameters of communication, and the programm can be synthesized and you can download the programm into you FPGA. After the nodes formulate one network, they can start communicate and complete the time synchronization. In the top module, you can change the frequency of time synchronization.

With these codes used in your FPGA programm, the precision of time synchronization will be pretty satisfying.
