filetype plugin indent on
syntax on

set encoding=utf-8
set hidden

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
set nobackup
set nowritebackup

set title
set cmdheight=2
set laststatus=2
set wildmenu
set showcmd

set smartcase
set hlsearch
set incsearch

inoremap { {}<LEFT>
inoremap ( ()<LEFT>

call plug#begin('~/.vim/plugged')
    Plug 'rust-lang/rust.vim'
    Plug 'neoclide/coc.nvim', {'branch': 'release'}
call plug#end()

autocmd BufWritePre * :%s/\s\+$//ge

" Rust
let g:rustfmt_autosave = 1

" coc.nvim

" Use tab for trigger completion with characters ahead and navigate.
" NOTE: Use command ':verbose imap <tab>' to make sure tab is not mapped by
" other plugin before putting this into your config.
inoremap <silent><expr> <TAB>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<TAB>" :
      \ coc#refresh()
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"

" Make <CR> auto-select the first completion item and notify coc.nvim to
" format on enter, <cr> could be remapped by other vim plugin
inoremap <silent><expr> <cr> pumvisible() ? coc#_select_confirm()
                              \: "\<C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>"

" GoTo code navigation.
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)
