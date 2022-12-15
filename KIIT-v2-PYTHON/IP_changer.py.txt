#UN - UNTESTED - L15-12-22 - V1 - KIIT-V2-PYTHON
#However, there are a few potential issues with the code that you should be aware of:
#The socket.gethostbyname() method is used to get the current IP address, but it may not always return the correct IP address, depending on how the network is configured. For example, if the network uses multiple IP addresses, the socket.gethostbyname() method may return only one of the IP addresses, rather than all of them.
#The input() function is used to prompt the user for the new IP address, subnet, and gateway, but this may not always be the best way to input these values. For example, if the user enters an invalid IP address, subnet, or gateway, the code will not be able to validate the input and may produce unexpected results.
#The code does not change the IP address, subnet, or gateway of the network interface, so the changes made by the user will not take effect. To change the IP address, subnet, and gateway of the network interface, you will need to use additional code that can modify the network configuration.

import socket
# define the current_ip variable and assign it a valid IPv4 address in string format
current_ip = "192.168.0.1"

# convert the current IP address and the subnet mask to integers
x = int.from_bytes(socket.inet_aton(current_ip), byteorder="big")
y = int.from_bytes(socket.inet_aton("255.255.255.0"), byteorder="big")

# calculate the subnet of the current IP address
current_subnet = socket.inet_ntoa(x.to_bytes(4, byteorder="big") & y.to_bytes(4, byteorder="big"))

# calculate the gateway of the current IP address
current_gateway = socket.inet_ntoa(socket.inet_)


print("Current IP address:", current_ip)
print("Current subnet:", current_subnet)
print("Current gateway:", current_gateway)

# prompt user for new IP address, subnet and gateway
new_ip = input("Enter new IP address: ")
new_subnet = input("Enter new subnet: ")
new_gateway = input("Enter new gateway: ")

# change IP address, subnet and gateway
socket.inet_aton(new_ip)
socket.inet_aton(new_subnet)
socket.inet_aton(new_gateway)

# print new IP address, subnet and gateway
print("New IP address:", new_ip)
print("New subnet:", new_subnet)
print("New gateway:", new_gateway)



