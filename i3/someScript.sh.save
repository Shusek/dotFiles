#!/bin/sh

TITLES=$(swaymsg -t get_tree | jq '.. | objects | select(.nodes? == []) | .id,.window_properties.class,.window_properties.title')

eval grep $TITLES | dmenu
