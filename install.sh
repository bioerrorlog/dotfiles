#!/bin/bash

set -eu

BASEDIR=$(dirname $0)
cd $BASEDIR

DOTFILES=(
    .bashrc
    .bash_aliases
    .gitconfig
    .vimrc
    .vim/autoload/plug.vim
    .vim/colors/hybrid.vim
    .zshrc
)

mkdir -p ~/.vim/colors
mkdir -p ~/.vim/autoload

for f in ${DOTFILES[@]}; do
    ln -snfv ${PWD}/$f ~/$f
done
