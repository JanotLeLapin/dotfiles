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

## Post Setup

```sh
chsh -s /bin/zsh # Sets zsh as your default shell
```

From a vim session:

```sh
:PlugInstall # Installs your previous vim plugins
```
