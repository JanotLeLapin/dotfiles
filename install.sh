#!/bin/sh

if pacman -Qs yay > /dev/null ; then
    echo "Skipping yay installation"
else
    echo "Installing yay"
    git clone https://aur.archlinux.org/yay.git
    cd yay
    makepkg -si
    cd ..
    rm -rf yay
fi

yay -S base-devel zsh vim redshift-git
