<img src="https://user-images.githubusercontent.com/66263776/98416555-43fa9b80-204d-11eb-800a-df8e19b62655.jpg" width="700" height= "200"> 

# :desktop_computer: 0x08. Networking basics #1 :computer:

## :memo: Activities :memo:
### [Localhost ]()
* What is localhost?]
	1) A hostname that means this IP
	2) A hostname that means this computer
	3) An IP attached to a computer
### [All IPs]()
* What is 0.0.0.0?
	1) All IPv4 addresses on the local machine
	2) All the IPs
	3) It means null in networking

### [Change your home IP]()
IN this secttion you need to write a script in bash that configures an Ubuntu server with the below requirements with the follow reuqeriment:
* ```localhost``` resolves to ```127.0.0.2```
* ```facebook.com``` resolves to ```8.8.8.8.```

Example:
```
user@ubuntu$ ping localhost
PING localhost (127.0.0.1) 56(84) bytes of data.
64 bytes from localhost (127.0.0.1): icmp_seq=1 ttl=64 time=0.012 ms
^C
--- localhost ping statistics ---
1 packets transmitted, 1 received, 0% packet loss, time 0ms
rtt min/avg/max/mdev = 0.012/0.012/0.012/0.000 ms
user@ubuntu$
user@ubuntu$ ping facebook.com
PING facebook.com (157.240.11.35) 56(84) bytes of data.
64 bytes from edge-star-mini-shv-02-lax3.facebook.com (157.240.11.35): icmp_seq=1 ttl=63 time=15.4 ms
^C
--- facebook.com ping statistics ---
1 packets transmitted, 1 received, 0% packet loss, time 0ms
rtt min/avg/max/mdev = 15.432/15.432/15.432/0.000 ms
user@ubuntu$
user@ubuntu$ sudo ./2-change_your_home_IP
user@ubuntu$
user@ubuntu$ ping localhost
PING localhost (127.0.0.2) 56(84) bytes of data.
64 bytes from localhost (127.0.0.2): icmp_seq=1 ttl=64 time=0.012 ms
64 bytes from localhost (127.0.0.2): icmp_seq=2 ttl=64 time=0.036 ms
^C
--- localhost ping statistics ---
2 packets transmitted, 2 received, 0% packet loss, time 1000ms
rtt min/avg/max/mdev = 0.012/0.024/0.036/0.012 ms
user@ubuntu$
user@ubuntu$ ping facebook.com
PING facebook.com (8.8.8.8) 56(84) bytes of data.
64 bytes from facebook.com (8.8.8.8): icmp_seq=1 ttl=63 time=8.06 ms
^C
--- facebook.com ping statistics ---
1 packets transmitted, 1 received, 0% packet loss, time 0ms
rtt min/avg/max/mdev = 8.065/8.065/8.065/0.000 ms
```
### [Show attached IPs ]()
Example:
```
user@ubuntu$ ./3-show_attached_IPs | cat -e
10.0.2.15$
127.0.0.1$
user@ubuntu$
```
### [Port listening on localhost]()
In this part you need to create  a script that listens on port ```98``` on ```localhost```
**Terminal 0**
Starting my script.
```
user@ubuntu$ sudo ./4-port_listening_on_localhost
```
**Terminal 1**
Connecting to localhost on port 98 using telnet and typing some text.
```
user@ubuntu$ telnet localhost 98
Trying 127.0.0.2...
Connected to localhost.
Escape character is '^]'.
Hello world
test
```
**Terminal 0**
Receiving the text on the other side.
```
user@ubuntu$ sudo ./4-port_listening_on_localhost
Hello world
test
```
## Author
:man_technologist: Camilo Barreiro/ [CBarreiro96](https://github.com/CBarreiro96)