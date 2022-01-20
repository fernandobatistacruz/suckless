#!/bin/sh

mute=`pulsemixer --get-mute`
volume=`pulsemixer --get-volume | cut -d ' ' -f 1`

if [ $mute -ge 1 ]
then
   echo " off"
else
   echo " $volume%"
fi