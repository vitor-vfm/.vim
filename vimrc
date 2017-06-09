" Plug
call plug#begin()

Plug 'ctrlpvim/ctrlp.vim'
Plug 'tpope/vim-eunuch'
Plug 'tpope/vim-dispatch'
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-surround'
Plug 'ervandew/supertab'
Plug 'majutsushi/tagbar'
" Plug 'scrooloose/syntastic'
Plug 'scrooloose/nerdtree'
Plug 'wellle/targets.vim'
Plug 'michaeljsmith/vim-indent-object'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'ludovicchabant/vim-gutentags'
Plug 'jpo/vim-railscasts-theme'
Plug 'ntpeters/vim-better-whitespace'

call plug#end()
" end Plug

" General settings
colorscheme railscasts

syntax enable

set number
set hidden

set autoindent
set tabstop=4
set softtabstop=4
set shiftwidth=4
set expandtab

"" Use a backup directory in .vim for .swp files
set backupdir=$HOME/.vim/tmp_backup//
set directory=$HOME/.vim/tmp_backup//

set clipboard=unnamedplus

"" j and k go through screen lines, not actual lines
nnoremap j gj
nnoremap k gk

"" Make the behaviour of Y consistent with D and C (from cursor to end of line)
nnoremap Y y$

let mapleader="\<Space>"

"" Make .pl prolog files instead of perl
let g:filetype_pl="prolog"

"" Personal autocmds
augroup myvimrc
    autocmd!
    """ Open quickfix window after :make, :grep, etc
    autocmd QuickFixCmdPost * copen
augroup end

"  If it's installed, use Silver Searcher instead of Grep
if executable("ag")
    set grepprg=ag
endif

" end General settings

" Syntastic
let g:syntastic_mode_map = {"passive_filetypes": ["c"]}
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
let g:syntastic_c_compiler_options = "-Wall"
let g:syntastic_cpp_compiler = "clang++"
let g:syntastic_cpp_compiler_options = "-Wall -std=c++11"
" end Syntastic

" vim-airline
set laststatus=2
let g:airline#extensions#tabline#enabled = 1
let g:airline_left_sep = ' '
let g:airline_left_alt_sep = '|'
let g:airline_right_sep = ' '
let g:airline_right_alt_sep = '|'
" end vim-airline

" NERDTree
map <C-n> :NERDTreeToggle<CR>
" end NERDTree
