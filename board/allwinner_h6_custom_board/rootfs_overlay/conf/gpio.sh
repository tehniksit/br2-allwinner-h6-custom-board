#!/bin/bash

gpio=$1
trig=$2

if [ "$gpio" == "all" ];
then
        for ((i=0; i<21; i++))
        do
                echo "$trig" > /sys/class/leds/lcd:pd$i:heartbeat/trigger
        done
else
        echo "$trig" > /sys/class/leds/lcd:$gpio:heartbeat/trigger
fi
