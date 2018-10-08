#!/bin/sh

echo "Set GPIO 21 to read/pullup"
echo 'm 21 r' > /dev/pigpio
echo 'pud 21 u' > /dev/pigpio
