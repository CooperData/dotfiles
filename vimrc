set nocompatible              " required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
"
" " alternatively, pass a path where Vundle should install plugins
" "call vundle#begin('~/some/path/here')
"
" " let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'
"
" " Add all your plugins here (note older versions of Vundle used Bundle
" instead of Plugin)
"
" Color scheme
Plugin 'jnurmine/Zenburn'
Plugin 'altercation/vim-colors-solarized'

" Syntax Higlight
Plugin 'scrooloose/syntastic'

" PEP8
Plugin 'nvie/vim-flake8'
"
"
" " All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

inoremap jk <ESC>
let mapleader = "\<Space>"

filetype plugin indent on
syntax on
set encoding=utf-8

" Aesthetics
syntax enable
set background=dark
colorscheme solarized

if has('gui_running')
	set background=dark
	colorscheme solarized
else
	colorscheme zenburn
endif

let python_highlight_all=1
syntax on
au BufNewFile,BufRead *.py
    \ set tabstop=4 |
    \ set softtabstop=4 |
    \ set shiftwidth=4 |
    \ set textwidth=79 |
    \ set expandtab |
    \ set autoindent |
    \ set fileformat=unix

" line number
set nu
