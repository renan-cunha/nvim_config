set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.config/nvim/bundle/Vundle.vim
call vundle#begin('~/.config/nvim/bundle')
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
Plugin 'jiangmiao/auto-pairs'
Plugin 'davidhalter/jedi-vim'
Plugin 'scrooloose/syntastic'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'cocopon/iceberg.vim'
" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line


"jedi vim
autocmd FileType python setlocal completeopt-=preview
let g:jedi#show_call_signatures = "2"
let g:jedi#show_call_signatures_delay = "0"

"general
syntax enable
colorscheme iceberg
set number
set backspace=eol,start,indent
set whichwrap+=<,>,h,l
"let b:ale_linters = ['flake8', 'mypy']
"let g:ale_linters_explicit = 1

"airline
let g:airline_section_y=''
let g:airline_section_z=''
let g:airline_skip_empty_sections = 1

"syntastic
let g:syntastic_python_checkers = ['flake8', 'mypy']


"Map tab transitions
no <C-Down> <C-w>j 
"switching to below window 
no <C-Up> <C-w>k 
"switching to above window
no <C-Right> <C-w>l 
"switching to right window 
no <C-Left> <C-w>h 
"switching to left window
" columbar
set colorcolumn=80

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Text, tab and indent related
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Use spaces instead of tabs
set expandtab

" Be smart when using tabs ;)
set smarttab

" 1 tab == 4 spaces
set shiftwidth=4
set tabstop=4

" Linebreak on 500 characters
set lbr
set tw=80

set ai "Auto indent
set si "Smart indent
set wrap "Wrap lines

vnoremap <C-c> "+y

set guicursor="0"

" autocomplete path
set autochdir
