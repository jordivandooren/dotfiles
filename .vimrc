" plugin management
call pathogen#infect()

" settings
filetype plugin indent on
syntax enable
set autoindent
set number relativenumber
set expandtab
set encoding=utf-8
set smartcase
set smarttab
set backspace=indent,eol,start
set hlsearch incsearch
set background=dark
set ttimeout ttimeoutlen=100
set ruler
set showcmd
set wildmenu

" for powerline 
set laststatus=2

" keybindings 
let mapleader = ","
nnoremap <leader>ev :<c-u>vsplit ~/.vimrc<cr>
nnoremap <leader>sv :<c-u>source ~/.vimrc<cr>
nnoremap <leader>he :<c-u>help 
nnoremap <leader>nh :<c-u>nohl<cr>
nnoremap <leader>db :<c-u>debug<cr>

" lsp bindings
nmap <leader>ldef <Plug>(lsp-definition)
nmap <leader>lref <Plug>(lsp-references)
nmap <leader>lhov <Plug>(lsp-hover)
nmap <leader>lren <Plug>(lsp-rename)

" r
iabbrev arrow <-
iabbrev pipe %>%
