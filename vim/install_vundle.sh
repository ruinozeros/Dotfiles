#!/bin/zsh

success=0

if [ -d $HOME/.vim/bundle/Vundle.vim ]; then
	echo Vundle already installed!
	success=0
else
	git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
	success=$?
fi

return $success
