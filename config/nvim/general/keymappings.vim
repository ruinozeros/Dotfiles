
" jj into NORMAL mode
inoremap jj <esc>

" Toggle side views
nmap <C-t> :TagbarToggle<CR>
nmap <C-o> :NERDTreeToggle<CR>

" Tab operations
nnoremap tj gT
nnoremap tk gt
nnoremap to :tabnew<Space>
nnoremap tc :tabclose<Enter>

" Ctrl+s for saving
nnoremap <silent> <C-S>         :update<CR>
vnoremap <silent> <C-S>         <C-C>:update<CR>
inoremap <silent> <C-S>         <C-O>:update<CR>
