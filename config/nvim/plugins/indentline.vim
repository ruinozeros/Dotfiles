
" disable by default
" (because i had problems with the vimwiki plugin)
let g:indentLine_enabled = 0 

autocmd FileType c,cpp,python let g:indentLine_enabled = 1

" let g:indentLine_char_list = ['|', '¦', '┆', '┊']
let g:indentLine_char_list = ['¦']
