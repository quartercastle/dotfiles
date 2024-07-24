augroup ft_go
    autocmd!
    autocmd Syntax go syn match goFunction "\<[a-zA-Z_][a-zA-Z_0-9]*\>\s*("me=e-1
    autocmd Syntax go syn match goConstOverride "const\s*("me=e-1
    autocmd Syntax go syn match goImportOverride "import\s*("me=e-1
    autocmd Syntax go syn match goVarOverride "var\s*("me=e-1
    autocmd Syntax go syn match goBuiltinsOverride "new\|divisor\|real"me=e-1
    autocmd Syntax go hi goParamName ctermfg=blue
    autocmd Syntax go hi goConstOverride ctermfg=magenta
    autocmd Syntax go hi goConst ctermfg=magenta
    autocmd Syntax go hi goVarOverride ctermfg=magenta
    autocmd Syntax go hi goVar ctermfg=magenta
    autocmd Syntax go hi goImportOverride ctermfg=magenta
    autocmd Syntax go hi goImport ctermfg=magenta
    autocmd Syntax go hi goFloats ctermfg=magenta
    autocmd Syntax go hi goSignedInts ctermfg=magenta
    autocmd Syntax go hi goUnsignedInts ctermfg=magenta
    autocmd Syntax go hi goComplexes ctermfg=magenta
    autocmd Syntax go hi goBoolean ctermfg=173 guifg=#d19a66
    autocmd Syntax go hi goDeclType ctermfg=magenta
    autocmd Syntax go hi goBuiltins ctermfg=blue
    autocmd Syntax go hi goTodo ctermfg=magenta
    autocmd Syntax go hi goBuiltinsOverride ctermfg=white
    autocmd Syntax go hi Constant ctermfg=173 guifg=#d19a66
augroup end
