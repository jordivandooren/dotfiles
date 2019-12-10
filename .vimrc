" required for vundle
set nocompatible
filetype off
set rtp+=~/.vim/bundle/Vundle.vim

" plugins via vundle
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'
Plugin 'w0rp/ale'
Plugin 'lervag/vimtex'
Plugin 'altercation/vim-colors-solarized'
Plugin 'valloric/youcompleteme'
Plugin 'vim-syntastic/syntastic'
Plugin 'nvie/vim-flake8'
Plugin 'scrooloose/nerdtree'
Plugin 'kien/ctrlp.vim'
Plugin 'vim-scripts/indentpython.vim'
Plugin 'powerline/powerline'
call vundle#end()

" regular settings
filetype plugin indent on
colorscheme solarized

syntax on
set autoindent
set expandtab
set number
set relativenumber
set background=dark
set foldmethod=indent
set foldlevel=99
set encoding=utf-8

" for powerline
set laststatus=2
