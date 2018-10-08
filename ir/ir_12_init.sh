#!/bin/sh

echo "Set GPIO 12 to write/0"
echo 'm 12 w' > /dev/pigpio
echo 'm 12 0' > /dev/pigpio
