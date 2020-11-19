#!/bin/zsh

# Absolute path to this script, e.g. /home/user/bin/foo.sh
SCRIPT=$(readlink -f "$0")
# Absolute path this script is in, thus /home/user/bin
SCRIPTPATH=$(dirname "$SCRIPT")

success=0

if [ -d $HOME/.oh-my-zsh ]; then
    echo oh-my-zsh is already installed!
else
    sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)" > /dev/null
    success=$?

    if [ $success -eq 0 ]; then 
        echo oh-my-zsh successfully installed!
    else 
        echo oh-my-zsh installation failed!
    fi
fi


if [ -d $HOME/.oh-my-zsh/custom/themes/powerlevel10k ]; then
    echo powerlevel10k is already installed!
else
    echo install powerlevel10k
    git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k

    success=$?
    if [ -f $HOME/.p10k.zsh ]; then
        source ~/.p10k.zsh
    fi
fi


if [ -d $HOME/.autojump ]; then
    echo autojump is already installed!
else
    echo install autojump
    git clone git://github.com/wting/autojump.git ~/autojump
    cd $HOME/autojump
    $HOME/autojump/install.py
    sudo rm -rd $HOME/autojump
fi





return $success
