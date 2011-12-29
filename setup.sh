#!/bin/bash
#Author: Romain Goffe
#Date: 07/12/2010
#Description: setup configuration files in home directory

#setup local directories
cd $HOME
mkdir .local
mkdir -p .local/bin
mkdir -p .local/src
mkdir -p .local/include
mkdir -p .local/lib

#Dot files
cp -f bashrc $HOME/.bashrc
source $HOME/.bashrc
cp -f gitconfig $HOME/.gitconfig
cp -f face $HOME/.face
cp -f git-unmerged.rb $HOME/.local

#rename home directories
cp user-dirs.dirs $HOME/.config/ 

#mplayer
mkdir -p $HOME/.mplayer/
cp -f mplayer $HOME/.mplayer/config

#emacs
cp -f emacs $HOME/.emacs
mkdir -p $HOME/.config/
rm -rf $HOME/.config/emacs/
rm -f $HOME/.config/emacs
cp -rf emacs.d/ $HOME/.config/
mv -f $HOME/.config/emacs.d/ $HOME/.config/emacs
mv -f $HOME/.config/emacs/emacs.desktop $HOME/.config/autostart/

#inkscape
mkdir -p $HOME/.config/inkscape/extensions
cp -f inkscape/*.* $HOME/.config/inkscape/extensions

if [ $1="--git" ]
then
#retrieve git repo
    cd $HOME
    mkdir -p $HOME/git
    cd $HOME/git
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
    
#configure remotes
    cd $HOME/git/songbook
    git remote add crep ssh://crep@lohrun.net/~crep/songbook.git
    cd $HOME/git/songbook-client
    git remote add lohrun http://github.com/lohrun/songbook-client.git
    git remote add carreau http://github.com/Carreau/songbook-client.git
fi

#retieve and local install of qcachegrind
cd $HOME/.local/src
svn co svn://anonsvn.kde.org/home/kde/trunk/KDE/kdesdk/kcachegrind kcachegrind
cd kcachegrind/qcachegrind/
qmake
make -j 3
cp -f qcachegrind $HOME/.local/bin

#install songbook modes
mkdir -p $HOME/.local/share/gtksourceview-3.0/language-specs/
mkdir -p $HOME/.local/share/mime/packages/
cp -f git/songbook-emacs-mode/songbook.el $HOME/.config/emacs
cp -f git/songbook-gedit-mode/songbook.lang  $HOME/.local/share/gtksourceview-2.0/language-specs
cp -f git/songbook-gedit-mode/songbook.xml  $HOME/.local/share/mime/packages
