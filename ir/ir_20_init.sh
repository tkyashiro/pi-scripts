#!/bin/sh

echo "Set GPIO 20 to read/pullup"
echo 'm 20 r' > /dev/pigpio
echo 'pud 20 u' > /dev/pigpio
