call plug#begin('~/.config/nvim/plugged')

""""""""""""""""""""""""""""""
"         LANGUAGE           "
""""""""""""""""""""""""""""""
" Javascript/typescript
"Plug 'othree/yajs.vim'
Plug 'maxmellon/vim-jsx-pretty'
Plug 'soywod/typescript.vim'
"Plug 'mxw/vim-jsx'
"Plug 'leafgarland/typescript-vim'
"Plug 'HerringtonDarkholme/yats.vim'
Plug 'pangloss/vim-javascript'
Plug 'mhartington/nvim-typescript', { 'do': './install.sh' }
Plug 'moll/vim-node'
Plug 'mattn/emmet-vim'
Plug 'styled-components/vim-styled-components', { 'branch': 'main' }
"Plug 'othree/es.next.syntax.vim'
Plug 'cocopon/colorswatch.vim'
Plug 'mhartington/oceanic-next'
Plug 'cocopon/inspecthi.vim'

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

""""""""""""""""""""""""""""""
"             UI             "
""""""""""""""""""""""""""""""
Plug 'trevordmiller/nova-vim'
Plug 'chriskempson/base16-vim'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'editorconfig/editorconfig-vim'
Plug 'ryanoasis/vim-devicons'
Plug 'tpope/vim-vinegar'
Plug 'scrooloose/nerdtree'
Plug 'tiagofumo/vim-nerdtree-syntax-highlight'

""""""""""""""""""""""""""""""
"        COMPLETEION         "
""""""""""""""""""""""""""""""
"Plug 'kristenmills/nvim-completion-manager', { 'do': 'pip3 install jedi psutil setproctitle' }
"Plug 'ncm2/ncm2'
"Plug 'ncm2/ncm2-ultisnips'
"Plug 'ncm2/ncm2-bufword'
"Plug 'ncm2/ncm2-go'
"Plug 'ncm2/ncm2-jedi'
"Plug 'roxma/nvim-yarp'
"Plug 'ObserverOfTime/ncm2-jc2', {'for': ['java', 'jsp']}
"Plug 'artur-shaik/vim-javacomplete2', {'for': ['java', 'jsp']}
Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
Plug 'zchee/deoplete-go', { 'do': 'make'}
Plug 'zchee/deoplete-jedi'
Plug 'ervandew/supertab'

""""""""""""""""""""""""""""""
"            GIT             "
""""""""""""""""""""""""""""""
Plug 'tpope/vim-fugitive'
Plug 'airblade/vim-gitgutter'

""""""""""""""""""""""""""""""
"    SEARCH/FUZZY FINDING    "
""""""""""""""""""""""""""""""
"Plug 'mileszs/ack.vim'
Plug 'Shougo/denite.nvim', { 'do': ':UpdateRemotePlugins' }
"Plug 'ctrlpvim/ctrlp.vim'
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
