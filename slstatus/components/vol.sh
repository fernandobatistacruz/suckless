#!/bin/sh

vol(){
	vol="$(mixer -s vol | cut -d ':' -f 2)"
	echo " $vol%"
}

echo "$(vol)"

