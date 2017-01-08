#!/bin/bash
floatip=$1
ip link add dev dummy1 type dummy
ip link set dummy1 up
ip addr add dev dummy1 $floatip/32
ip addr show dev dummy1

