" auto-install vim-plug
if empty(glob('~/.config/nvim/autoload/plug.vim'))
  silent !curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  "autocmd VimEnter * PlugInstall
  autocmd VimEnter * PlugInstall | source $MYVIMRC
endif

call plug#begin('~/.config/nvim/autoload/plugged')
    " Status bar
    Plug 'itchyny/lightline.vim'
    " Tag bar (like outline in eclipse IDE)
    Plug 'majutsushi/tagbar'
    " Better Comments
    Plug 'tpope/vim-commentary'
    " icons in vim
    Plug 'ryanoasis/vim-devicons'
    " Text Navigation
    Plug 'unblevable/quick-scope'
    " Vim Wiki
    Plug 'vimwiki/vimwiki'
    " highlight current word
    Plug 'rrethy/vim-illuminate'
    " Easymotion
    Plug 'easymotion/vim-easymotion'
    " Surround
    Plug 'tpope/vim-surround'
    " Auto pairs for '(' '[' '{'
    Plug 'jiangmiao/auto-pairs'
    " Closetags
    Plug 'alvan/vim-closetag'
    " Themes
    Plug 'christianchiarulli/nvcode-color-schemes.vim'
    " Intellisense
    Plug 'neoclide/coc.nvim', {'branch': 'release'}
    " FZF
    Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
    Plug 'yuki-ycino/fzf-preview.vim', { 'branch': 'release', 'do': ':UpdateRemotePlugins' }
    Plug 'junegunn/fzf.vim'
    Plug 'jremmen/vim-ripgrep'
    " Git
    Plug 'airblade/vim-gitgutter'
    " Start Screen
    Plug 'mhinz/vim-startify'
    " See what keys do like in emacs
    Plug 'liuchengxu/vim-which-key'
    " Snippets
    Plug 'honza/vim-snippets'
    Plug 'mattn/emmet-vim'
    " Rainbow brackets
    Plug 'luochen1990/rainbow'
    " Calendar
    Plug 'mattn/calendar-vim'
    " File Tree
    Plug 'preservim/nerdtree'
    " Colorizer for hex color codes
    Plug 'norcalli/nvim-colorizer.lua'
    " Color theme
    Plug 'joshdick/onedark.vim'
    " Intent lines
    Plug 'Yggdroot/indentLine'

    call plug#end()

