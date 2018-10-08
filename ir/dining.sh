#!/bin/sh

if [ $# -ne 1 ]; then
	echo "dining.sh <on|off|max>"
	exit 1
fi

command=$1
base=$(dirname $(realpath "$0"))

if  [ $command = "on" ]; then
	echo "Turning ON the dining light"
	python3 ${base}/irrp.py -p -g12 -f ${base}/codes dining:on
elif [ $command = "off" ]; then
	echo "Turning OFF the dinindining light"
	python3 ${base}/irrp.py -p -g12 -f ${base}/codes dining:off
elif [ $command = "max" ]; then
	echo "Turning ON(max) the dining light"
	python3 ${base}/irrp.py -p -g12 -f ${base}/codes dining:max
fi

