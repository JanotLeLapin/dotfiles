#!/bin/zsh

RED="\033[1;31m"
GREEN="\033[1;32m"
BLUE="\033[1;33m"
NOCOLOR="\033[0m"

read "yn?This will overwrite the current configuration of the machine. Continue? [Y/n] "
if [[ $yn != 'Y' ]]; then
    echo "${RED}ABORTING"
    exit
fi

for f in $(find . -type f ! -path "./.git/*" ! -name "bootstrap.sh" ! -name "install.sh" ! -name "*.md" ! -name ".gitignore" ! -name ".editorconfig"); do

    # Create parent directory
    d="${$(dirname $f):2}"
    if [[ d != "" ]]; then
        mkdir -p "$HOME/$d"
    fi

    fname="$HOME/${f:2}"

    # Copy
    if cmp -s "$f" "$fname"; then
        echo "${BLUE}SKIPPED${NOCOLOR} ${f:2}"
    else
        echo "${GREEN}COPYING${NOCOLOR} ${f:2}"
        cp $f "$fname"

        if [[ "$fname" == *.sh ]]; then
            chmod +x "$fname"
        fi
    fi

done

if [ ! -f "$HOME/.vim/autoload/plug.vim" ]; then
    echo "Downloading vim-plug"
    curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
fi
