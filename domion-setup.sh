#!/bin/bash

scripts/feeds update -a
scripts/feeds install domoticz
cp domion.config .config
make defconfig
if [ "$FULL_VERBOSE_LOG" != "1" ]; then
	make
else
	make V=s
fi


