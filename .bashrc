#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
PS1='[\u@\h \W]\$ '

# power off
alias off="shutdown now"

# update
alias pacpar="sudo pacman -Syu && paru -Syu"

# update i use on debian based, in case i muscle memory
alias flatapt="pacpar"

# i3 config
alias i3conf="sudo nano ~/.config/i3/config"

# polybar config
alias polybarconf="sudo nano ~/.config/polybar/config"

# lol
alias fuck='sudo $(history -p !!)'
