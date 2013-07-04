#cd things
alias .='cd .'
alias ..='cd ../'
alias ...='cd ../../'
alias ....='cd ../../../'
alias .....='cd ../../../../'

#chmod things
alias ch='chmod'
alias chf='chmod 777'
alias chx='chmod +x'

#directory things
alias rmd='rmdir'
alias mkd='mkdir'

#diff things
alias d='diff'

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

#programming languages
alias love='/Applications/love.app/Contents/MacOS/love'
alias ja='java'
alias jc='javac'
alias jca='javac *.java'
alias jrm='rm *.class'
alias rb='ruby'
alias py='python3'
alias py2='python2'
alias spl='make -f /usr/spl/Makefile'

#rails things
alias rsp='rails s puma'

#safety with kristen
alias rm='rm -i'
alias cp='cp -i'
alias mv='mv -i'

alias kdrm='cd '/Applications/tools/KindleBooks_Tools/KindleBooks/' && '/usr/local/bin/pythonw'  '/Applications/tools/KindleBooks_Tools/KindleBooks/KindleBooks.pyw'  && echo Exit status: $? && exit 1'

#ssh things
alias glados='ssh -Y knm5153@glados.cs.rit.edu'
alias nitron='ssh -Y knm5153@nitron.se.rit.edu'

#vim things
alias vd='vimdiff'

#wget things
alias wg='wget'

#zsh things
alias va='vim $ZSH/custom/aliases.zsh'
alias marky='$HOME/marky.rd'
