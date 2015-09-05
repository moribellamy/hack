#!/bin/bash

cd $(dirname $0)
DOTFILES=`ls -A | egrep -e '^\.' | egrep -v '^.git$'`

for x in $DOTFILES; do
    cp -f ~/$x $x
done
