#!/bin/sh
#Author: Romain Goffe
#Date: 10/12/2010
#Description: packages install for ubuntu
#needs to be run as root

FLAGS=" --yes --quiet --ignore-missing "

apt-get update ;

#Dev
sudo apt-get install $FLAGS awesome build-essential emacs git qgit libmagick++-dev perl python subversion cmake valgrind qt4-dev-tools libxml++2.6-dev libarchive-dev libhunspell-dev ruby rubygems doxygen;

#Multimedia
sudo apt-get install $FLAGS audacity audacious audacious-plugins easytag gimp gimp-plugin-registry gstreamer0.10-ffmpeg gstreamer0.10-fluendo-mp3 gstreamer0.10-plugins-bad imagemagick inkscape mplayer xcfa arista vlc lilypond  cheese pinta lame;

#Web
apt-get install $FLAGS filezilla gm-notify ;

#LaTeX
apt-get install $FLAGS texlive texlive-lang-french texlive-latex-extra texlive-fonts-recommended texlive-fonts-extra bibtex2html;

#Tools
apt-get install $FLAGS gparted aspell-fr gcstar unrar ntfs-3g pdf2svg pdfmod htop ubuntu-restricted-extras nautilus-open-terminal most;


apt-get upgrade --yes --quiet;

#Ruby modules
gem install -y term-ansicolor;

exit 0
