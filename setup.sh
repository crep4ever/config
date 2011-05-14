#!/bin/bash
#Author: Romain Goffe
#Date: 07/12/2010
#Description: setup configuration files in home directory
#todo el-get + inkscape texttex

cp bashrc $HOME/.bashrc
source $HOME/.bashrc
cp gitconfig $HOME/.gitconfig
cp face $HOME/.face

#mplayer
mkdir -p $HOME/.mplayer/
cp mplayer $HOME/.mplayer/config

#emacs
cp emacs $HOME/.emacs
mkdir -p $HOME/.config/
rm -rf $HOME/.config/emacs/
rm -f $HOME/.config/emacs
cp -r emacs.d/ $HOME/.config/
mv $HOME/.config/emacs.d/ $HOME/.config/emacs

#songbook
mkdir -p $HOME/.local/share/gtksourceview-2.0/language-specs/
mkdir -p $HOME/.local/share/mime/packages/
cp songbook/songbook.el $HOME/.config/emacs
cp songbook/songbook.lang  $HOME/.local/share/gtksourceview-2.0/language-specs
cp songbook/songbook.xml  $HOME/.local/share/mime/packages
