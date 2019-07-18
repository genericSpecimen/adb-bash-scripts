FILE="$1"

if [ -z "$FILE" ]
then
	echo "Invalid file"
	exit
fi

while IFS= read -r line
do
	RESULT=$(adb shell cmd package uninstall --user 0 $line < /dev/null)
	if [ "$RESULT" = "Success" ]; then
		echo "==> Uninstalled $line"
	else
		echo "ERROR: $line not installed"
	fi
done < "$FILE"
