#!/bin/sh

if [ `uname` == "FreeBSD"] 
then
    network=`ifconfig em0 | grep "RUNNING"`
else
    network=`ip link show dev enp0s3 | grep 'state' | awk '{print $9}'`
fi

if [ $network == "" ] 
then 
    icone="" 
else 
    icone=""
fi   
   
echo "" $icone ""
