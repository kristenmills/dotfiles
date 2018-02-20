call plug#begin('~/.config/nvim/plugged')

""""""""""""""""""""""""""""""
"         LANGUAGE           "
""""""""""""""""""""""""""""""
" Javascript/typescript
Plug 'pangloss/vim-javascript'
Plug 'maxmellon/vim-jsx-pretty'
Plug 'leafgarland/typescript-vim'
Plug 'ianks/vim-tsx'
Plug 'mhartington/nvim-typescript'
Plug 'moll/vim-node'
Plug 'mattn/emmet-vim'
Plug 'styled-components/vim-styled-components'

" HTML
Plug 'othree/html5.vim'

" Nginx
Plug 'vim-scripts/nginx.vim'

" Go
Plug 'fatih/vim-go'

""""""""""""""""""""""""""""""
"             UI             "
""""""""""""""""""""""""""""""
Plug 'chriskempson/base16-vim'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'editorconfig/editorconfig-vim'
Plug 'ryanoasis/vim-devicons'
Plug 'tpope/vim-vinegar'

""""""""""""""""""""""""""""""
"        COMPLETEION         "
""""""""""""""""""""""""""""""
Plug 'roxma/nvim-completion-manager', { 'do': 'pip3 install jedi psutil setproctitle' }

""""""""""""""""""""""""""""""
"            GIT             "
""""""""""""""""""""""""""""""
Plug 'tpope/vim-fugitive'
Plug 'airblade/vim-gitgutter'

""""""""""""""""""""""""""""""
"    SEARCH/FUZZY FINDING    "
""""""""""""""""""""""""""""""
Plug 'mileszs/ack.vim'
Plug 'Shougo/denite.nvim', { 'do': ':UpdateRemotePlugins' }
Plug 'ctrlpvim/ctrlp.vim'

""""""""""""""""""""""""""""""
"          LINTING           "
""""""""""""""""""""""""""""""
Plug 'w0rp/ale'

""""""""""""""""""""""""""""""
"          SNIPPETS          "
""""""""""""""""""""""""""""""
Plug 'SirVer/ultisnips'
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

call plug#end()
