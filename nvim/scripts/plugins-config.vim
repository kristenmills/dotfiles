""""""""""""""""""""""""""""""
"            ACK             "
""""""""""""""""""""""""""""""
if executable('ag')
  let g:ackprg = 'ag --vimgrep'
endif

""""""""""""""""""""""""""""""
"           AIRLINE          "
""""""""""""""""""""""""""""""
let g:airline_powerline_fonts = 1
let g:airline_theme='nova'
let g:airline#extensions#ale#enabled = 1

""""""""""""""""""""""""""""""
"            ALE             "
""""""""""""""""""""""""""""""
let g:ale_fixers = {
\   'javascript': ['eslint'],
\   'typescript': ['eslint'],
\   'typescriptreact': ['eslint'],
\   'javascriptreact': ['eslint'],
\   'java': ['google-java-format'],
\   'scala': ['scalafmt'],
\   'go': ['goimports'],
\   'python': ['black', 'isort'],
\   'ruby': ['rubocop'],
\}

let g:ale_fix_on_save = 1

let g:ale_linters = {
\   'javascript': ['eslint'],
\   'typescript': ['eslint'],
\   'go': ['go build'],
\   'yaml': ['yamllint'],
\   'graphql': ['gqlint'],
\   'python': ['flake8'],
\   'ruby': ['rubocop'],
\}

let g:ale_go_gometalinter_options = "--fast"
let g:ale_lint_delay = 1000
let g:ale_javascript_eslint_options  = "--no-ignore"

nmap <silent> <C-k> <Plug>(ale_previous_wrap)
nmap <silent> <C-j> <Plug>(ale_next_wrap)

let g:ale_sign_error = '⤫'
let g:ale_sign_warning = '⚠'
" let g:ale_ruby_rubocop_executable = 'bundle'


""""""""""""""""""""""""""""""
"         AUTO-PAIRS         "
""""""""""""""""""""""""""""""
" disable auto map CR so it doesn't interfere with snippet completion.
" This behavior is handled in coc.nvim config
let g:AutoPairsMapCR = 0

""""""""""""""""""""""""""""""
"           DENITE           "
""""""""""""""""""""""""""""""
let g:denite_custom_menus = {}

""""""""""""""""""""""""""""""
"            FZF             "
""""""""""""""""""""""""""""""
nmap <C-p> :FZF<CR>
let g:fzf_commits_log_options = '--graph --color=always --format="%C(auto)%an %h%d %s %C(black)%C(bold)%cr"'

""""""""""""""""""""""""""""""
"         GIT GUTTER         "
""""""""""""""""""""""""""""""
" Swapping these because it have <leader>h as a prefix makes
" pan switching slow
nmap <Leader>sh <Plug>GitGutterStageHunk
nmap <Leader>uh <Plug>GitGutterUndoHunk
nmap <Leader>ph <Plug>GitGutterPreviewHunk

""""""""""""""""""""""""""""""
"          CTRL-P            "
""""""""""""""""""""""""""""""
let g:ctrlp_working_path_mode = 'ra'
let g:ctrlp_custom_ignore = 'node_modules\|DS_Store\|git\|dist'
let g:ctrlp_user_command = ['.git/', 'git --git-dir=%s/.git ls-files -oc --exclude-standard']

""""""""""""""""""""""""""""""
"           EMMET            "
""""""""""""""""""""""""""""""
let g:user_emmet_settings = {
\  'javascript.jsx' : {
\      'extends' : 'jsx',
\  },
\}

""""""""""""""""""""""""""""""
"          NERDTREE          "
""""""""""""""""""""""""""""""
let NERDTreeShowHidden=1
let NERDTreeIgnore = ['\.DS_Store$', '\.swp$', '\.git/$', '\.pyc$', '\.emotion\.css$']
nmap <leader>t :NERDTreeToggle<CR>
nmap gt :NERDTreeFocus<CR>
nmap gtf :NERDTreeFind<CR>
autocmd vimenter * NERDTreeToggle
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

""""""""""""""""""""""""""""""
"       NVIM-TYPESCRIPT      "
""""""""""""""""""""""""""""""
let g:nvim_typescript#javascript_support = 1
let g:nvim_typescript#diagnostics_enable = 0
let g:yats_host_keyword = 1

""""""""""""""""""""""""""""""
"          SUPERTAB          "
""""""""""""""""""""""""""""""
let g:SuperTabDefaultCompletionType = "<c-n>"

""""""""""""""""""""""""""""""
"     TRIM WHITESPACE        "
""""""""""""""""""""""""""""""
autocmd BufWritePre * StripWhitespace


""""""""""""""""""""""""""""""
"         ULTISNIPS          "
""""""""""""""""""""""""""""""
let g:UltiSnipsExpandTrigger		= "<Plug>(ultisnips_expand)"
let g:UltiSnipsJumpForwardTrigger	= "<c-j>"
let g:UltiSnipsJumpBackwardTrigger	= "<c-k>"
let g:UltiSnipsRemoveSelectModeMappings = 0

""""""""""""""""""""""""""""""
"           VIM-GO           "
""""""""""""""""""""""""""""""
" auto imports
let g:go_fmt_command = "goimports"

" real tabs
autocmd BufNewFile,BufRead *.go setlocal noexpandtab tabstop=2 shiftwidth=2

" show  type info in the status line
let g:go_auto_type_info = 1

" syntax highlighting
let g:go_highlight_types = 1
let g:go_highlight_functions = 1
let g:go_highlight_function_calls = 1
set updatetime=100

au FileType go nmap gdv <Plug>(go-def-vertical)
au Filetype go nmap gav <Plug>(go-alternate-vertical)
au Filetype go nmap ga <Plug>(go-alternate-edit)
au FileType go nmap gdd :GoDeclsDir<cr>

let g:go_addtags_transform = "snakecase"
let g:go_snippet_engine = "neosnippet"

""""""""""""""""""""""""""""""
"       VIM-JSX-PRETTY       "
""""""""""""""""""""""""""""""
let g:vim_jsx_pretty_colorful_config = 1

""""""""""""""""""""""""""""""
"        VIM-POlYGLOT        "
""""""""""""""""""""""""""""""
let g:javascript_plugin_flow = 1


""""""""""""""""""""""""""""""
"         VIM-SCALA          "
""""""""""""""""""""""""""""""
au BufRead,BufNewFile *.sbt set filetype=scala

""""""""""""""""""""""""""""""
"          VIM-WIKI          "
""""""""""""""""""""""""""""""
let g:vimwiki_list = [{'path': '~/vimwiki/',
                      \ 'syntax': 'markdown', 'ext': '.md'}]
let g:NERDSpaceDelims = 1
autocmd BufNewFile,BufRead *.tsx setlocal ft=typescript.tsx

imap <silent><script><expr> <C-J> copilot#Accept("\<CR>")
