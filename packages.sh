#!/bin/sh
#Author: Romain Goffe
#Date: 08/12/2017
#Description: packages install for ubuntu
#needs to be run as root

FLAGS=" --yes --quiet --ignore-missing "

sudo apt-get update;

# Ubuntu
sudo apt-get install $FLAGS build-essential ubuntu-restricted-extras virtualbox-guest-dkms emacs git gitg qgit cmake clang doxygen doxygen-gui;

# Dev
sudo apt-get install $FLAGS emacs git gitg qgit cmake clang doxygen doxygen-gui valgrind kcachegrind massif-visualizer qtcreator;

# Multimedia
sudo apt-get install $FLAGS gimp inkscape vlc gnuplot pdf2svg pstoedit imagemagick;

# LaTeX
sudo apt-get install $FLAGS texlive texlive-latex-base;

# Tools
sudo apt-get install $FLAGS gparted htop most colordiff;

sudo apt-get upgrade --yes --quiet;

exit 0

