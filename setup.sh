#!/bin/bash
#Author: Romain Goffe
#Date: 07/12/2010
#Description: setup configuration files in home directory
#todo el-get 

cp bashrc $HOME/.bashrc
source $HOME/.bashrc
cp gitconfig $HOME/.gitconfig
cp face $HOME/.face

#rename home directories
cp user-dirs.dirs $HOME/.config/ 

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

#inkscape
mkdir -p $HOME/.config/inkscape/extensions
cp inkscape/*.* $HOME/.config/inkscape/extensions

#retrieve git repo
cd $HOME
mkdir $HOME/git && cd $HOME/git
#public
git clone http://github.com/crep4ever/songbook-client.git
git clone http://github.com/crep4ever/songbook-documentation.git
git clone http://github.com/crep4ever/songbook-gedit-mode.git
git clone http://github.com/crep4ever/songbook-emacs-mode.git
git clone http://github.com/crep4ever/cv.git
git clone http://github.com/crep4ever/biblio.git
git clone http://github.com/crep4ever/latex-thesis.git
git clone git://git.lohrun.net/songbook.git
#private
git clone http://github.com/crep4ever/pyramid.git
git clone http://github.com/crep4ever/doc.git
git clone http://github.com/crep4ever/thesis.git

#make a few links
cd $HOME
ln -s git/songbook songbook
ln -s git/songbook-client songbook-client

#install songbook modes
mkdir -p $HOME/.local/share/gtksourceview-2.0/language-specs/
mkdir -p $HOME/.local/share/mime/packages/
cp git/songbook-emacs-mode/songbook.el $HOME/.config/emacs
cp git/songbook-gedit-mode/songbook.lang  $HOME/.local/share/gtksourceview-2.0/language-specs
cp git/songbook-gedit-mode/songbook.xml  $HOME/.local/share/mime/packages
