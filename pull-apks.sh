#!/bin/bash

PACKAGES=$(adb shell cmd package list packages -3 | awk -F ':' '{print $2}')

if [ ! -d "apks" ]; then
	mkdir apks
fi

cd apks

NUM=1
for i in $PACKAGES
do
	printf "\n"; echo "==> $NUM: pulling $i"
	PACKAGE_PATH=$(adb shell cmd package path $i | awk -F ':' '{print $2}')
	adb pull "$PACKAGE_PATH" && mv base.apk "$i".apk
	NUM=$((NUM + 1))
done

echo "Pulled apks are in the '$(pwd)' directory."
