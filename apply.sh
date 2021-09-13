#!/bin/bash
# A script to copy the configuration files into ~/.config/nvim/

DEST_DIR=~/.config/nvim/

echo "Preparing to copy files to $DEST_DIR"

cp ./init.vim      $DEST_DIR/init.vim
cp ./base.vim      $DEST_DIR/base.vim
cp ./plugins.vim   $DEST_DIR/plugins.vim
cp ./theme.vim     $DEST_DIR/theme.vim

echo "Files copied to $DEST_DIR"
