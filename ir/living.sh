#!/bin/sh

if [ $# -ne 1 ]; then
	echo "living.sh <on|off|max>"
	exit 1
fi

command=$1
base=$(dirname $(realpath "$0"))

if  [ $command = "on" ]; then
	echo "Turning ON the living light"
	python3 ${base}/irrp.py -p -g12 -f ${base}/codes living:on
elif [ $command = "off" ]; then
	echo "Turning OFF the living light"
	python3 ${base}/irrp.py -p -g12 -f ${base}/codes living:off
elif [ $command = "max" ]; then
	echo "Turning ON(max) the living light"
	python3 ${base}/irrp.py -p -g12 -f ${base}/codes living:max
fi

