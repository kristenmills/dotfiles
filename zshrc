# Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="miloshadzic"
CC=clang
# Example aliases
 alias zshconfig="vim ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

# Set to this to use case-sensitive completion
# CASE_SENSITIVE="true"

# Comment this out to disable weekly auto-update checks
# DISABLE_AUTO_UPDATE="true"

# Uncomment following line if you want to disable colors in ls
# DISABLE_LS_COLORS="true"

# Uncomment following line if you want to disable autosetting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment following line if you want red dots to be displayed while waiting for completion
# COMPLETION_WAITING_DOTS="true"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
plugins=(git ruby osx lol gem git-flow git-extras heroku nyan rails rake sublime)

source $ZSH/oh-my-zsh.sh

[[ -s "/Users/kristen/.rvm/scripts/rvm" ]] && source "/Users/kristen/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*

export GOROOT=$HOME/.go
export GOARCH=amd
export GOOS=darwin
export EDITOR=vim
export NODE_PATH="/usr/local/lib/node"
export NODE_PATH=$NODE_PATH:/Users/kristen/.nvm/versions/node/v0.12.2/lib/node_modules

#Customize to your needs...
export PATH=/usr/local/bin:/bin:/usr/sbin:/sbin:/usr/bin:/usr/local/git/bin:/usr/texbin:$PATH

export PATH=$PATH:/Applications/Postgres.app/Contents/Versions/9.4/bin

export PATH=$PATH:/Library/Frameworks/Python.framework/Versions/2.7/bin:$HOME/.go/:/Applications/Blender/blender.app/Contents/MacOS

export LD_LIBRARY_PATH=$LD_LIBRARY_PATH:/usr/local/lib

export PATH="$PATH:/Library/TeX/texbin/"

### Added by the Heroku Toolbelt
export PATH=$PATH:/usr/local/heroku/bin

### Autojump
[[ -s `brew --prefix`/etc/autojump.sh ]] && source `brew --prefix`/etc/autojump.sh

export PATH="$HOME/.rbenv/bin:$PATH"
eval "$(rbenv init -)"

# Base16 Shell
BASE16_SHELL="$HOME/.config/base16-shell/base16-default.dark.sh"
[[ -s $BASE16_SHELL ]] && source $BASE16_SHELL

fortune | cowsay -f stegosaurus | lolcat
