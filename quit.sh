#!/bin/sh

resposta=`echo -e "desligar\nreiniciar\nhibernar" | dmenu -p "O que seja que o computador faça?" -fn "Droid Sans Mono:size=14"`

if [ -z $resposta ]; then
    exit
elif [ $resposta = "desligar" ]; then
    poweroff
elif [ $resposta = "reiniciar" ]; then
    reboot
elif [ $resposta = "hibernar" ]; then
    systemctl hibernate
fi
