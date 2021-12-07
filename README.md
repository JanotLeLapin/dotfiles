# My Dotfiles

Glad to hear you just acquired a new PC!

## Pre Setup

Please install the following packages:

```sh
git
```

## Setup

Install the following packages:

```sh
git
curl

picom-git
polybar
rofi
redshift-git
alacritty
vim
zsh
flameshot # Screenshots

# Arch only
base-devel
```

Then run the following command:

```sh
./bootstrap.sh # Copies your dotfiles
```

## Post Setup

```sh
chsh -s /bin/zsh # Sets zsh as your default shell
```

From a vim session:

```sh
:PlugInstall # Installs your precious vim plugins
```
