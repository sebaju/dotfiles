syntax on

set virtualedit=onemore
set noerrorbells
set tabstop=4 softtabstop=4
set smartindent
set nu
set nowrap
set noswapfile
set incsearch
set showcmd
set lazyredraw
set showmatch
set foldenable
set foldlevelstart=10
nnoremap <space> za
set foldmethod=indent

colorscheme tn

call plug#begin('~/.vim/plugged')

Plug 'tpope/vim-surround'
Plug 'tpope/vim-fugitive'
Plug 'mattn/emmet-vim'
Plug 'jiangmiao/auto-pairs'
Plug 'ap/vim-css-color'
Plug 'nathanaelkane/vim-indent-guides'
Plug 'flazz/vim-colorschemes'

call plug#end()
