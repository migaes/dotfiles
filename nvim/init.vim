" Neovim configuration.

"
" Plugins
"
call plug#begin('~/.vim/plugged')
Plug 'ctrlpvim/ctrlp.vim'
Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
Plug 'tpope/vim-surround'
Plug 'tpope/vim-unimpaired'
Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }
call plug#end()

"
" General settings
"
filetype off
filetype plugin indent on
syntax on
set ruler
set shell=/bin/bash
set mouse=a
set encoding=utf-8
set nocompatible 

"
" Indentation
"
set autoindent
set shiftwidth=2
set tabstop=2

"
" Search
"
set ignorecase                              " Ignore case by default
set smartcase                               " Make search case sensitive only if it contains uppercase letters
set wrapscan                                " Search again from top when reached the bottom
set nohlsearch                              " Don't highlight after search

" Disable auto commenting
"autocmd FileType * setlocal formatoptions-=c formatoptions-=r formatoptions-=o

" Set <leader> key
let mapleader = ","
noremap \ ,

"
" Copy to and paste from the system clipboard (register +)
"
nnoremap <Leader>p "+p
nnoremap <Leader>P "+P
vnoremap <Leader>y "+y

" Get to normal mode
inoremap jj <ESC>

" Set toggle autoindent for pasting
set pastetoggle=<F3>

" Disable auto commenting
autocmd FileType * setlocal formatoptions-=c formatoptions-=r formatoptions-=o

"
" Split ctrl+hjkl navigation
"
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l

"
" No backups
"
set nobackup
set nowb
set noswapfile

"
" NERDTree
"
map <C-n> :NERDTreeToggle<CR>

"
" CtrlP
"
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'
let g:ctrlp_custom_ignore = '\v[\/]\.(git|hg|svn)$'
let g:ctrlp_show_hidden = 1

