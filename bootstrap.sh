#!/usr/bin/env zsh

function moveAndLink() {
  if [ -e $1 ] && [ ! -h $1 ]; then
    echo "mv $1 $1.old"
    mv $1 $1.old
  fi

  if [ ! -e $1 ]; then
    echo "ln -s $2 $1"
    ln  -s $2 $1
  fi
}

function installOrUpdate() {
   if [ ! -d $1 ]; then
     echo "git clone $2 $1"
     git clone $2 $1
   else
     echo "Updating $1"
     cd $1
     git pull
     cd $dotfiles
   fi
}

git submodule init
git submodule update

dotfiles=`pwd`
ruby_version=2.3.0

mkdir -p $HOME/.config
mkdir -p $dotfiles/vim/undo
mkdir -p $HOME/development

if [ ! -e $HOME/.zshrc.overrides ]; then
  echo "Creating Overrides file"
  echo "# For things I don't want to accidently commit" > $HOME/.zshrc.overrides
fi

# Install Oh-my-zsh
if [ ! -d $HOME/.oh-my-zsh ]; then
  echo "Installing Oh My Zsh. Run bootstrap again with this finishes"
  sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
fi

# link all the things
echo "Linking custom zsh files"
ln -s $dotfiles/oh-my-zsh-custom/* $HOME/.oh-my-zsh/custom

moveAndLink $HOME/.config/powerline $dotfiles/powerline-config
moveAndLink $HOME/.vim $dotfiles/vim
moveAndLink $HOME/.config/nvim $dotfile/vim
moveAndLink $HOME/.gitconfig $dotfiles/gitconfig
moveAndLink $HOME/.gitignore_global $dotfiles/gitignore_global
moveAndLink $HOME/.tmux.conf $dotfiles/tmux.conf
moveAndLink $HOME/.vimrc $dotfiles/vimrc
moveAndLink $HOME/.zshrc $dotfiles/zshrc

# install or update all the things
installOrUpdate $HOME/.tmuxifier https://github.com/jimeh/tmuxifier
installOrUpdate $HOME/.config/base16-shell https://github.com/chriskempson/base16-shell
installOrUpdate $HOME/.config/fonts https://github.com/powerline/fonts
$HOME/.config/fonts/install.sh

# Install or update  Homebrew
which -s brew
if [[ $? != 0 ]] ; then
  echo "Installing Homebrew"
  ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
else
  echo "Updating Homebrew"
  brew update
fi

# brew install all the things
brew install python3 autojump python fortune cowsay rbenv ruby-build tmux

# Install Ruby and lolcat
if [ ! -d $HOME/.rbenv/versions/$ruby_version ]; then
  echo "Installing ruby $ruby_version"
  rbenv install $ruby_version
  rbenv global $ruby_version
  eval "$(rbenv init -)"
fi
gem install lolcat

# Install neovim
echo "Installing Neovim"
brew install neovim/neovim/neovim
pip3 install neovim

# source zshrc and Set base16 theme
source $HOME/.zshrc
base16_ocean
