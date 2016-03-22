#!/bin/bash

scripts/feeds update -a
scripts/feeds install domoticz

#Horrible but quicker than forking the repo
sed -i 's/+libxml2/+libxml2 +libubacktrace/g' feeds/packages/libs/db47/Makefile 

cp domion.config .config
make defconfig
if [ "$FULL_VERBOSE_LOG" != "1" ]; then
	make
else
	make V=s
fi


