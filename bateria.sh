#!/bin/sh

bateria=`cat /sys/class/power_supply/BAT0/capacity`
icone=""

if [ $bateria -lt 10 ]
then
    icone=""  
elif [ $bateria -lt 20 ]
then 
    icone=""
elif [ $bateria -lt 50 ]
then
    icone=""    
elif [ $bateria -lt 99 ]
then
    icone=""
fi

echo "$icone $bateria%"
