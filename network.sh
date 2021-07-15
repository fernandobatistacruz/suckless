#!/bin/sh

icone=""
network=""

if [ `uname` == "FreeBSD" ] 
then
    network=`ifconfig em0 | grep "RUNNING"`
else
    network=`ip link show dev wlan0 | grep 'state UP' | awk '{print $9}'`
fi

if [ -z $network ]; then 
   icone="" 
fi   
   
echo "" $icone ""
