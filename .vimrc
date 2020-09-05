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

source ~/.quartercastle/vim/plug.vim
source ~/.quartercastle/vim/aliases.vim
source ~/.quartercastle/vim/theme.vim
source ~/.quartercastle/vim/syntax/go.vim

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

" CTRL-P
let g:ctrlp_working_path_mode = 'mru'
let g:ctrlp_custom_ignore = '\v[\/]\.(git|hg|svn|bzr)$'
let g:ctrlp_show_hidden = 1


" Go settings
let g:go_fmt_command = "goimports"
let g:go_fmt_autosave = 1

