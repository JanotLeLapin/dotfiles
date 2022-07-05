# My Dotfiles

Glad to hear you just acquired a new PC!

## Setup

Install the following packages:

```sh
git
curl

picom-git # compositor
polybar # status bar
rofi # app launcher
redshift-git
alacritty # terminal
neovim # text editor
nvim-packer-git # package manager
zsh # shell
flameshot # screenshots

# fonts
ttf-roboto
ttf-jetbrains-mono
ttf-font-awesome

base-devel
```

Then run the following command:

```sh
./bootstrap.sh # copies your dotfiles
```

## Post Setup

```sh
chsh -s /bin/zsh # sets zsh as your default shell
```

From Neovim:

```sh
:PackerSync # installs your neovim plugins
```

