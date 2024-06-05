#!/bin/bash

interface=$(ifconfig | awk -F: '/^enp/ { print $1 }')
sleep 1

ip link add name br0 type bridge
sleep 1
ip link set dev br0 up
sleep 1
ip link set ens33 up
sleep 1
ip link set $interface up
sleep 1

ip address add 192.168.8.138/24 dev br0
#sleep 1
ip route append default via 192.168.8.1 dev br0
sleep 1

ip link set ens33 master br0
sleep 1
ip link set $interface master br0
sleep 1
ip address del 192.168.8.138/24 dev $interface
sleep 1

#dhclient br0
# sleep 1

# we create a new macvlan interface to route traffic from docker
ip link add my-dnr-shim link br0 type macvlan  mode bridge
sleep 1

# Adding ip to it
ip addr add 192.168.8.223/32 dev my-dnr-shim
sleep 1

#Setting it up
ip link set my-dnr-shim up

# adding a route
ip route add 192.168.8.192/27 dev my-dnr-shim
