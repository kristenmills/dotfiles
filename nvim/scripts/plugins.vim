call plug#begin('~/.config/nvim/plugged')

""""""""""""""""""""""""""""""
"         LANGUAGE           "
""""""""""""""""""""""""""""""
" Javascript/typescript
Plug 'soywod/typescript.vim'
Plug 'styled-components/vim-styled-components', { 'branch': 'main' }
Plug 'moll/vim-node'
Plug 'mattn/emmet-vim'

" CSS
Plug 'hail2u/vim-css3-syntax'

"Graphql
Plug 'jparise/vim-graphql'

" Jsonnet
Plug 'google/vim-jsonnet'

Plug 'sheerun/vim-polyglot'
Plug 'gisphm/vim-gitignore'

" Go
Plug 'fatih/vim-go'

" Danger
Plug 'hjanuschka/vim-danger'

"""""""""""""""""""""""""""""""
"             UI             "
""""""""""""""""""""""""""""""
Plug 'arcticicestudio/nord-vim'
Plug 'chriskempson/base16-vim'
Plug 'cocopon/inspecthi.vim'
Plug 'cocopon/colorswatch.vim'
Plug 'editorconfig/editorconfig-vim'
Plug 'ryanoasis/vim-devicons'
Plug 'scrooloose/nerdtree'
Plug 'tpope/vim-vinegar'
" Plug 'tiagofumo/vim-nerdtree-syntax-highlight'
Plug 'kristenmills/nova-vim'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

""""""""""""""""""""""""""""""
"        COMPLETEION         "
""""""""""""""""""""""""""""""
Plug 'github/copilot.vim'
Plug 'neoclide/coc.nvim', {'branch': 'release'}

""""""""""""""""""""""""""""""
"            GIT             "
""""""""""""""""""""""""""""""
Plug 'tpope/vim-fugitive'
Plug 'airblade/vim-gitgutter'

""""""""""""""""""""""""""""""
"    SEARCH/FUZZY FINDING    "
""""""""""""""""""""""""""""""
Plug 'Shougo/denite.nvim', { 'do': ':UpdateRemotePlugins' }
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'

""""""""""""""""""""""""""""""
"          LINTING           "
""""""""""""""""""""""""""""""
Plug 'w0rp/ale'

""""""""""""""""""""""""""""""
"          SNIPPETS          "
""""""""""""""""""""""""""""""
" Plug 'SirVer/ultisnips'
Plug 'honza/vim-snippets'

""""""""""""""""""""""""""""""
"          Other             "
""""""""""""""""""""""""""""""
Plug 'jiangmiao/auto-pairs'
Plug 'scrooloose/nerdcommenter'
Plug 'tpope/vim-abolish'
Plug 'ntpeters/vim-better-whitespace'
Plug 'tpope/vim-repeat'
Plug 'tpope/vim-surround'
Plug 'easymotion/vim-easymotion'
Plug 'kshenoy/vim-signature'
Plug 'vimwiki/vimwiki'

call plug#end()
