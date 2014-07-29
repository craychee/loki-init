#! /bin/bash

set -ex

vimdir=`dirname $0`
mkdir -p $vimdir/bundle
mkdir -p $vimdir/tmp/{undo,backup,swap}
if [[ ! -d $vimdir/bundle/vundle ]]
then
  git clone https://github.com/gmarik/Vundle.vim.git ~/.vim/bundle/Vundle.vim
fi
vim +BundleInstall +qall
