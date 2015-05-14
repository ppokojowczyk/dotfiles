call pathogen#infect()
set nocompatible
set t_Co=256
syntax enable

if has('gui_running')
  colorscheme jellybeans
  set lines=30 columns=100
  set wrap!
else
  colorscheme jellybeans
endif

filetype plugin on

:let g:airline_theme='dark'

set laststatus=2

"set cursorline
set colorcolumn=80

set smartindent
set tabstop=2
set expandtab
set nobackup
set backupdir=.
set directory=.
set ruler
set hlsearch
nohl

set foldmethod=marker
set autoindent
set smarttab
set shiftwidth=2
set softtabstop=2
set mouse=a
set number
set ignorecase
set smartcase

map <F9> :NERDTree<CR>
map <F5> :w<CR>
map <F10> :q<CR>
map \nt :NERDTree<CR>
map <S-l> :tabnext<CR>
map <S-h> :tabprevious<CR>

map <F6> :!clear;php %<CR>

set splitbelow
set splitright

nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

set guifont=Terminus\ 12
