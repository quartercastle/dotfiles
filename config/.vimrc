set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'
Plugin 'editorconfig/editorconfig-vim'

call vundle#end()            " required
filetype plugin indent on    " required

syntax on

execute pathogen#infect()
call pathogen#helptags()

set number
set nowrap

let g:javascript_plugin_jsdoc = 1

let g:airline_theme='onedark'
colorscheme one
set background=dark

highlight Normal ctermbg=NONE
highlight nonText ctermbg=NONE

autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif
let NERDTreeShowHidden=1

map <C-b> :NERDTreeToggle<CR>
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>
