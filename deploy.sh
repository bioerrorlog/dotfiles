#!/bin/bash

set -eu

BASEDIR=$(dirname $0)
cd $BASEDIR

DOTFILES=(
    .vimrc
    .vim/colors/hybrid.vim
    .gitconfig
)

mkdir -p ~/.vim/colors

for f in ${DOTFILES[@]}; do
    ln -snfv ${PWD}/$f ~/$f
done

