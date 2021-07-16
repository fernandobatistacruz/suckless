#!/bin/sh

icone=""
network=""

network=`bluetoothctl show | grep 'No default controller available' | awk '{print $1}'`

if [ -z $network ]; then 
   icone=""
fi   

if [ -z $icone ]; then
   echo $icone
else
   echo " "$icone
fi