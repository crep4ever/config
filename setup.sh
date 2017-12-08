#!/bin/bash
#Author: Romain Goffe
#Date: 07/12/2010
#Description: setup personal configuration files

#Dot files
cp -f bashrc $HOME/.bashrc
source $HOME/.bashrc
cp -f gitconfig $HOME/.gitconfig
cp -f face $HOME/.face

#emacs
cp -f emacs $HOME/.emacs
mkdir -p $HOME/.config/
rm -rf $HOME/.config/emacs/
rm -f $HOME/.config/emacs
cp -rf emacs.d/ $HOME/.config/
mv -f $HOME/.config/emacs.d/ $HOME/.config/emacs

#flags
dirs_flag=false
inkscape_flag=false
git_flag=false


while [ $# -gt 0 ]
do
    case "$1" in
	-a | --all)
	    dirs_flag=true
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
	    exit;;
	    
	--dirs)
	    dirs_flag=true;;
	
	--inkscape)
	    inkscape_flag=true;;
	
	--git)
	    git_flag=true;;

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

if $inkscape_flag
then
    # Additional breeze color palette
    echo "Downloading KDE breeze color palette for Inkscape..."
    wget https://community.kde.org/File:Breeze.gpl.gz $HOME/.config/inkscape/extensions

    # Inkscape TexText instructions from:
    # http://yeknan.free.fr/dc2/index.php?post/2017/11/30/Installer-Textext-sous-Debian
    echo "Configuring Inkscape TexText..."
    sudo apt-get install python-gtksourceview2 python-gtk2 
    
    mkdir -p $HOME/.config/inkscape/extensions
    wget https://bitbucket.org/pitgarbe/textext/downloads/TexText-Linux-0.6.1.tgz -O /tmp/textext.tgz
    tar -xvzf /tmp/textext.tgz --strip=2 textext-0.6.1-linux/extension/ -C $HOME/.config/inkscape/extensions/
    
fi

if $git_flag
then
    echo "Retrieving git repositories..."
    mkdir -p $HOME/git
    cd $HOME/git
    #public
    git clone https://github.com/crep4ever/matrix-view.git
    git clone https://github.com/crep4ever/benchmark-viewer.git
    #private
    git clone https://github.com/crep4ever/xanalysis.git
    cd -
fi
