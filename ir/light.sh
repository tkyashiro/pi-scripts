#!/bin/sh

if [ $# -ne 1 ]; then
	echo "light.sh <on|off|max>"
	exit 1
fi

command=$1
base=$(dirname $(realpath "$0"))

if  [ $command = "on" ]; then
	echo "Turning ON the light"
	python3 ${base}/irrp.py -p -g12 -f ${base}/codes light:on
elif [ $command = "off" ]; then
	echo "Turning OFF the light"
	python3 ${base}/irrp.py -p -g12 -f ${base}/codes light:off
elif [ $command = "max" ]; then
	echo "Turning ON(max) the light"
	python3 ${base}/irrp.py -p -g12 -f ${base}/codes light:max
fi

