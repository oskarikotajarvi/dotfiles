#
# ~/.bash_profile
#

[[ -f ~/.bashrc ]] && . ~/.bashrc

export PATH=$PATH:$HOME/.scripts
export EDITOR="vim"
export TERMINAL="st"
export BROWSER="firefox"
export FILE="ranger"

if [[ "$(tty)" = "/dev/tty1" ]]; then
	pgrep i3 || startx
fi
