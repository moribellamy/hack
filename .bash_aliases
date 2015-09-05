#!/bin/bash

PLATFORM=`uname`

alias tm='tmux attach || tmux'
alias egrep='egrep --color'
if [[ $PLATFORM == "Darwin" ]]
then
  export CLICOLOR=1
  export LSCOLORS=ExFxCxDxBxegedabagacad
  alias ls='ls -GF'
else
  alias ls='ls --color -F'
fi

alias tb='tugboat'
