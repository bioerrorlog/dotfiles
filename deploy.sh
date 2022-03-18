#!/bin/bash

set -eu

BASEDIR=$(dirname $0)
cd $BASEDIR

DOTFILES=(
    .vimrc
)

for f in ${DOTFILES[@]}; do
   ln -snfv ${PWD}/$f ~/$f
done

