" vundle
set nocompatible
filetype off
" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'

" nerdtree
Plugin 'scrooloose/nerdtree'
Plugin 'scrooloose/syntastic'
Plugin 'Lokaltog/vim-easymotion'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

set backspace=2
set backspace=indent,eol,start
set gcr=a:blinkon0
set history=10
set ruler

set nocompatible
set noshowmode
set showmatch
set matchtime=3
set encoding=utf-8

set exrc
set secure
set number
set ruler

set hlsearch
set incsearch
set ignorecase
set smartcase
set autoindent
set shiftwidth=4
set softtabstop=4
set expandtab
set cindent
set cinkeys=0{,0},:,0#,!<Tab>,!^F

set et
set ic
set sm
set magic
set ai
set si
set nowrap

set wildmenu
set showcmd

set visualbell
set noeb vb t_vb=

" let mapleader = "\<Space>"
let mapleader=","

colorscheme desert
syntax on

nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

"nerdtree
function! StartUp()
    if 0 == argc()
        NERDTree
    end
endfunction

autocmd VimEnter * call StartUp()
" autocmd vimenter * NERDTree
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif

"syntastic
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
let g:syntastic_python_checkers=['flake8']
let g:syntastic_python_flake8_args='--max-line-length=120'
let g:syntastic_tex_checkers=['chktex']
