set mouse=avr
syntax on
set number
set hlsearch
set showmatch
set incsearch
inoremap jjk <ESC>
set noswapfile 
set ignorecase
let g:airline_theme='term'
set relativenumber
let mapleader = "'"
set autoindent
set smartindent

call plug#begin()
Plug 'kovetskiy/sxhkd-vim'
Plug 'sheerun/vim-polyglot'
Plug 'vim-airline/vim-airline-themes'
Plug 'https://github.com/preservim/nerdtree', { 'on': 'NERDTreeToggle' }
Plug 'LunarWatcher/auto-pairs'
Plug 'vim-airline/vim-airline'
call plug#end()
