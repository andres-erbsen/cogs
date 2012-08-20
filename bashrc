# If not running interactively, don't do anything
[[ $- != *i* ]] && return

export EDITOR="vim"
export HISTCONTROL=ignoreboth # disable logging blank commands and duplicates

GPG_TTY=$(tty)
export GPG_TTY
if [ -f "${HOME}/.gpg-agent-info" ]; then
  . "${HOME}/.gpg-agent-info"
  export GPG_AGENT_INFO
  export SSH_AUTH_SOCK
fi

alias ls='ls --color=auto'
alias grep='grep --color'
alias color='grep --context=2000000 --color'
alias ej='devmon --unmount-recent --no-gui'
alias bat='echo "scale=2; \
           $(cat /sys/class/power_supply/BAT0/energy_now) / \
           $(cat /sys/class/power_supply/BAT0/energy_full)" | bc -l'
alias GET='wget -O- -o/dev/null'
alias myip='GET http://automation.whatismyip.com/n09230945.asp'

PS1='[\u@\h \W]\$ '
