#!/bin/zsh

read "yn?This will overwrite the current configuration of the machine. Continue? [Y/n] "
if [[ $yn != 'Y' ]]; then
	echo 'Aborting'
	exit
fi

for f in $(find . -type f ! -path "./.git/*" ! -name bootstrap.sh); do
	echo "Copying ${f:2}"
	cp $f "$HOME/${f:2}"
	
done

echo "Done"
