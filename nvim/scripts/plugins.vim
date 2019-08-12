call plug#begin('~/.config/nvim/plugged')

""""""""""""""""""""""""""""""
"         LANGUAGE           "
""""""""""""""""""""""""""""""
" Javascript/typescript
Plug 'maxmellon/vim-jsx-pretty'
Plug 'soywod/typescript.vim'
Plug 'pangloss/vim-javascript'
"Plug 'mhartington/nvim-typescript', { 'do': './install.sh' }
Plug 'moll/vim-node'
Plug 'mattn/emmet-vim'
Plug 'styled-components/vim-styled-components', { 'branch': 'main' }

" HTML
Plug 'othree/html5.vim'

" CSS
Plug 'hail2u/vim-css3-syntax'

" Nginx
Plug 'vim-scripts/nginx.vim'

" Go
Plug 'fatih/vim-go', { 'do': ':GoInstallBinaries' }

" Swift
Plug 'keith/swift.vim'

"Graphql
Plug 'jparise/vim-graphql'

" Jsonnet
Plug 'google/vim-jsonnet'

" Scala/Java
Plug 'derekwyatt/vim-scala'


""""""""""""""""""""""""""""""
"             UI             "
""""""""""""""""""""""""""""""
Plug 'chriskempson/base16-vim'
Plug 'cocopon/inspecthi.vim'
Plug 'cocopon/colorswatch.vim'
Plug 'editorconfig/editorconfig-vim'
Plug 'ryanoasis/vim-devicons'
Plug 'scrooloose/nerdtree'
Plug 'tpope/vim-vinegar'
Plug 'tiagofumo/vim-nerdtree-syntax-highlight'
Plug 'trevordmiller/nova-vim'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

""""""""""""""""""""""""""""""
"        COMPLETEION         "
""""""""""""""""""""""""""""""
"Plug 'kristenmills/nvim-completion-manager', { 'do': 'pip3 install jedi psutil setproctitle' }
"Plug 'ncm2/ncm2'
"Plug 'ncm2/ncm2-ultisnips'
"Plug 'ncm2/ncm2-bufword'
"Plug 'ncm2/ncm2-go'
"Plug 'ncm2/ncm2-jedi'
"Plug 'ObserverOfTime/ncm2-jc2', {'for': ['java', 'jsp']}
"Plug 'artur-shaik/vim-javacomplete2', {'for': ['java', 'jsp']}
"Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
"Plug 'zchee/deoplete-go', { 'do': 'make'}
"Plug 'zchee/deoplete-jedi'
Plug 'neoclide/coc.nvim', {'do': { -> coc#util#install()}}
Plug 'neoclide/coc-python', {'do': 'yarn install --frozen-lockfile'}
Plug 'neoclide/coc-json', {'do': 'yarn install --frozen-lockfile'}
Plug 'neoclide/coc-highlight', {'do': 'yarn install --frozen-lockfile'}
Plug 'neoclide/coc-yaml', {'do': 'yarn install --frozen-lockfile'}
Plug 'neoclide/coc-snippets', {'do': 'yarn install --frozen-lockfile'}


""""""""""""""""""""""""""""""
"            GIT             "
""""""""""""""""""""""""""""""
Plug 'tpope/vim-fugitive'
Plug 'airblade/vim-gitgutter'

""""""""""""""""""""""""""""""
"    SEARCH/FUZZY FINDING    "
""""""""""""""""""""""""""""""
Plug 'Shougo/denite.nvim', { 'do': ':UpdateRemotePlugins' }
Plug '/usr/local/opt/fzf'
Plug 'junegunn/fzf.vim'

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
Plug 'easymotion/vim-easymotion'
Plug 'kshenoy/vim-signature'

call plug#end()
