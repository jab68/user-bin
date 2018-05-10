#!/bin/sh

if pgrep -x "pavucontrol" > /dev/null
then
    pkill pavucontrol & echo "pavucontrol killed"
else
    pavucontrol & echo "pavucontrol stated"
fi
