#!/usr/bin/env bash

git submodule init
git submodule update

dotfiles=`pwd`

ln -s $dotfiles/aliases.zsh $HOME/.oh-my-zsh/custom/aliases.zsh
ln -s $dotfiles/gitconfig $HOME/.gitconfig
ln -s $dotfiles/gitignore_global $HOME/.gitignore_global
ln -s $dotfiles/vimrc $HOME/.vimrc
ln -s $dotfiles/zshrc $HOME/.zshrc
