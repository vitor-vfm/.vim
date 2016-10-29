" General settings
colorscheme delek

syntax enable

set number
set hidden

set autoindent
set tabstop=4
set softtabstop=4
set shiftwidth=4
set expandtab

set backupdir=~/.vim/tmp_backup

nnoremap j gj
nnoremap k gk

nnoremap Y y$
" end General settings

" Plug
call plug#begin()

Plug 'ctrlpvim/ctrlp.vim'
Plug 'tpope/vim-eunuch'
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-fugitive'
Plug 'majutsushi/tagbar'
Plug 'scrooloose/syntastic'
Plug 'wellle/targets.vim'
Plug 'michaeljsmith/vim-indent-object'

call plug#end()
" end Plug


" Syntastic
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
let g:syntastic_c_compiler_options = "-Wall"
" end Syntastic
