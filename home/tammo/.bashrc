#
# ~/.bashrc
#

# Make manpages colorful
export LESS_TERMCAP_mb=$'\E[01;31m'
export LESS_TERMCAP_md=$'\E[01;31m'
export LESS_TERMCAP_me=$'\E[0m'
export LESS_TERMCAP_se=$'\E[0m'
export LESS_TERMCAP_so=$'\E[01;44;33m'
export LESS_TERMCAP_ue=$'\E[0m'
export LESS_TERMCAP_us=$'\E[01;32m'

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ll='ls --color=auto -l'
alias ls='ls --color=auto'
alias installpkg='sudo pacman -S'
alias installpkgbuild='makepkg & sudo pacman -U'
alias findpkg='pacman -Ss'
alias updatesys='sudo pacman -Syu'
alias cd..='cd ..'
alias i3config='gedit ~/.config/i3/config'


# auto completion
if [ -f /etc/bash_completion ] && ! shopt -oq posix; then
   . /etc/bash_completion
fi

# history over many shells
shopt -s histappend
PROMPT_COMMAND='history -a'

# terminal of beauty
PS1='\[\033[32m\][\u@\h \W]\$ \[\033[37m\]'
# >>>>BEGIN ADDED BY CNCHI INSTALLER<<<< #
BROWSER=/usr/bin/chromium
EDITOR=/usr/bin/gedit
# >>>>>END ADDED BY CNCHI INSTALLER<<<<< #
