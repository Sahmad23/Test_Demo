" Set Compatibility to Vim only
set nocompatible

filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
" call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
Plugin 'vim-airline/vim-airline'
Plugin 'preservim/nerdtree'
Plugin 'dense-analysis/ale'
Plugin 'vim-airline/vim-airline-themes'
" Plugin 'jmcantrell/vim-virtualenv'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required


" set pythonthreedll='~\\scoop\\apps\\python\\current\\python310.dll'
set pythonthreedll=D:\\Apps\\Python\\python311.dll
" set pythonthreehome='~\\scoop\\apps\\python\\current\\'
set pythonthreehome=D:\\Apps\\Python

" Show line numbers
set number

" Automatically wrap text beyond screen length
set wrap
set showmode
set showcmd
set showmatch
set cursorline
set cursorcolumn

" Status bar
set laststatus=2

" Encoding
set encoding=utf-8

syntax on

" set tabs to have 4 spaces
set ts=4

" indent when moving to the next line while writing code
set autoindent

" expand tabs into spaces
set expandtab

" when using the >> or << commands, shift lines by 4 spaces
set shiftwidth=4

" show a visual line under the cursor's current line
set cursorline

" show the matching part of the pair for [] {} and ()
set showmatch

set t_Co=256
" colorscheme atom-dark-256
colorscheme badwolf         " awesome colorscheme

" Make the gutters darker than the background.
let g:badwolf_darkgutter = 1

" Make the tab line darker than the background.
let g:badwolf_tabline = 0
" 1 for  same color, 2 for lighter than the background and 3 for much lighter than the background

let g:airline#extensions#tabline#enabled = 1
" :let g:airline_statusline_ontop=1


set foldmethod=indent
set foldlevel=99

nmap <silent> <F2> :execute 'NERDTreeToggle ' . getcwd()<CR>
silent! map <F3> :NERDTreeFind<CR>

nnoremap <space> za

nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

au BufNewFile, BufRead *.py
	\set autoindent
	\set fileformat=unix

let python_highlight_all=1

" python with virtualenv support
" py << EOF
" import os
" import sys
" if 'VIRTUAL_ENV' in os.environ:
"   project_base_dir = os.environ['VIRTUAL_ENV']
"   activate_this = os.path.join(project_base_dir, 'bin/activate_this.py')
"   execfile(activate_this, dict(__file__=activate_this))
" EOF

" Place Virtual Env at beginning of status line
" set statusline^=%{virtualenv#statusline()}

" Place Virtual Env at end of status line
" set statusline+=%{virtualenv#statusline()}
