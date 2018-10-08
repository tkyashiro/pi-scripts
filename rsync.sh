#!/bin/sh

# if [ `mountpoint -q /mnt/hdd3tb/` ]; then
	rsync -auv /mnt/hdd1tb/ /mnt/hdd3tb
# else 
#	 echo '/mnt/hdd3tb/ is not mounted !!!' 
# fi
