#!/bin/bash

psdir=$(pwd)
cd /home/gummadi/.eww/target/release/
./eww close smol_calendar &
./eww close weather_side &
./eww close player_side &
./eww close time_side &
./eww close sliders_side &
./eww close sys_side &
cd $psdir
echo "eww closed"
