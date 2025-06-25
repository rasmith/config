#!/usr/bin/env bash

VIM_DIR=$HOME/.vim
echo "Setting up in home directory:$HOME..."
echo "Creating directories..."
mkdir -p $VIM_DIR/autoload $VIM_DIR/backup
echo "Download and install vim plug..."
curl -LHO https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim > $VIM_DIR/autoload/plug.vim
echo "Download .vimrc..."
curl -LHO https://raw.githubusercontent.com/rasmith/config/refs/heads/main/.vimrc  > $HOME/.vimrc
echo "Download .tmux.conf..."
curl -LHO https://raw.githubusercontent.com/rasmith/config/refs/heads/main/.tmux.conf  > $HOME/.tmux.conf
echo "Install vim plug in vim..."
vim +'PlugInstall --sync' +qa
echo "Done."
