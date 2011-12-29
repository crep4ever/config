#!/bin/bash
#Author: Romain Goffe
#Date: 07/12/2010
#Description: setup personal configuration files

#Dot files
cp -f bashrc $HOME/.bashrc
source $HOME/.bashrc
cp -f gitconfig $HOME/.gitconfig
cp -f face $HOME/.face
cp -f git-unmerged.rb $HOME/.local

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


#flags
dirs_flag=false
qcachegrind_flag=false
songbook_flag=false
inkscape_flag=false
git_flag=false


while [ $# -gt 0 ]
do
    case "$1" in
	-a | --all)
	    dirs_flag=true
	    qcachegrind_flag=true
	    struegbook_flag=true
	    inkscape_flag=true
	    git_flag=true
	    break;;

	-h | --help)
	    echo "Usage: $0 [option]" >&2
	    echo " OPTIONS:"
	    echo "  --help : print this help and exit"
	    echo "  --dirs : rename standard home directories and setup .local folder"
	    echo "  --git : clone a set of git repos in $HOME/git"
	    echo "  --inkscape : a patched version of the inkscape textext extension that allows to insert LaTeX code into svg pictures"
	    echo "  --qcachegrind : checkout and compile a the qt-only version of kcachegrind for code profiling"
	    echo "  --songbook: install songbook modes for emacs and gedit"	    
	    exit;;
	    
	--dirs)
	    dirs_flag=true;;
	
	--inkscape)
	    inkscape_flag=true;;
	
	--git)
	    git_flag=true;;

	--qcachegrind)
	    qcachegrind_flag=true;;
	
	--songbook)
	    songbook_flag=true;;
	
	*) 
	    break;;
    esac
    shift 
done

if $dirs_flag
then
    echo "Setup home local directories..."
    mkdir -p $HOME/.local
    mkdir -p $HOME/.local/bin
    mkdir -p $HOME/.local/src
    mkdir -p $HOME/.local/include
    mkdir -p $HOME/.local/lib
    echo "Setup home standard directories..."
    cp user-dirs.dirs $HOME/.config/
fi

if $qcachegrind_flag
then
    echo "Installing qcachegrind..."
    cd $HOME/.local/src
    svn co svn://anonsvn.kde.org/home/kde/trunk/KDE/kdesdk/kcachegrind kcachegrind
    cd - && cd $HOME/.local/src/kcachegrind/qcachegrind/
    qmake
    make -j 3
    cp -f qcachegrind $HOME/.local/bin
    cd -
fi

if $songbook_flag
then
    echo "Installing songbook modes..."
    mkdir -p $HOME/.local/share/gtksourceview-3.0/language-specs/
    mkdir -p $HOME/.local/share/mime/packages/
    cp -f $HOME/git/songbook-emacs-mode/songbook.el $HOME/.config/emacs
    cp -f $HOME/git/songbook-gedit-mode/songbook.lang  $HOME/.local/share/gtksourceview-2.0/language-specs
    cp -f $HOME/git/songbook-gedit-mode/songbook.xml  $HOME/.local/share/mime/packages
fi

if $inkscape_flag
then
    mkdir -p $HOME/.config/inkscape/extensions
    cp -f inkscape/*.* $HOME/.config/inkscape/extensions
fi

if $git_flag
then
    echo "Retrieving git repositories..."
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
    cd -

    echo "Configuring git remotes..."
    cd $HOME/git/songbook
    git remote add crep ssh://crep@lohrun.net/~crep/songbook.git
    cd - && cd $HOME/git/songbook-client
    git remote add lohrun http://github.com/lohrun/songbook-client.git
    git remote add carreau http://github.com/Carreau/songbook-client.git
    cd -
fi
