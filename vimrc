" Run Pathogen
execute pathogen#infect()
execute pathogen#helptags()

"add Powerline
set rtp+=~/.vim/bundle/powerline/powerline/bindings/vim
set laststatus=2

"Syntax highlighting and formatting
syntax on
filetype plugin indent on

" Set 256 color
set t_Co=256

" Automatically load changed files
set autoread

"Line numbers and relative line numbers
set number
set relativenumber

" Highlight current line
set cursorline

" Highlight search matches
set hlsearch

"Wrap text at 80 characters
set tw=80

"Spaces instead of tabs
set expandtab

"Tab width
set tabstop=2 shiftwidth=2

" Backspace
set backspace=indent,eol,start

"Line number column number etc
set ruler

"Code folding settings
set foldmethod=indent
set foldlevelstart=99
set foldenable

" Set leader to space
let mapleader = ","

"Strip whitespace on save
autocmd BufWritePre * StripWhitespace

" Configure vim-multiple-cursors
let g:multi_cursor_use_default_mapping=0
let g:multi_cursor_next_key='<C-s>'
let g:multi_cursor_prev_key='<C-a>'
let g:multi_cursor_skip_key='<C-q>'
let g:multi_cursor_quit_key='<Esc>'
let g:multi_cursor_start_key='<C-s>'

" Configure ctrlp.vim
if executable('ag')
  " Use ag over grep
  set grepprg=ag\ --nogroup\ --nocolor

  " Use ag in CtrlP for listing files. Lightning fast and respects .gitignore
  let g:ctrlp_user_command = 'ag %s -l --nocolor -g ""'

  " ag is fast enough that CtrlP doesn't need to cache
  let g:ctrlp_use_caching = 0
endif

" Copy and paste to system clipboard
vmap <leader>y "+y
vmap <leader>d "+d
nmap <leader>p "+p
nmap <leader>P "+P
vmap <leader>p "+p
vmap <leader>P "+P

"Toggle Whitespace
nnoremap <leader>w :ToggleWhitespace<cr>

" Map Leader VR to opening my vimrc in a vertical split
nnoremap <leader>vr :vsplit ~/.vimrc <CR>

" No arrow keys
noremap <Up> <NOP>
noremap <Down> <NOP>
noremap <Left> <NOP>
noremap <Right> <NOP>

" Map C-n to opening a new tab
nnoremap <silent> <C-n> :tabnew<CR>

" Map C-x to closing a tab
nnoremap <silent> <C-x> :tabclose<CR>

" Mappings for pane spliting
nnoremap <C-l> <C-W><C-v>
nnoremap <C-j> <C-W><C-s>

" Mappings for navigating panes
nnoremap <leader>h <C-w><C-h>
nnoremap <leader>j <C-w><C-j>
nnoremap <leader>k <C-w><C-k>
nnoremap <leader>l <C-w><C-l>

" Nerdtree mappings
nmap <leader>t <plug>NERDTreeTabsToggle<CR>
