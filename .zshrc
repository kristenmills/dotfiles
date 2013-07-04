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
plugins=(git ruby osx lol gem git-flow git-extras heroku nyan rails3 rake sublime)

source $ZSH/oh-my-zsh.sh

[[ -s "/Users/kristen/.rvm/scripts/rvm" ]] && source "/Users/kristen/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*

export GOROOT=$HOME/.go
export GOARCH=amd
export GOOS=darwin
export EDITOR=vim
export NODE_PATH="/usr/local/lib/node"
#Customize to your needs...
export PATH=/usr/bin/flex:/Users/kristen/.ScreenUtil:/Library/Frameworks/Python.framework/Versions/2.7/bin:/Users/kristen/.rvm/gems/ruby-1.9.3-p125/bin:/Users/kristen/.rvm/gems/ruby-1.9.3-p125@global/bin:/Users/kristen/.rvm/rubies/ruby-1.9.3-p125/bin:/Users/kristen/.rvm/bin:/Users/kristen/.go/bin:/opt/local/bin:/opt/iphone/bin:/bin:/usr/sbin:/sbin:/usr/local/bin:/usr/bin:/usr/X11/bin:/usr/local/git/bin:/usr/texbin:/Applications/Blender/blender.app/Contents/MacOS

export PYTHONPATH=$PYTHONPATH:/usr/local/lib/python2.7/site-packages:/usr/local/lib

export LD_LIBRARY_PATH=$LD_LIBRARY_PATH:/usr/local/lib

### Added by the Heroku Toolbelt
export PATH="/usr/local/heroku/bin:$PATH"

### Autojump
[[ -s `brew --prefix`/etc/autojump.sh ]] && source `brew --prefix`/etc/autojump.sh

PATH=$PATH:$HOME/.rvm/bin # Add RVM to PATH for scripting

[[ -s "/Users/kristen/.rvm/scripts/rvm" ]] && source "/Users/kristen/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*
