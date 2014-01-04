#!/bin/bash
# install.sh
# Install script to symlink config files in ~/dotfiles to "canonical" homedir-based locations

# Vars:
# dotfiles directory
dir=~/dotfiles
# old dotfiles backup directory
olddir=~/dotfiles_old
# list of files (even folders if needed) to symlink in homedir
files="bash_aliases vimrc.local vimrc.bundles.local"

# Installation process:

# create dotfiles_bck in homedir
echo "Creating $olddir for backup purposes"
mkdir -p $olddir
echo "...done"

# change to the dotfiles directory
echo "Changing to the $dir directory"
cd $dir
echo "...done"

# move any existing dotfiles in homedir to dotfiles_bck directory, then create symlinks
for file in $files; do
    echo "Moving any existing dotfiles from ~ to $olddir"
    mv ~/.$file ~/dotfiles_old/
    echo "Creating symlink to $file in home directory."
    ln -s $dir/$file ~/.$file
done

#Once controlled, you can simply delete dotfiles_bck, if you like...
