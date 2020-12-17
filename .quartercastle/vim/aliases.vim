function Documentation()
  :GoDoc
  :set ft=go
endfunction

command! -nargs=0 Gt GoTest
command! -nargs=0 Gd GoDef
command! -nargs=0 Gh exec Documentation()
command! -nargs=0 Ghb GoDocBrowser


