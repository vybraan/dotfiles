#!/bin/bash

interface=$(ifconfig | awk -F: '/^enp/ { print $1 }')
sleep 1

# we create a new macvlan interface to route traffic from docker
ip link add my-dnr-shim link $interface type macvlan  mode bridge
sleep 1

# Adding ip to it
ip addr add 192.168.8.223/32 dev my-dnr-shim
sleep 1

#Setting it up
ip link set my-dnr-shim up

# adding a route
ip route add 192.168.8.182/27 dev my-dnr-shim
