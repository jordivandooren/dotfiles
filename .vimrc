" required for vundle
set nocompatible
filetype off
set rtp+=~/.vim/bundle/Vundle.vim

" plugins via vundle
call vundle#begin()
  Plugin 'VundleVim/Vundle.vim'
  Plugin 'jeffkreeftmeijer/vim-dim'
  Plugin 'scrooloose/nerdtree'
  Plugin 'kien/ctrlp.vim'
  Plugin 'morhetz/gruvbox'
  Plugin 'prabirshrestha/async.vim'
  Plugin 'prabirshrestha/vim-lsp'
  Plugin 'mattn/vim-lsp-settings'
call vundle#end()

" regular settings
filetype plugin indent on

set background=dark
colorscheme dim

syntax on
set autoindent
set expandtab
set number
set relativenumber
set foldmethod=indent
set foldlevel=99
set encoding=utf-8

" for powerline
set laststatus=2
