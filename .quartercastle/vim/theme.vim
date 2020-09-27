" Color support
if (empty($TMUX))
	if (has("nvim"))
 		"For Neovim 0.1.3 and 0.1.4 < https://github.com/neovim/neovim/pull/2198 >
		let $NVIM_TUI_ENABLE_TRUE_COLOR=1
	endif
	"For Neovim > 0.1.5 and Vim > patch 7.4.1799 < https://github.com/vim/vim/commit/61be73bb0f965a895bfb064ea3e55476ac175162 >
	"Based on Vim patch 7.4.1770 (`guicolors` option) < https://github.com/vim/vim/commit/8a633e3427b47286869aa4b96f2bfc1fe65b25cd >
	" < https://github.com/neovim/neovim/wiki/Following-HEAD#20160511 >
	if (has("termguicolors"))
 		set termguicolors
	endif
endif

set t_Co=256

let s:uname = system("uname -s")

if s:uname == "Darwin\n"
	syntax on
  colorscheme one
  let g:lightline = { 'colorscheme': 'onedark' }
	let s:palette = g:lightline#colorscheme#{g:lightline.colorscheme}#palette
	let s:palette.normal.middle = [ [ 'none', 'none', 'none', 'none' ] ]
	let s:palette.inactive.middle = s:palette.normal.middle
	let s:palette.tabline.middle = s:palette.normal.middle
  highlight Normal ctermbg=none
  highlight nonText ctermbg=none
  highlight MatchParen cterm=none ctermbg=none ctermfg=red cterm=bold
  highlight Search cterm=bold ctermfg=none ctermbg=234
  highlight Visual ctermbg=234 cterm=bold
  highlight VertSplit ctermfg=black
  highlight CursorLine ctermbg=black cterm=bold
  highlight CursorLineNR ctermbg=black cterm=bold
  highlight StatusLine ctermbg=none
else
	set background=dark
  syntax on
  colorscheme one
	let g:lightline = { 'colorscheme': 'one' }
endif



