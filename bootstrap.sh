#!/bin/sh

read -p "This will overwrite the current configuration of the machine. Continue? [Y/n] " yn
if [[ $yn != 'Y' ]]; then
	echo 'Aborting'
	exit
fi

copy() {
	echo "Copying $1"
	cp $1 $2
}

for file in ./.*; do
	if [[ -f $file ]]; then
		copy $file ~
	fi
	# copy $file ~
done

echo "Done"

