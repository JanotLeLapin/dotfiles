#!/bin/zsh

read "yn?This will overwrite the current configuration of the machine. Continue? [Y/n] "
if [[ $yn != 'Y' ]]; then
    echo 'Aborting'
    exit
fi

for f in $(find . -type f ! -path "./.git/*" ! -name "*.sh" ! -name "*.md" ! -name ".gitignore"); do
    echo "Copying ${f:2}"
    cp $f "$HOME/${f:2}"

done

if [ ! -f "$HOME/.vim/autoload/plug.vim" ]; then
    echo "Downloading vim-plug"
    curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
fi

echo "Done"
