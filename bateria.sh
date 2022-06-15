#!/bin/sh

bateria=`cat /sys/class/power_supply/BAT0/capacity`
icone=""

if [ $bateria -lt 10 ]; then
	icone=""
elif [ $bateria -lt 20 ]; then 
    icone=""
elif [ $bateria -lt 50 ]; then
    icone=""    
elif [ $bateria -lt 99 ]; then
    icone=""
fi

echo "$icone $bateria%"

if [ $bateria -lt 6 ]; then
	status=`cat /sys/class/power_supply/BAT0/status`
	if [ $status == "Discharging" ]; then
    	notify-send "Você tem $bateria% de bateria!" "Favor ligar o carregador." --icon=battery-low -t 15000
  		sleep 120
	fi
fi
