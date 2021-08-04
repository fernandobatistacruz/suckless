#!/bin/sh

resposta=`echo -e "desligar\nreiniciar\nhibernar" | dmenu -p "O que seja que o computador faça?" -fn "Droid Sans Mono:size=14"`

if [ -z $resposta ]; then
    exit
fi

if [ $resposta = "desligar" ]; then
    poweroff
fi

if [ $resposta = "reiniciar" ]; then
    reboot
fi

if [ $resposta = "hibernar" ]; then
    systemctl hibernate
fi
