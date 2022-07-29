export JAVA_HOME=/lib/jvm/java-17-openjdk

alias l="ls -A --color=tty"
alias py=python
alias py2=python2
alias v=nvim

HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
bindkey -v

# Plugins
source /usr/share/zsh/share/antigen.zsh

antigen use oh-my-zsh
antigen bundle git
antigen bundle rust

antigen bundle zsh-users/zsh-autosuggestions
antigen bundle hlissner/zsh-autopair

antigen theme agnoster/agnoster-zsh-theme

antigen apply

