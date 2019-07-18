#!/bin/bash

# ls -al | awk {'print $9'} | tail -n +4 | xargs -L1 adb install

shopt -s nullglob
for apk in apks/*.apk
do
	RESULT=$(adb install $apk)
	if [ "$RESULT" = "Success" ]; then
		echo "==> Installed $apk"
	else
		echo "ERROR: $apk not installed"
	fi
done
