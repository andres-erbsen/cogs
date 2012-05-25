# If not running interactively, don't do anything
[[ $- != *i* ]] && return

export EDITOR="vim"
export HISTCONTROL=ignoreboth # disable logging blank commands and duplicates

alias ls='ls --color=auto'

PS1='[\u@\h \W]\$ '
