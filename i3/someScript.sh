#!/bin/sh

TITLES=$(swaymsg -t get_tree | jq -r '.. | objects | select(.nodes? == []) | 
(.id|tostring)+" "+.window_properties.class + "   " + .window_properties.title')
echo $TITLES
#CHOSEN=$(grep '"*"'<<< $TITLES |dmenu -i -fn 'fira-10' -l 10)
#echo $CHOSEN
#echo $(echo $TITLES | grep 'Fire' | awk '{print $1}' ) 
#TITLES  | dmenu -i -fn 'fira-10' -l 10


