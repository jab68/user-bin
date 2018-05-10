#!/bin/sh

MAIN_SCREEN_NAME='eDP1'
SECOND_SCREEN_NAME='HDMI1'

if xrandr | grep -q "HDMI1 connected [0-9]"
then 
    xrandr -d :0 --output $SECOND_SCREEN_NAME --off
else
    xrandr -d :0 --output $SECOND_SCREEN_NAME --left-of $MAIN_SCREEN_NAME --auto
fi

