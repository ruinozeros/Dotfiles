

" Spaces and Tabs
" =============================================================================
set tabstop=4
set shiftwidth=4
set expandtab
set autoindent

" in makefiles, don't expand tabs to spaces
autocmd FileType make set noexpandtab shiftwidth=8 softtabstop=0

" set list
set listchars=tab:→\ ,space:·,nbsp:␣,precedes:«,extends:»
hi SpecialKey ctermfg=66 guifg=#649A9A

" General
" =============================================================================
set nowrap
set showcmd
set mouse=a
set colorcolumn=80
set termguicolors

" Line numbers
" =============================================================================
:set number relativenumber
:augroup numbertoggle
:  autocmd!
:  autocmd BufEnter,FocusGained,InsertLeave * set relativenumber
:  autocmd BufLeave,FocusLost,InsertEnter   * set norelativenumber
:augroup END

"" show different cursor in insert and normal mode
"if has("autocmd")
"  au VimEnter,InsertLeave * silent execute '!echo -ne "\e[2 q"' | redraw!
"  au InsertEnter,InsertChange *
"    \ if v:insertmode == 'i' |
"    \   silent execute '!echo -ne "\e[ q"' | redraw! |
"    \ elseif v:insertmode == 'r' |
"    \   silent execute '!echo -ne "\e[4 q"' | redraw! |
"    \ endif
"  au VimLeave * silent execute '!echo -ne "\e[ q"' | redraw!
"endif
"
augroup myCmds
au!
autocmd VimEnter * silent !echo -ne "\e[2 q"
autocmd VimLeave * silent !echo -ne "\e[1 q"
augroup END

