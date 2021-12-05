PS1="%F{cyan}%n%f: %F{cyan}%~%f> "

export CLICOLOR=1
export LSCOLORS=ExGxBxDxCxEgEdxbxgxcxd

alias ll="ls -A --color=tty"
alias py=python
alias py2=python2
alias vi=vim

HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
bindkey -v

zstyle :compinstall filename '/home/joseph/.zshrc'

autoload -Uz compinit
compinit

