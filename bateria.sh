#!/bin/sh

if [ `uname` == "FreeBSD" ]
then
    bateria=`sysctl hw.acpi.battery.life | cut -d ':' -f 2`
else
    bateria=`cat /sys/class/power_supply/BAT0/capacity`
fi

icone=""

if [ $bateria -lt 20 ]  
then 
    icone=""
elif [ $bateria -lt 50 ] 
then
    icone=""    
elif [ $bateria -lt 99 ] 
then
    icone=""
elif [ $bateria == 100 ]
then
    icone=""
fi
    
echo $icone" "$bateria% "" 
