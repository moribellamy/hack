# If not running interactively, don't do anything
[[ "$-" != *i* ]] && return

set -o vi

# Some people use a different file for aliases
if [ -f "${HOME}/.bash_aliases" ]; then
  source "${HOME}/.bash_aliases"
fi

PATH=$PATH:~/bin

PS1="\[\e[01;33m\]^\[\e[0m\]\[\e[00;37m\]\w\[\e[0m\]\[\e[01;33m\]\$\[\e[0m\] "
