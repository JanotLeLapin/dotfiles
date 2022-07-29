PS1="%F{cyan}%~%f %B>>>%b "

export CLICOLOR=1
export LSCOLORS=ExGxBxDxCxEgEdxbxgxcxd
export IDEA_JDK=/usr/lib/jvm/jdk-jetbrains
export JAVA_HOME=/lib/jvm/java-17-openjdk

alias l="ls -A --color=tty"
alias py=python
alias py2=python2
alias v=nvim

HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
bindkey -v

zstyle :compinstall filename '/home/joseph/.zshrc'

autoload -Uz compinit
compinit

# Plugins
source /usr/share/zsh/share/antigen.zsh

antigen use oh-my-zsh
antigen bundle git
antigen bundle rust

antigen bundle zsh-users/zsh-autosuggestions

antigen bundle hlissner/zsh-autopair

antigen apply

if [ -n "$DESKTOP_SESSION" ];then
    eval $(gnome-keyring-daemon --start)
        export SSH_AUTH_SOCK
fi

