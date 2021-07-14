#!/bin/sh

icone=""

if [ `uname` == "FreeBSD" ] 
then
    network=`ifconfig em0 | grep "RUNNING"`
else
    network=`ip link show dev wlan0 | grep 'state UP' | awk '{print $9}'`
fi

if [ $network z ] 
then 
    icone="" 
fi   
   
echo "" $icone ""
