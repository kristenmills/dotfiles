#bower things
alias bower='noglob bower'

#chmod things
alias ch='chmod'
alias chx='chmod +x'

#directory things
alias rmd='rmdir'
alias mkd='mkdir'

#diff things
alias d='diff'

#git things
#`alias git='hub'

#ls things
alias ll='ls -l'
alias la='ls -a'          # show hidden files
alias lx='ls -lXB'         # sort by extension
alias lk='ls -lSr'         # sort by size, biggest last
alias lc='ls -ltcr'        # sort by and show change time, most recent last
alias lu='ls -ltur'        # sort by and show access time, most recent last
alias lt='ls -ltr'         # sort by date, most recent last
alias lm='ls -al |more'    # pipe through
alias lr='ls -lR'          # recursive ls

#mongo things
alias mongostart='launchctl start homebrew.mxcl.mongodb'
alias mongostop='launchctl stop homebrew.mxcl.mongodb'

#node things
alias npm-exec='PATH=$(npm bin):$PATH'

#programming languages
alias love='/Applications/love.app/Contents/MacOS/love'
alias ja='java'
alias jc='javac'
alias jca='javac *.java'
alias jrm='rm *.class'
alias rb='ruby'
alias py='python3'
alias python='python3'
alias py2='python2'
alias pip='pip3'
alias spl='make -f /usr/spl/Makefile'

#rails things
alias rsp='rails s puma'
alias rake='bundle exec rake'

alias rethinkdb.start='launchctl load /usr/local/opt/rethinkdb/homebrew.mxcl.rethinkdb.plist'
 alias rethinkdb.stop='launchctl unload /usr/local/opt/rethinkdb/homebrew.mxcl.rethinkdb.plist'

#safety with kristen
alias rm='rm -i'
alias cp='cp -i'
alias mv='mv -i'

#vim things
alias vd='vimdiff'

#wget things
alias wg='wget'

#zsh things
alias va='vim $ZSH/custom/aliases.zsh'
alias marky='$HOME/marky.rd'
