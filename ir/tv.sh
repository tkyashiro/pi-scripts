#!/bin/sh

if [ $# -ne 1 ]; then
	echo "living.sh <onoff>"
	exit 1
fi

command=$1
base=$(dirname $(realpath "$0"))

if  [ $command = "onoff" ]; then
	echo "Switching tv on or off"
	python3 ${base}/irrp.py -p -g12 -f ${base}/codes tv:onoff
fi

