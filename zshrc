ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
POWERLEVEL9K_MODE='nerdfont-fontconfig'
ZSH_THEME="powerlevel9k/powerlevel9k"
DEFAULT_USER="kristenmills"

POWERLEVEL9K_SHORTEN_DELIMITER=""
POWERLEVEL9K_SHORTEN_STRATEGY="truncate_from_right"
POWERLEVEL9K_RIGHT_PROMPT_ELEMENTS=(status time command_execution_time)
POWERLEVEL9K_STATUS_VERBOSE=false
POWERLEVEL9K_LEFT_PROMPT_ELEMENTS=(context dir vcs virtualenv go_version)
POWERLEVEL9K_PROMPT_ON_NEWLINE=true

export TERM='xterm-256color'
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
plugins=(git osx git-extras yarn nvm autojump kubectl golang zsh_reload rake heroku virtualenv)

source $ZSH/oh-my-zsh.sh

export EDITOR=nvim

#Customize to your needs...

export PATH=$PATH:/Applications/Postgres.app/Contents/Versions/9.4/bin

export PATH=$PATH:/Library/Frameworks/Python.framework/Versions/2.7/bin:$HOME/.go/:/Applications/Blender/blender.app/Contents/MacOS:$HOME/Library/Python/3.7/bin


export LD_LIBRARY_PATH=$LD_LIBRARY_PATH:/usr/local/lib

export PATH="$PATH:/Library/TeX/texbin/"

### Added by the Heroku Toolbelt
export PATH=$PATH:/usr/local/heroku/bin
export CGO_CFLAGS_ALLOW="-Xpreprocessor"

export PATH="$HOME/.rbenv/bin:$PATH"
eval "$(rbenv init -)"

# Base16 Shell
#BASE16_SHELL=$HOME/.config/base16-shell/
#[ -n "$PS1" ] && [ -s $BASE16_SHELL/profile_helper.sh ] && eval "$($BASE16_SHELL/profile_helper.sh)"

source $HOME/.zshrc.overrides

# export PATH="$HOME/.yarn/bin:$PATH"
export PATH="/usr/local/Caskroom/google-cloud-sdk/latest/google-cloud-sdk/bin:$PATH"

export NVM_DIR="$HOME/.nvm"
[ -s "/usr/local/opt/nvm/nvm.sh" ] && . "/usr/local/opt/nvm/nvm.sh"  # This loads nvm
[ -s "/usr/local/opt/nvm/etc/bash_completion" ] && . "/usr/local/opt/nvm/etc/bash_completion"  # This loads nvm bash_completion
export PKG_CONFIG_PATH=/usr/local/Cellar/libffi/3.2.1/lib/pkgconfig/
test -e "${HOME}/.iterm2_shell_integration.zsh" && source "${HOME}/.iterm2_shell_integration.zsh"

export PATH=$PATH:/usr/local/bin:/bin:/usr/sbin:/sbin:/usr/bin:/usr/local/git/bin:/usr/texbin:/usr/local/sbin
alias vim='nvim'
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

fortune | cowsay -f stegosaurus | lolcat
