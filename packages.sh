#!/bin/sh
#Author: Romain Goffe
#Date: 10/12/2010
#Description: packages install for ubuntu

FLAGS= --yes --quiet --ignore-missing #--simulate

sudo apt-get update ;

#Dev
sudo apt-get $FLAGS install awesome build-essential emacs git-core qgit libmagick++-dev perl python subversion cmake valgrind kcachegrind qt4-dev-tools libqt4-sql-sqlite libqt4-declarative ;

#Multimedia
sudo apt-get $FLAGS install audacity audacious audacious-plugins easytag gimp gstreamer0.10-ffmpeg gstreamer0.10-fluendo-mp3 gstreamer0.10-plugins-bad imagemagick inkscape mp3info mpg321 mplayer xcfa arista vlc lilypond gimp gimp-plugin-registry ;

#LaTeX
sudo apt-get $FLAGS install texlive texlive-lang-french texlive-latex-extra texlive-fonts-recommended texlive-fonts-extra ;

#Tools
sudo apt-get $FLAGS install gparted aspell-fr gcstar unrar ntfs-3g pdf2svg pdfmod htop ubuntu-restricted-extras ;

sudo apt-get --yes --quiet upgrade ;

exit 0
