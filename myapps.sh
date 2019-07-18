#!/bin/bash

BASE_URL='https://play.google.com/store/apps/details?id='

PACKAGES=$(adb shell cmd package list packages -3 | awk -F ':' '{print $2}')

echo '<html><head><title>My Android applications</title></head><body>' > ./myapps.html

NUM=1
for i in $PACKAGES
do
	echo "$NUM: <a href=$BASE_URL""$i> $i <br>" >> ./myapps.html
	NUM=$((NUM + 1))
done


echo '</body></html>' >> ./myapps.html

