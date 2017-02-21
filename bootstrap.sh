#!/usr/bin/env zsh

git submodule init
git submodule update

dotfiles=`pwd`
ruby_version=2.3.0

mkdir -p $HOME/.config
mkdir -p $dotfiles/vim/undo
mkdir -p $HOME/development

# Install Oh-my-zsh
if [ ! -d $HOME/.oh-my-zsh ]; then
  sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
fi

# link all the things
ln -s $dotfiles/oh-my-zsh-custom/* $HOME/.oh-my-zsh/custom
if [ ! -d $HOME/.config/powerline ]; then
  ln -s $dotfiles/powerline-config/ $HOME/.config/powerline
fi
if [ ! -d $HOME/.vim ]; then
  ln -s $dotfiles/vim $HOME/.vim
fi
if [ ! -d $HOME/.config/nvim ]; then
  ln -s $dotfiles/vim $HOME/.config/nvim
fi
if [ -e $HOME/.gitconfig ] && [ ! -h $HOME/.gitconfig ]; then
  mv $HOME/.gitconfig $HOME/.gitconfig.old
  ln -s $dotfiles/gitconfig $HOME/.gitconfig
fi
if [ -e $HOME/.gitignore_global ] && [ ! -h $HOME/.gitignore_global ]; then
  mv $HOME/.gitignore_global $HOME/.gitignore_global.old
  ln -s $dotfiles/gitignore_global $HOME/.gitignore_global
fi
if [ -e $HOME/.tmux.conf ] && [ ! -h $HOME/.tmux.conf ]; then
  mv $HOME/.tmux.conf $HOME/.tmux.conf
  ln -s $dotfiles/tmux.conf $HOME/.tmux.conf
fi
if [ -e $HOME/.vimrc ] && [ ! -h $HOME/.vimrc ]; then
  mv $HOME/.vimrc $HOME/.vimrc.old
  ln -s $dotfiles/vimrc $HOME/.vimrc
fi
if [ -e $HOME/.zshrc ] && [ ! -h $HOME/.zshrc ]; then
  mv $HOME/.zshrc $HOME/.zshrc.old
  ln -s $dotfiles/zshrc $HOME/.zshrc
fi

# Install or update tmuxifier
if [ ! -d $HOME/.tmuxifier ]; then
  git clone https://github.com/jimeh/tmuxifier.git $HOME/.tmuxifier
else
  cd $HOME/.tmuxifier
  git pull
  cd $dotfiles
fi

# Install or update powerline fonts
if [ ! -d $HOME/.config/fonts ]; then
  git clone https://github.com/powerline/fonts $HOME/.config/fonts
  $HOME/.config/fonts/install.sh
else
  cd $HOME/.config/fonts
  git pull
  $HOME/.config/fonts/install.sh
  cd $dotfiles
fi

# Install or update base16
if [ ! -d $HOME/.config/base16-shell ]; then
  git clone https://github.com/chriskempson/base16-shell $HOME/.config/base16-shell
else
  cd $HOME/.config/base16-shell
  git pull
  cd $dotfiles
fi

# Install Ruby and lolcat
if [ ! -d $HOME/.rbenv/versions/$ruby_version ]; then
  rbenv install $ruby_version
  rbenv global $ruby_version
  eval "$(rbenv init -)"
fi
gem install lolcat

# Install or update  Homebrew
which -s brew
if [[ $? != 0 ]] ; then
    ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
else
    brew update
fi

# brew install all the things
brew install python3 autojump python fortune cowsay rbenv ruby-build tmux

# Install neovim
brew install neovim/neovim/neovim
pip3 install neovim

# source zshrc and Set base16 theme
source $HOME/.zshrc
base16_ocean
