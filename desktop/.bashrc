#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

neofetch

shopt -s autocd #Allows cd'ing just by typing the directory name

alias ls='ls --color=auto'
alias h='cd /$HOME && ls -a --color=auto'
alias p='sudo pacman'
alias g='git'
alias gf='cd /$HOME/Git && ls -a --color=auto'
alias update='sudo pacman -Syu'
alias nv='nvim'
alias pm='pamac'
alias r='ranger'
alias i3cfg='nvim /$HOME/.config/i3/config'

PS1='[\u@\h \W]\$ '
