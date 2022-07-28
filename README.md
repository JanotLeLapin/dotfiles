# My Dotfiles

My pretty dotfiles for i3wm, polybar, rofi and neovim

## Setup

Install the following packages:

```sh
git
curl

i3-gaps # window manager
picom-git # compositor
polybar # status bar
rofi # app launcher
redshift-git
alacritty # terminal
neovim # text editor
nvim-packer-git # package manager
zsh # shell

# fonts
ttf-roboto
ttf-jetbrains-mono
nerd-fonts-hack
siji-git

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

