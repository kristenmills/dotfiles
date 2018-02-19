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

function createOverrides() {
  if [ ! -e $1.overrides ]; then
    echo "Creating $1.overrides"
    echo "$2 For things I don't want to accidently commit" > $1.overrides
  fi
}

git submodule init
git submodule update --remote

dotfiles=`pwd`
ruby_version=2.3.0

mkdir -p $HOME/.config
mkdir -p $dotfiles/vim/undo
mkdir -p $HOME/development

createOverrides $HOME/.zshrc \#
createOverrides $HOME/.vimrc \"

# Install Oh-my-zsh
if [ ! -d $HOME/.oh-my-zsh ]; then
  echo "Installing Oh My Zsh. Run exit after it switches your shell"
  sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
fi

# link all the things
echo "Linking custom zsh files"
ln -s $dotfiles/oh-my-zsh-custom/* $HOME/.oh-my-zsh/custom

moveAndLink $HOME/.config/powerline $dotfiles/powerline-config
moveAndLink $HOME/.vim $dotfiles/vim
moveAndLink $HOME/.config/nvim $dotfiles/nvim
moveAndLink $HOME/.gitconfig $dotfiles/gitconfig
moveAndLink $HOME/.gitignore_global $dotfiles/gitignore_global
moveAndLink $HOME/.tmux.conf $dotfiles/tmux.conf
moveAndLink $HOME/.vimrc $dotfiles/vimrc
moveAndLink $HOME/.zshrc $dotfiles/zshrc

# install or update all the things
installOrUpdate $HOME/.config/base16-shell https://github.com/chriskempson/base16-shell

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
brew tap caskroom/fonts
brew cask install font-firacode-nerd-font

# Install Ruby and lolcat
if [ ! -d $HOME/.rbenv/versions/$ruby_version ]; then
  echo "Installing ruby $ruby_version"
  rbenv install $ruby_version
  rbenv global $ruby_version
  eval "$(rbenv init -)"
fi
gem install lolcat
gem install tmuxinator

# Install neovim
echo "Installing Neovim"
brew install neovim
pip3 install neovim

pip3 install powerline-status

# source zshrc and Set base16 theme
source $HOME/.zshrc
base16_materia
