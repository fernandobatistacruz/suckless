#!/bin/sh

cpu=`sensors -u coretemp-isa-0000 | grep "temp1_input" | cut -d ':' -f 2 | cut -d '.' -f 1`

echo "$cpu°"
