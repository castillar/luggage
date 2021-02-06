#!/usr/bin/env zsh

# This script sets up a nice clean copy of your environment by cleaning out files,
#   then running stow to set them up.

# Assumptions: This script is paired with the repository, so on a new host you should:
#   1. Clone the repo--including this script--into a directory like ~/.dotfiles
#   2. cd ~/.dotfiles
#   3. Run this script!

# First let's wipe out any existing files that might have gotten slapped in
#   by the operating system.
echo "Cleaning env..."
for p in .zshrc .zlogin .zlogout ; do
    rm ~/$p
done

# Now let's set up a couple directories we're going to need.
#
# First, an SSH directory
mkdir ~/.ssh
chmod 0700 ~/.ssh
# Now some temp directories
mkdir ~/tmp ~/.vim-tmp

# Now let's set up our files!
if [ $(env stow) ]; then
    echo "Linking in files..."
    for dir in $(ls .); do
        stow $dir
    done
else
    echo "No stow found!"
    echo "Linking files..."
    for dir in $(ls .); do
        pushd $dir
        for file in .?* ; do ln -s $(pwd)/$file ~/$file ; done 
        popd
    done
fi

# If you'd like it to, we can add your SSH keys to the host automatically.
#   Just uncomment the next few lines...
#echo "Fixing up SSH..."
#cat > ~/.ssh/authorized_keys <<EOF
#ssh-rsa <your key here> asdf
#EOF
#chmod 0600 ~/.ssh/authorized_keys
