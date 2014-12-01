#!/bin/bash
#
# This script creates symlinks from the home directory to any desired dotfile.
#

#
# Variables.
#

dir="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
olddir=~/dotfiles_old
files="bashrc tmux.conf vimrc vim"

#
# Create dotfiles_old in home directory.
#

echo "Creating $olddir for backup of any existing dotfiles in ~"
mkdir -p $olddir
echo "...done"

#
# Change to the dotfiles directory.
#

echo "Changing to the $dir directory"
cd $dir
echo "...done"

# 
# Move any existing dotfiles in homedir to dotfiles_old directory,
# then create symlinks.
#

for file in $files; do
    echo "Moving any existing dotfiles from ~ to $olddir"
    mv ~/.$file $olddir
    echo "Creating symlink to $file in home directory."
    ln -s $dir/$file ~/.$file
done

#
# Copy bash_extra to HOME directory.
#

echo "Creating .bash_extra file in home directory."
[[ -f ~/.bash_extra ]] && mv ~/.bash_extra $olddir
cp $dir/bash_extra ~/.bash_extra

#
# Create .bin directory in HOME for user scripts.
#

echo "Creating .bin directory in home directory."
[[ ! -d ~/.bin ]] && mkdir ~/.bin

