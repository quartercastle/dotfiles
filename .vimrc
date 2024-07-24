" General configuration
set nocompatible
set noshowmode
set noswapfile
set nospell
set number
set nowrap
set cursorline
set hlsearch
set expandtab
set autoindent
set formatoptions=tcqro
set textwidth=80
set splitright
set splitbelow
set clipboard=unnamed

source ~/.quartercastle/vim/plug.vim
source ~/.quartercastle/vim/aliases.vim
source ~/.quartercastle/vim/theme.vim
source ~/.quartercastle/vim/syntax/go.vim

" Press Space to turn off highlighting and clear any message already displayed.
nnoremap <silent> <Space> :nohlsearch<Bar>:echo<CR>

" goto file under cursor
nnoremap gf <C-W>v gf

" Set tabs to ident as 4 spaces in width
set tabstop=4
set softtabstop=0 noexpandtab
set shiftwidth=4
set laststatus=2

:let mapleader = "§"

" Configure nerd commenter
let g:NERDCreateDefaultMappings = 1
let g:NERDSpaceDelims = 1
let g:NERDCommentEmptyLines = 1

" Configure nerd tree
let NERDTreeShowHidden=1
let NERDTreeIgnore = ['\.pyc$', '\.DS_Store$', '\.git$', '\.serverless', '\.pytest_cache']
map <C-b> :NERDTreeToggle<CR>
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

" Setup editorconfig
let g:EditorConfig_exclude_patterns = ['fugitive://.*', 'scp://.*']

" CTRL-P
let g:ctrlp_working_path_mode = 'mru'
let g:ctrlp_custom_ignore = '\v[\/](\.(git|hg|svn|bzr|serverless|pytest_cache)|node_modules)$'
let g:ctrlp_show_hidden = 1

" Go settings
let g:go_fmt_command = "goimports"
let g:go_fmt_autosave = 1
let g:go_highlight_diagnostic_warnings = 0
let g:go_doc_url = "https://pkg.go.dev"

