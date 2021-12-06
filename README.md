# My Dotfiles

Glad to hear you just acquired a new PC!

## Pre Setup

Please install the following packages:

```sh
git
```

## Setup

```sh
./install.sh   # Installs required packages
./bootstrap.sh # Copies your dotfiles
```

If your new computer isn't running Arch Linux (shame on you) ignore the `install.sh` script and rather manually install the following required packages:

```sh
zsh
```

## Post Setup

```sh
chsh -s /bin/zsh # Sets zsh as your default shell
```

From a vim session:

```sh
:PlugInstall # Installs your precious vim plugins
```
