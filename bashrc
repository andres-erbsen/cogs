# If not running interactively, don't do anything
[[ $- != *i* ]] && return

export EDITOR="vim"

# Use read to avoid saving password seeds to history
alias pwgen='(read -s seed && ~/Dropbox/t/programming/pwgen ~/Dropbox/t/resources/littlebrother.txt 4 $seed)'
alias ls='ls --color=auto'

PS1='[\u@\h \W]\$ '
