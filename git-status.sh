#!/bin/sh

suckless=`cd ~/suckless && git status | grep 'nothing to commit, working tree clean' | awk '{print $1}'`
dotfiles=`cd ~/dotfiles && git status | grep 'nothing to commit, working tree clean' | awk '{print $1}'`

icone=""

if [ $suckless z ] || [ $dotfiles z ]
then 
   icone="+"
fi
    
echo "" $icone
