#!/bin/zsh

# Absolute path to this script, e.g. /home/user/bin/foo.sh
SCRIPT=$(readlink -f "$0")
# Absolute path this script is in, thus /home/user/bin
SCRIPTPATH=$(dirname "$SCRIPT")

success=0

if [ -d $HOME/.oh-my-zsh ]; then
    echo oh-my-zsh is already installed!
else
    sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
    success=$?
fi

return $success
