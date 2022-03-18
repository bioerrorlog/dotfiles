filetype plugin indent on
syntax on
set encoding=utf-8
set clipboard=unnamedplus

set expandtab
set tabstop=4
set shiftwidth=4
set softtabstop=4
set autoindent
set smartindent

set listchars=tab:>.
set list

set number
set relativenumber

set noswapfile

autocmd BufWritePre * :%s/\s\+$//ge

set title
set cmdheight=2
set laststatus=2
set wildmenu

call plug#begin('~/.vim/plugged')
    Plug 'rust-lang/rust.vim'
call plug#end()

