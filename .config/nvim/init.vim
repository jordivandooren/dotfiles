filetype indent off
set autoindent
set expandtab
set number
set relativenumber
set background=dark

nnoremap ; <S-A>;<Esc>
inoremap ,,psv public static void
inoremap ,,sop System.out.println(

" plugins (vim-plug)
call plug#begin('~/.local/share/nvim/plugged')
Plug 'w0rp/ale'
Plug 'lervag/vimtex'
" Plug 'altercation/vim-colors-solarized'
call plug#end()

" needed for vimtex on nvim
let g:vimtex_compiler_progname = 'nvr'

execute pathogen#infect()
colorscheme solarized

" language server protocol registrations
au User lsp_setup call lsp#register_server({
    \ 'name': 'eclipse.jdt.ls',
    \ 'cmd': {server_info->[
    \     'java',
    \     '-Declipse.application=org.eclipse.jdt.ls.core.id1',
    \     '-Dosgi.bundles.defaultStartLevel=4',
    \     '-Declipse.product=org.eclipse.jdt.ls.core.product',
    \     '-Dlog.level=ALL',
    \     '-noverify',
    \     '-Dfile.encoding=UTF-8',
    \     '-Xmx1G',
    \     '-jar',
    \     expand('~/lsp/eclipse.jdt.ls/plugins/org.eclipse.equinox.launcher_1.5.300.v20190213-1655.jar'),
    \     '-configuration',
    \     expand('~/lsp/eclipse.jdt.ls/config_linux'),
    \     '-data',
    \     getcwd()
    \ ]},
    \ 'whitelist': ['java'],
    \ })
