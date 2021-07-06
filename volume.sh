#!/bin/sh

if [ `uname` == "FreeBSD" ]
then
   volume=`mixer -s pcm | cut -d ':' -f 2`
else
   volume=`pulsemixer --get-volume | cut -d ' ' -f 1`
fi

if [ $volume -ge 70 ] 
then
    icone=""   
elif [ $volume -ge 1 ]
then
   icone=""    
else
   icone=""
fi
    
echo $icone" "$volume%" "
