#!/bin/sh

icone=""
network=`ip link show dev wlp0s20f3 | grep 'state UP' | awk '{print $9}'`

if [ -z $network ]; then
   icone=""
fi

echo "$icone"
