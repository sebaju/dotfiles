syntax on

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

call plug#begin('~/.vim/plugged')

Plug 'tpope/vim-surround'
Plug 'tpope/vim-fugitive'
Plug 'davidhalter/jedi-vim'
Plug 'mattn/emmet-vim'
Plug 'jiangmiao/auto-pairs'
Plug 'ervandew/supertab'
Plug 'ap/vim-css-color'
Plug 'nathanaelkane/vim-indent-guides'
Plug 'flazz/vim-colorschemes'
Plug 'xolox/vim-misc'
Plug 'xolox/vim-notes'

call plug#end()
