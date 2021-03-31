#!/bin/bash

#killall -q eww

#while pgrep -u $UID -x eww >/dev/null; do sleep 1; done

psdir=$(pwd)
cd /home/gummadi/.eww/target/release/
./eww daemon
./eww open smol_calendar &
./eww open weather_side &
./eww open player_side &
./eww open time_side &
#./eww open sliders_side &
./eww open sys_side &
cd $psdir
echo "eww launched"
