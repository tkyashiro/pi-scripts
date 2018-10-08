#!/bin/bash

DATE=`date +"%Y%m%d_%H%M"`

# echo $DATE

raspistill -o /home/pi/Camera/${DATE}.jpg

mv /home/pi/Camera/${DATE}.jpg /home/pi/nfs/camera/

