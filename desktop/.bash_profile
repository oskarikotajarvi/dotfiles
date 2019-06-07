#
# ~/.bash_profile
#

[[ -f ~/.bashrc ]] && . ~/.bashrc

export PATH=$PATH:$HOME/.scripts
export EDITOR="nvim"
export TERMINAL="kitty"
export BROWSER="firefox"
export FILE="ranger"

if [[ "$(tty)" = "/dev/tty1" ]]; then
	pgrep i3 || startx
fi
