#!/bin/sh
#Author: Romain Goffe
#Date: 10/12/2010
#Description: packages install for ubuntu

FLAGS=" --yes --quiet --ignore-missing "#--simulate

sudo apt-get update ;

#Dev
sudo apt-get install $FLAGS awesome build-essential emacs git-core qgit libmagick++-dev perl python perl subversion cmake valgrind kcachegrind qt4-dev-tools libqt4-sql-sqlite libqt4-declarative;

#Multimedia
sudo apt-get install $FLAGS audacity audacious audacious-plugins easytag gimp gstreamer0.10-ffmpeg gstreamer0.10-fluendo-mp3 gstreamer0.10-plugins-bad imagemagick inkscape mplayer xcfa arista vlc lilypond gimp gimp-plugin-registry cheese;

#Internet
sudo apt-get install $FLAGS filezilla gm-notify ;

#LaTeX
sudo apt-get install $FLAGS texlive texlive-lang-french texlive-latex-extra texlive-fonts-recommended texlive-fonts-extra bibtex2html;

#Tools
sudo apt-get install $FLAGS gparted aspell-fr gcstar unrar ntfs-3g pdf2svg pdfmod htop ubuntu-restricted-extras lame;

sudo apt-get upgrade --yes --quiet;

exit 0
