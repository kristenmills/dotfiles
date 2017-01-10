""""""""""""""""""""""""""""""
"          VIMPLUG           "
""""""""""""""""""""""""""""""
function! Cond(cond, ...)
  let opts = get(a:000, 0, {})
  return a:cond ? opts : extend(opts, { 'on': [], 'for': [] })
endfunction

function! DoRemote(arg)
  UpdateRemotePlugins
endfunction

call plug#begin('~/.vim/plugged')

Plug 'rking/ag.vim'
Plug 'chriskempson/base16-vim'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'Shougo/deoplete.nvim', Cond(has('nvim'), { 'do': function('DoRemote') })
Plug 'editorconfig/editorconfig-vim'
Plug 'mattn/emmet-vim'
Plug 'scrooloose/nerdcommenter'
Plug 'scrooloose/nerdtree'
Plug 'ervandew/supertab'
Plug 'scrooloose/syntastic'
Plug 'Shougo/vimproc.vim', { 'do': 'make' }
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'ntpeters/vim-better-whitespace'
Plug 'tpope/vim-bundler'
Plug 'tpope/vim-fugitive'
Plug 'airblade/vim-gitgutter'
Plug 'pangloss/vim-javascript'
Plug 'mxw/vim-jsx'
Plug 'osyo-manga/vim-monster'
Plug 'terryma/vim-multiple-cursors'
Plug 'jistr/vim-nerdtree-tabs'
Plug 'moll/vim-node'
Plug 'tpope/vim-obsession'
Plug 'tpope/vim-rails'
Plug 'wavded/vim-stylus'
Plug 'tpope/vim-surround'

call plug#end()

"Show the status bar
set laststatus=2

"Syntax highlighting and formatting
syntax on
filetype plugin indent on

" Set 256 color
set t_Co=256

"Color scheme`
if filereadable(expand("~/.vimrc_background"))
  let base16colorspace=256
  set background=dark
  source ~/.vimrc_background
endif

" Setup autoread
set autoread
au FocusGained,BufEnter * :silent! !

"Line numbers and relative line numbers
set number
set relativenumber

" Highlight current line
set cursorline

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

"Code folding settings
set foldmethod=indent
set foldlevelstart=99
set foldenable

" Make splits happen below and to the right
set splitright
set splitbelow

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

"Auto populate powerline symbols
let g:airline_powerline_fonts = 1
let g:airline_theme='base16'

" Nerd tree auto open and hidden files
let g:nerdtree_tabs_open_on_console_startup = 1
let NERDTreeShowHidden=1
let NERDTreeIgnore = ['\.DS_Store$', '\.swp$', '\.git/$', '\.pyc$']

" syntastic
let g:syntastic_javascript_checkers = ['eslint']
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1

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
nnoremap <leader>vr :vsplit ~/.vimrc <cr>
nnoremap <leader>vrs :source ~/.vimrc <cr>

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

" Fugitive mappings
nmap <leader>gs :Gstatus<CR>

" ag mappings
nnoremap <leader>a :Ag

" gf mappings
nmap <leader>gf <C-w>gf

" noh mapping
nnoremap <leader>no :noh<cr>

"syntastic mappings
nnoremap <leader>ls :Errors<cr>
nnoremap <leader>lh :lclose<cr>
nnoremap <leader>ln :lnext<cr>
nnoremap <leader>lp :lprevious<cr>

"replace double quotes with single quotes
nnoremap <leader>sq :%s/"/'/g<cr>
nnoremap gy ggvG$y
nnoremap <leader>g gg=G

"toggle spell check
nnoremap <leader>s :set spell!<cr>

"Use alt for incrementing and decrementing
nnoremap å <C-a>
nnoremap ≈ <C-x>

"session things
augroup sourcesession
        autocmd!
        autocmd VimEnter * nested
         \ if !argc() && empty(v:this_session) && filereadable('Session.vim') |
         \   source Session.vim |
         \ endif
augroup END

"better rspec syntax highlighting outside of rails projects
autocmd BufRead *_spec.rb syn keyword rubyRspec describe context it its specify shared_context shared_examples shared_examples_for shared_context include_examples include_context it_should_behave_like it_behaves_like before after around subject fixtures controller_name helper_name scenario feature background given described_class let
highlight def link rubyRspec Function

set undofile                " Save undo's after file closes
set undodir=$HOME/.vim/undo " where to save undo histories
set undolevels=1000         " How many undos
set undoreload=10000        " number of lines to save for undo
