"OUu
"Show the status bar
set laststatus=2

"Syntax highlighting and formatting
syntax enable
filetype plugin indent on
set termguicolors

" Setup autoread
set autoread
au FocusGained,BufEnter * :silent! !

" Setup autowrite
set autowrite

"Line numbers and relative line numbers
set number
set relativenumber

" Highlight current line
"set cursorline

" Highlight search matches
set hlsearch

"Spaces instead of tabs
set expandtab

"Tab width
set tabstop=2 shiftwidth=2

" Backspace
set backspace=indent,eol,start

"Line number column number etc
set ruler

" set show matching parenthesis
set showmatch

" ignore case if search pattern is all lowercase, case-sensitive otherwise
set ignorecase
set smartcase

" autoindent always on
set autoindent
set copyindent

" hides instead of closes buffers
set hidden

"Code folding settings
set foldmethod=indent
set foldlevelstart=99
set foldenable

" Make splits happen below and to the right
set splitright
set splitbelow

" Set leader to space
let mapleader = ","

set undofile                " Save undo's after file closes
set undodir=$HOME/.config/nvim/undo " where to save undo histories
set undolevels=1000         " How many undos
set undoreload=10000        " number of lines to save for undo

"use system clipboard
set clipboard=unnamed

"netrw file explorer
let g:netrw_liststyle = 3

" don't give |ins-completion-menu| messages.
set shortmess+=c

" fix nerd tree highlighting
function! MyHighlights() abort
  highlight NERDTreeFile cterm=NONE ctermbg=NONE guifg=#c5d4dd guibg=NONE
endfunction

augroup MyColors
  autocmd!
  autocmd ColorScheme * call MyHighlights()
augroup END

" if filereadable(expand("~/.vimrc_background"))
  " let base16colorspace=256
  " source ~/.vimrc_background
" endif

colorscheme nova
