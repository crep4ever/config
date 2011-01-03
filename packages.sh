#!/bin/sh
#Author: Romain Goffe
#Date: 10/12/2010
#Description: packages install for ubuntu
#needs to be run as root

FLAGS="--yes --quiet --ignore-missing" # --simulate"

apt-get update ;

#Dev
apt-get $FLAGS install awesome build-essential emacs git-core qgit libmagick++-dev perl python perl subversion cmake valgrind kcachegrind qt4-dev-tools libqt4-sql-sqlite libqt4-declarative ;

#Multimedia
apt-get $FLAGS install audacity audacious audacious-plugins easytag gimp gstreamer0.10-ffmpeg gstreamer0.10-fluendo-mp3 gstreamer0.10-plugins-bad imagemagick inkscape mplayer xcfa arista vlc lilypond gimp gimp-plugin-registry ;

#LaTeX
apt-get $FLAGS install texlive texlive-lang-french texlive-latex-extra texlive-fonts-recommended texlive-fonts-extra texlive-xetex ;

#Tools
apt-get $FLAGS install filezilla transfig gparted aspell-fr gcstar unrar ntfs-3g pdf2svg pdfmod htop ubuntu-restricted-extras ;

apt-get --yes --quiet upgrade ;

exit 0
