#!/bin/bash

set -eu

BASEDIR=$(dirname $0)
cd $BASEDIR

DOTFILES=(
    .vimrc
    .vim/colors/hybrid.vim
    .vim/autoload/plug.vim
    .gitconfig
)

mkdir -p ~/.vim/colors
mkdir -p ~/.vim/autoload

for f in ${DOTFILES[@]}; do
    ln -snfv ${PWD}/$f ~/$f
done

