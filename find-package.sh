adb shell cmd package list packages | awk -F ':' '{print $2}' | grep -i $1 | xclip -sel clip
