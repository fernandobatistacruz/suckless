#!/bin/sh

suckless=`cd ~/suckless && git status | grep 'nothing to commit, working tree clean' | awk '{print $1}'`
dotfiles=`cd ~/dotfiles && git status | grep 'nothing to commit, working tree clean' | awk '{print $1}'`
icone=""

if [ -z $suckless ] || [ -z $dotfiles ]; then
   icone="+"
fi
    
echo "$icone"
