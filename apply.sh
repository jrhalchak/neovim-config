#!/bin/bash
# A script to copy the configuration files into ~/.config/nvim/

DEST_DIR=~/.config/nvim/
KITTY_DEST_DIR=~/.config/kitty/

echo "Preparing to copy *.vim files to $DEST_DIR"
cp ./init.vim      $DEST_DIR/init.vim
cp ./base.vim      $DEST_DIR/base.vim
cp ./plugins.vim   $DEST_DIR/plugins.vim
cp ./theme.vim     $DEST_DIR/theme.vim
echo "*.vim files copied to $DEST_DIR"

echo "Preparing to copy kitty theme to $KITTY_DEST_DIR"
cp ./kitty-theme.conf $KITTY_DEST_DIR/theme.conf
echo "kitty-theme.conf copied to $KITTY_DEST_DIR/theme.conf"
