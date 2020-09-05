call plug#begin('~/.vim/plugged')

Plug 'junegunn/vim-easy-align'
Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
Plug 'fatih/vim-go'
Plug 'itchyny/lightline.vim'
Plug 'sheerun/vim-polyglot'
Plug 'editorconfig/editorconfig-vim'
Plug 'rakr/vim-one'
Plug 'joshdick/onedark.vim'
Plug 'tpope/vim-fugitive'
Plug 'ctrlpvim/ctrlp.vim'

call plug#end()

" General configuration
set nocompatible
set noshowmode
set noswapfile
set number
set nowrap
set cursorline
set hlsearch
set expandtab
set formatoptions=tcqro
set textwidth=80

" Set up layout and colors
syntax on
colorscheme one
let g:lightline = { 'colorscheme': 'onedark' }
let s:palette = g:lightline#colorscheme#{g:lightline.colorscheme}#palette
let s:palette.normal.middle = [ [ 'none', 'none', 'none', 'none' ] ]
let s:palette.inactive.middle = s:palette.normal.middle
let s:palette.tabline.middle = s:palette.normal.middle
highlight Normal ctermbg=none
highlight nonText ctermbg=none
highlight MatchParen cterm=none ctermbg=yellow ctermfg=232 cterm=bold
highlight Search cterm=bold ctermfg=none ctermbg=234
highlight Visual ctermbg=234 cterm=bold
highlight VertSplit ctermfg=black
highlight CursorLine ctermbg=black cterm=bold
highlight CursorLineNR ctermbg=black cterm=bold
highlight StatusLine ctermbg=none

" Press Space to turn off highlighting and clear any message already displayed.
nnoremap <silent> <Space> :nohlsearch<Bar>:echo<CR>

" Set tabs to ident as 4 spaces in width
set tabstop=4
set softtabstop=0 noexpandtab
set shiftwidth=4
set laststatus=2

" Configure nerd tree
let NERDTreeShowHidden=1
let NERDTreeIgnore = ['\.pyc$', '\.DS_Store$', '\.git$']
map <C-b> :NERDTreeToggle<CR>
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

" Setup editorconfig
let g:EditorConfig_exclude_patterns = ['fugitive://.*', 'scp://.*']

" Go settings
let g:go_fmt_command = "goimports"
let g:go_fmt_autosave = 1
