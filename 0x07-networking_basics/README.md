<img src="https://user-images.githubusercontent.com/66263776/98416555-43fa9b80-204d-11eb-800a-df8e19b62655.jpg" width="700" height= "200"> 

# :keyboard: 0x07. Networking basics #0 :computer:

In this proyect you are going to learn about the follow topic:
* OSI model
* LAN
* WAN
* Internet
* TCP/UDP
## :memo: Activities :memo:
In this section you are going to find some question to learn this topic
### [OSI model](https://github.com/CBarreiro96/holberton-system_engineering-devops/blob/master/0x07-networking_basics/0-OSI_model "Osi model")
* What is OSI model?]
	1. Set of specifications that network hardware manufacturers must respect
	2. The OSI model is a conceptual model that characterizes the communication functions of a telecommunication system without regard to their underlying internal structure and technology
	3. The OSI model is a model that characterizes the communication functions of a telecommunication system with a strong regard for their underlying internal structure and technology
* How is the OSI model organized?
	1. Alphabetically
	2. From the lowest to the highest level
	3. Randomly
### [Types of network](https://github.com/CBarreiro96/holberton-system_engineering-devops/blob/master/0x07-networking_basics/1-types_of_network "type of network")
* What type of network are Holberton iMacs connected to?
	1. Internet
	2. WAN
	3. LAN
* What type of network could connect an office in one building to another office in a building a few streets away?
	1. Internet
	2. WAN
	3. LAN
* What network do you use when you browse www.holbertonschool.com from your smartphone (not connected to the Wifi)?
	1. Internet
	2. WAN
	3. LAN
### [MAC and IP address](https://github.com/CBarreiro96/holberton-system_engineering-devops/blob/master/0x07-networking_basics/2-MAC_and_IP_address "MAC")
* What is a MAC address?
	1. The name of a network interface
	2. The unique identifier of a network interface
	3. A network interface
* What is an IP address?
	1. Is to devices connected to a network what postal address is to houses
	2. The unique identifier of a network interface
	3. Is a number that network devices use to connect to networks
### [UDP and TCP ](https://github.com/CBarreiro96/holberton-system_engineering-devops/blob/master/0x07-networking_basics/3-UDP_and_TCP "UDP AND TCP")
* Which statement is correct for the TCP box?
	1. ```It is a protocol that is transferring data in a slow way but surely```
	2. ```It is a protocol that is transferring data in a fast way and might loss data along in the process```
* Which statement is correct for the UDP box?
	1. ```It is a protocol that is transferring data in a slow way but surely```
	2. ```It is a protocol that is transferring data in a fast way and might loss data along in the process```
* Which statement is correct for the TCP worker?
	1. ```Have you received boxes x, y, z?```
	2. ```May I increase the rate at which I am sending you boxes?```
### [TCP and UDP ports](https://github.com/CBarreiro96/holberton-system_engineering-devops/blob/master/0x07-networking_basics/4-TCP_and_UDP_ports "scrpt Bash TCP and UDP")
In this part you are going to do a script in bash  that display listening ports
* That only shows listening sockets
* That shows the PID and name of the program to which each socket belongs

This scripts have to work like this example
```
user@ubuntu$ sudo ./4-TCP_and_UDP_ports
Active Internet connections (only servers)
Proto Recv-Q Send-Q Local Address           Foreign Address         State       PID/Program name
tcp        0      0 *:sunrpc                *:*                     LISTEN      518/rpcbind
tcp        0      0 *:ssh                   *:*                     LISTEN      1240/sshd
tcp        0      0 *:32938                 *:*                     LISTEN      547/rpc.statd
tcp6       0      0 [::]:sunrpc             [::]:*                  LISTEN      518/rpcbind
tcp6       0      0 [::]:ssh                [::]:*                  LISTEN      1240/sshd
tcp6       0      0 [::]:33737              [::]:*                  LISTEN      547/rpc.statd
udp        0      0 *:sunrpc                *:*                                 518/rpcbind
udp        0      0 *:691                   *:*                                 518/rpcbind
udp        0      0 localhost:723           *:*                                 547/rpc.statd
udp        0      0 *:60129                 *:*                                 547/rpc.statd
udp        0      0 *:3845                  *:*                                 562/dhclient
udp        0      0 *:bootpc                *:*                                 562/dhclient
udp6       0      0 [::]:47444              [::]:*                              547/rpc.statd
udp6       0      0 [::]:sunrpc             [::]:*                              518/rpcbind
udp6       0      0 [::]:50038              [::]:*                              562/dhclient
udp6       0      0 [::]:691                [::]:*                              518/rpcbind
Active UNIX domain sockets (only servers)
Proto RefCnt Flags       Type       State         I-Node   PID/Program name    Path
unix  2      [ ACC ]     STREAM     LISTENING     7724     518/rpcbind         /run/rpcbind.sock
unix  2      [ ACC ]     STREAM     LISTENING     6525     1/init              @/com/ubuntu/upstart
unix  2      [ ACC ]     STREAM     LISTENING     8559     835/dbus-daemon     /var/run/dbus/system_bus_socket
unix  2      [ ACC ]     STREAM     LISTENING     9190     1087/acpid          /var/run/acpid.socket
unix  2      [ ACC ]     SEQPACKET  LISTENING     7156     378/systemd-udevd   /run/udev/control
user@ubuntu$
```

### [Is the host on the network](https://github.com/CBarreiro96/holberton-system_engineering-devops/blob/master/0x07-networking_basics/5-is_the_host_on_the_network "Use command ping")
IN this part ypu need to create a script in bash that pings an IP address passed as an argument with the follow requeriment:
* Accepts a string as an argument
* Displays ```Usage:5-is_the_host_on_the_network {IP_ADDRESS} if no argument passed```
* Ping the IP 5 times

This scripts have to work like this example
```
user@ubuntu$ ./5-is_the_host_on_the_network 8.8.8.8
PING 8.8.8.8 (8.8.8.8) 56(84) bytes of data.
64 bytes from 8.8.8.8: icmp_seq=1 ttl=63 time=12.9 ms
64 bytes from 8.8.8.8: icmp_seq=2 ttl=63 time=13.6 ms
64 bytes from 8.8.8.8: icmp_seq=3 ttl=63 time=7.83 ms
64 bytes from 8.8.8.8: icmp_seq=4 ttl=63 time=11.3 ms
64 bytes from 8.8.8.8: icmp_seq=5 ttl=63 time=7.57 ms

--- 8.8.8.8 ping statistics ---
5 packets transmitted, 5 received, 0% packet loss, time 4006ms
rtt min/avg/max/mdev = 7.570/10.682/13.679/2.546 ms
user@ubuntu$
user@ubuntu$ ./5-is_the_host_on_the_network
Usage: 5-is_the_host_on_the_network {IP_ADDRESS}
user@ubuntu$ 
```
## Author
:man_technologist: Camilo Barreiro/[CBarreiro96](https://github.com/CBarreiro96)
