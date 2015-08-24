#!/bin/bash

HERE=
cd $(dirname $0)
DOTFILES=`ls -A | egrep -e '^\.' | egrep -v '^.git$'`

for x in $DOTFILES; do
    ln -f $x ~/$x
done
