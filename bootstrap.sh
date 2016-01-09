#!/usr/bin/env bash

git submodule init
git submodule update

dotfiles=`pwd`

ln -s $dotfiles/oh-my-zsh-custom/ $HOME/.oh-my-zsh/custom
ln -s $dotfiles/powerline-config/ $HOME/.config/powerline
ln -s $dotfiles/vim $HOME/.vim
ln -s $dotfiles/gitconfig $HOME/.gitconfig
ln -s $dotfiles/gitignore_global $HOME/.gitignore_global
ln -s $dotfiles/tmux.conf $HOME/.tmux.conf
ln -s $dotfiles/vimrc $HOME/.vimrc
ln -s $dotfiles/zshrc $HOME/.zshrc
