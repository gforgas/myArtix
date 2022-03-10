#!/bin/sh

IFACE=$(/usr/sbin/ip a | grep wlp0s1 | awk 'NR==1{print $2}')

if [ "$IFACE" = "wlp0s1:" ]; then

echo "%{F#2495e7} %{F#ffffff}$(/usr/sbin/ip a | grep wlp0s1 | grep "inet " | awk 'NR==1{print $2}')%{u-}"

else
    echo "%{F#1bbf3e}睊%{u-} Disconnected"
fi
