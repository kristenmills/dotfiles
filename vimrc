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
Plug 'jiangmiao/auto-pairs'
Plug 'chriskempson/base16-vim'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'Shougo/denite.nvim', Cond(has('nvim'), { 'do': function('DoRemote') })
Plug 'Shougo/deoplete.nvim', Cond(has('nvim'), { 'do': function('DoRemote') })
Plug 'zchee/deoplete-go', Cond(has('nvim'), { 'do': 'make'})
Plug 'zchee/deoplete-jedi'
Plug 'editorconfig/editorconfig-vim'
Plug 'mattn/emmet-vim'
Plug 'othree/html5.vim'
Plug 'neomake/neomake'
Plug 'scrooloose/nerdcommenter'
Plug 'scrooloose/nerdtree'
Plug 'vim-scripts/nginx.vim'
Plug 'mhartington/nvim-typescript'
Plug 'ervandew/supertab'
Plug 'leafgarland/typescript-vim'
Plug 'SirVer/ultisnips'
Plug 'tpope/vim-abolish'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'ntpeters/vim-better-whitespace'
Plug 'ryanoasis/vim-devicons'
Plug 'tpope/vim-fugitive'
Plug 'airblade/vim-gitgutter'
Plug 'fatih/vim-go'
Plug 'pangloss/vim-javascript'
Plug 'maxmellon/vim-jsx-pretty'
Plug 'tiagofumo/vim-nerdtree-syntax-highlight'
"Plug 'jistr/vim-nerdtree-tabs'
Plug 'moll/vim-node'
Plug 'tpope/vim-repeat'
Plug 'honza/vim-snippets'
Plug 'styled-components/vim-styled-components', { 'branch': 'rewrite' }
Plug 'tpope/vim-surround'

call plug#end()

set clipboard=unnamed

"Show the status bar
set laststatus=2

"Syntax highlighting and formatting
syntax on
filetype plugin indent on

" Set 256 color
set t_Co=256
let g:vim_jsx_pretty_colorful_config = 1

"Color scheme`
if filereadable(expand("~/.vimrc_background"))
  let base16colorspace=256
  set background=dark
  source ~/.vimrc_background
endif

" Setup autoread
set autoread
au FocusGained,BufEnter * :silent! !

" Setup autowrite
set autowrite

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

" Mappings for navigating panes
nnoremap <leader>h <C-w><C-h>
nnoremap <leader>j <C-w><C-j>
nnoremap <leader>k <C-w><C-k>
nnoremap <leader>l <C-w><C-l>

" gf mappings
nmap <leader>gf <C-w>gf

nnoremap gy ggyG
nnoremap <leader>g gg=G

"toggle spell check
nnoremap <leader>s :set spell!<cr>

"Use alt for incrementing and decrementing
nnoremap å <C-a>
nnoremap ≈ <C-x>

"better rspec syntax highlighting outside of rails projects
autocmd BufRead *_spec.rb syn keyword rubyRspec describe context it its specify shared_context shared_examples shared_examples_for shared_context include_examples include_context it_should_behave_like it_behaves_like before after around subject fixtures controller_name helper_name scenario feature background given described_class let
highlight def link rubyRspec Function

"Strip whitespace on save
autocmd BufWritePre * StripWhitespace

"Because i'm bad
:command WQ wq
:command Wq wq
:command W w
:command Q q

set undofile                " Save undo's after file closes
set undodir=$HOME/.vim/undo " where to save undo histories
set undolevels=1000         " How many undos
set undoreload=10000        " number of lines to save for undo

noremap <expr><tab> pumvisible() ? "\<c-n>" : "\<tab>"
nnoremap <leader>a :Ag

""""""""""""""""""""""""""""""
"           AIRLINE          "
""""""""""""""""""""""""""""""
let g:airline_powerline_fonts = 1
let g:airline_theme='base16'

""""""""""""""""""""""""""""""
"           CTRL-P           "
""""""""""""""""""""""""""""""
if executable('ag')
  " Use ag over grep
  set grepprg=ag\ --nogroup\ --nocolor

  " Use ag in CtrlP for listing files. Lightning fast and respects .gitignore
  let g:ctrlp_user_command = 'ag %s -l --nocolor -g ""'

  " ag is fast enough that CtrlP doesn't need to cache
  let g:ctrlp_use_caching = 0
endif

""""""""""""""""""""""""""""""
"          DEOPLETE          "
""""""""""""""""""""""""""""""
let g:deoplete#enable_at_startup = 1
"set completeopt=longest,menuone,preview
let g:deoplete#ignore_sources = {}
let g:deoplete#ignore_sources._ = ['buffer']

autocmd InsertLeave,CompleteDone * if pumvisible() == 0 | pclose | endif

let g:deoplete#sources = {}
let g:deoplete#sources#go#gocode_binary =	$GOPATH.'bin/gocode'
let g:deoplete#sources#go#sort_class = ['package', 'func', 'type', 'var', 'const']
let g:deoplete#sources#go#pointer = 1

let g:UltiSnipsExpandTrigger="<C-j>"
let g:SuperTabDefaultCompletionType = "<C-n>"

""""""""""""""""""""""""""""""
"           EMMET            "
""""""""""""""""""""""""""""""
let g:user_emmet_settings = {
      \  'javascript.jsx' : {
      \      'extends' : 'jsx',
      \  },
      \}

""""""""""""""""""""""""""""""
"           NEOMAKE          "
""""""""""""""""""""""""""""""
let g:neomake_open_list = 2
let g:neomake_list_height = 5

if filereadable($PWD .'/node_modules/.bin/eslint')
  let g:neomake_jsx_enabled_makers = ['eslint']
  let g:neomake_jsx_eslint_exe = $PWD .'/node_modules/.bin/eslint'
  let g:neomake_javascript_enabled_makers = ['eslint']
  let g:neomake_javascript_eslint_exe = $PWD .'/node_modules/.bin/eslint'
endif

if filereadable($PWD .'node_modules/.bin/tslint')
  let g:neomake_typescript_enabled_makers = ['tsc', 'tslint']
  let g:neomake_typescript_tslint_exe = $PWD .'/node_modules/.bin/tslint'
  let g:neomake_tsx_enabled_makers = ['tsc', 'tslint']
  let g:neomake_tsx_tslint_exe = $PWD .'/node_modules/.bin/tslint'
endif

autocmd! BufWritePost * Neomake
augroup my_neomake_qf
  autocmd!
  autocmd QuitPre * if &filetype !=# 'qf' | lclose | endif
augroup END

""""""""""""""""""""""""""""""
"          NERDTREE          "
""""""""""""""""""""""""""""""
"let g:nerdtree_tabs_open_on_console_startup = 1
let NERDTreeShowHidden=1
let NERDTreeIgnore = ['\.DS_Store$', '\.swp$', '\.git/$', '\.pyc$', '\.emotion\.css$']
nmap <leader>t :NERDTreeToggle<CR>
autocmd vimenter * NERDTree
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

""""""""""""""""""""""""""""""
"       NVIM-TYPESCRIPT      "
""""""""""""""""""""""""""""""
let g:nvim_typescript#javascript_support = 1

""""""""""""""""""""""""""""""
"           VIM-GO           "
""""""""""""""""""""""""""""""
let g:go_fmt_command = "goimports"
autocmd BufNewFile,BufRead *.go setlocal noexpandtab tabstop=2 shiftwidth=2
let g:go_highlight_types = 1
let g:go_highlight_functions = 1
let g:go_highlight_methods = 1
let g:go_auto_type_info = 1
set updatetime=100

au FileType go nmap <leader>gd <Plug>(go-def-vertical)

source ~/.vimrc.overrides
