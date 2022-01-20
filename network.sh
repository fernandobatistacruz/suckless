#!/bin/sh

icone=""
network=`ip link show dev wlan0 | grep 'state UP' | awk '{print $9}'`

if [ -z $network ]
then
   icone=""
fi

echo "$icone"