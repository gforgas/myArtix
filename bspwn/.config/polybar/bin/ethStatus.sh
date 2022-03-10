#!/bin/sh

IFACE=$(/usr/sbin/ip a | grep eth0 | awk 'NR==1{print $2}')

if [ "$IFACE" = "eth0:" ]; then

echo "%{F#2495e7} %{F#ffffff}$(/usr/sbin/ip a | grep eth0 | grep "inet " | awk 'NR==1{print $2}')%{u-}"

else
    echo "%{F#1bbf3e}%{u-} Disconnected"
fi
