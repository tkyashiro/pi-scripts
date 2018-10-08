#!/bin/sh

/home/pi/Scripts/led_on.sh

curl http://192.168.0.210:5000/api/trigger

/home/pi/Scripts/led_off.sh
