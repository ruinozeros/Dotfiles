syntax on
set nocompatible              " be iMproved, required
filetype off                  " required

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'

" Plugins:
Plugin 'vimwiki/vimwiki'
Plugin 'mattn/calendar-vim'
Plugin 'majutsushi/tagbar'
Plugin 'airblade/vim-gitgutter'
Plugin 'preservim/nerdtree'
Plugin 'itchyny/lightline.vim'
Plugin 'junegunn/fzf'
Plugin 'junegunn/fzf.vim'
Plugin 'terryma/vim-multiple-cursors'
Plugin 'SirVer/ultisnips'                       " snippet engine
Plugin 'honza/vim-snippets'                     " collection of snippets
Plugin 'ycm-core/YouCompleteMe'
Plugin 'vim-syntastic/syntastic'                " syntax checks
Plugin 'dylanaraps/wal.vim'                     " wallpaper scheme

call vundle#end()                               " required
filetype plugin indent on                       " required

" Spaces and Tabs
set tabstop=4
set shiftwidth=4
set expandtab
set autoindent

" Behaviour
set nowrap
set showcmd
set relativenumber
set mouse=a
set colorcolumn=80

" Colorscheme
colorscheme wal

" Toggle side views
nmap <C-t> :TagbarToggle<CR>
nmap <C-o> :NERDTreeToggle<CR>

" shortkeys
nmap <C-,> :Files<CR>
inoremap jj <esc>
" move between windows with Ctrl + j/k/l/h
nnoremap <C-j> <C-W>j
nnoremap <C-k> <C-W>k
nnoremap <C-l> <C-W>l
nnoremap <C-h> <C-W>h
" move between tabs with g + j/k
nnoremap gj gT
nnoremap gk gt

:command Hex %!xxd
:command Unhex %!xxd -r

" Plugin Settings
let g:vimwiki_list = [{'path': '~/Docs/vimwiki/'}]

let g:tagbar_type_vimwiki = {
          \   'ctagstype':'vimwiki'
          \ , 'kinds':['h:header']
          \ , 'sro':'&&&'
          \ , 'kind2scope':{'h':'header'}
          \ , 'sort':0
          \ , 'ctagsbin':'$HOME/.vim/bundle/vimwiki/utils/vwtags.py'
          \ , 'ctagsargs': 'default'
          \ }

let g:UltiSnipsExpandTrigger="<c-j>"
let g:UltiSnipsJumForwardTrigger="<c-b>"
let g:UltiSnipsJumpBackwardTrigger="<c-z>"

"autocmd vimenter * NERDTree     
