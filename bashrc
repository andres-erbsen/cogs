# If not running interactively, don't do anything
[[ $- != *i* ]] && return

export HISTCONTROL=ignoreboth # disable logging blank commands and duplicates
PS1='[\u@\h \W]\$ '

source ~/.shell
