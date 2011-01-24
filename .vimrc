" set up some var defaults
let g:loaded_matchparen=1      " don't do matchparen nastiness
let g:xml_use_xhtml=1          " put /> on singleton tags in HTML
let g:sql_type_default='mysql' " default to MySQL style SQL syntax
let g:php_sql_query=1          " assume strings in PHP are SQL

" syntax related settings
syntax on
syntax sync minlines=200
set background=dark
highlight clear NonText
highlight clear Underlined
highlight link  Underlined CursorLine

" filetype-based settings
filetype plugin indent on

" compiler setup
autocmd BufNewFile,BufRead * if &ft == 'perl'  | compiler perl  | endif
autocmd BufNewFile,BufRead * if &ft == 'mason' | compiler mason | endif
autocmd BufNewFile,BufRead * if &ft == 'ruby'  | compiler ruby  | endif
autocmd BufNewFile,BufRead * if &ft == 'php'   | compiler php   | endif

" general settings
set noshowmode
set noruler
set backspace=indent,eol
set ignorecase
set smartcase
set incsearch
set wildmode=list:longest,full
set shiftround
set shiftwidth=4
set tabstop=8
set softtabstop=4
set expandtab
set splitbelow
set autoindent
set writebackup
set nobackup
set wrapscan
set tildeop
set showmatch
set exrc
set tags=tags;/

" new normal-mode mappings
nmap Y y$
nmap S
\ :if exists("syntax_on") <Bar>
\   syntax off <Bar>
\ else <Bar>
\   syntax enable <Bar>
\ endif <CR>
nmap <Bslash> :set invpaste<CR>:set paste?<CR>
nnoremap <C-w>j <C-w>w
nnoremap <C-w>k <C-w>W

" new commands and command aliases
command -nargs=? -complete=file E split <args>