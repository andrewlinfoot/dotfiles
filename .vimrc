set nocompatible              " be iMproved, required

call plug#begin('~/.vim/plugged')

" Main plugins
Plug 'Shougo/vimproc.vim', { 'do': 'make' }
Plug 'Valloric/YouCompleteMe', { 'do': './install.py' }
Plug 'scrooloose/nerdtree', { 'on': 'NERDTreeToggle' }

" Typescript
Plug 'leafgarland/typescript-vim'
Plug 'Quramy/tsuquyomi'

call plug#end()

set hidden
set history=100

" Whitespace
filetype indent on
set nowrap
set tabstop=2
set shiftwidth=2
set expandtab
set smartindent
set autoindent

" Remove whitespace on save
autocmd BufWritePre * :%s/\s\+$//e

" Highlight found words on search
set hlsearch

" Reopen previously opened file by double tapping Leader key
nnoremap <Leader><Leader> :e#<CR>

" Show matching parenthesis
set showmatch

" Colors
filetype on
syntax on
colorscheme Tomorrow-Night

set colorcolumn=90
set number

" Trigger youcomplete me on . in Typescript
if !exists("g:ycm_semantic_triggers")
 let g:ycm_semantic_triggers = {}
 endif
 let g:ycm_semantic_triggers['typescript'] = ['.']

