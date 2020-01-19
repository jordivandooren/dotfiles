" required for vundle
set nocompatible
filetype off
set rtp+=~/.vim/bundle/Vundle.vim

" plugins via vundle
call vundle#begin()
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
set encoding=utf-8
set hlsearch
set incsearch
set smartcase

" for powerline 
set laststatus=2

" keybindings 
let mapleader = ","
" edit ~/.vimrc
nnoremap <leader>ev :vsplit ~/.vimrc<cr>
" source ~/.vimrc 
nnoremap <leader>sv :source ~/.vimrc<cr>

" lsp bindings
nnoremap <leader>ldef :LspDefinition<cr>
nnoremap <leader>lref :LspReferences<cr>
nnoremap <leader>lhov :LspHover<cr>
nnoremap <leader>lren :LspRename<cr>
" java bindings
augroup filetype_java
    autocmd!
    autocmd FileType java nnoremap <buffer> <leader>; mqA;<esc>`q
    autocmd FileType java iabbrev <buffer> psvm public static void main(
augroup END 
