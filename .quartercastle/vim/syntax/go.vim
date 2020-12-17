augroup ft_go
    autocmd!
    autocmd Syntax go syn match goFunction "\<[a-zA-Z_][a-zA-Z_0-9]*\>\s*("me=e-1
    autocmd Syntax go syn match goConstOverride "const\s*("me=e-1
    autocmd Syntax go syn match goImportOverride "import\s*("me=e-1
    autocmd Syntax go syn match goVarOverride "var\s*("me=e-1
    autocmd Syntax go hi goParamName ctermfg=blue
    autocmd Syntax go hi goConstOverride ctermfg=magenta cterm=none
    autocmd Syntax go hi goConst ctermfg=magenta cterm=none
    autocmd Syntax go hi goVarOverride ctermfg=magenta cterm=none
    autocmd Syntax go hi goVar ctermfg=magenta cterm=none
    autocmd Syntax go hi goImportOverride ctermfg=magenta cterm=none
    autocmd Syntax go hi goImport ctermfg=magenta cterm=none
    autocmd Syntax go hi goFloats ctermfg=magenta cterm=none
    autocmd Syntax go hi goSignedInts ctermfg=magenta cterm=none
    autocmd Syntax go hi goUnsignedInts ctermfg=magenta cterm=none
    autocmd Syntax go hi goComplexes ctermfg=magenta cterm=none
    autocmd Syntax go hi goBoolean ctermfg=173 guifg=#d19a66
    autocmd Syntax go hi goDeclType ctermfg=magenta cterm=none
    autocmd Syntax go hi goBuiltins ctermfg=blue cterm=none
    autocmd syntax go hi SpellBad term=none cterm=none ctermbg=none gui=none guibg=none guisp=none
augroup end
