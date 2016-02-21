#!/bin/bash

scripts/feeds update -a
scripts/feeds install domoticz
cp domion.config .config
make defconfig
make V=s

