:set number
:set printoptions=number:y
:set tabstop=4 
:set nu
:set ai
:colorscheme molokai
:imap <S-Enter> <Esc>
:nmap <S-Enter> i
:syntax on

if exists('+colorcolumn')
  set colorcolumn=80
else
  au BufWinEnter * let w:m2=matchadd('ErrorMsg', '\%>80v.\+', -1)
endif
