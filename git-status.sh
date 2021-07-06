#!/bin/sh

git=`cd ~/unix && git status | grep 'nothing to commit, working tree clean' | awk '{print $1}'`
icone=""

if [ $git z ]
then 
   icone="+"
fi
    
echo "" $icone
