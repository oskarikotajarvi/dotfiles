#
# ~/.bash_profile
#

[[ -f ~/.bashrc ]] && . ~/.bashrc

export ANDROID_HOME=$HOME/Android/Sdk
export JAVA_HOME=/opt/android-studio/jre
export PATH=$PATH:$ANDROID_HOME/emulator
export PATH=$PATH:$ANDROID_HOME/tools
export PATH=$PATH:$ANDROID_HOME/tools/bin
export PATH=$PATH:$ANDROID_HOME/platform-tools
export PATH=$PATH:$HOME/.scripts
export EDITOR="nvim"
export TERMINAL="kitty"
export BROWSER="firefox"
export FILE="ranger"

if [[ "$(tty)" = "/dev/tty1" ]]; then
	pgrep i3 || startx
fi
