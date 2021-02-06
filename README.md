# luggage
A GNU stow-able set of skeleton config files for setting up a flexible shell environment.

## Background
I wanted a shell environment that would port pretty much anywhere, from my desktop (Mac OS) to the Linux and BSD servers I work on during the day. Thing is, some aliases worked one way on Mac and differently on Linux, some things I didn't need one place or the other, and when working with older versions of Linux some things have to be worked around (whee, ancient versions of zsh and tmux...). The answer was to set up dynamic includes in my shell files.

Since a couple people evinced interest in how I'd done it, I cleaned up the resulting configs and then created this skeleton distribution for others to use as a starting point.

## Usage
Create a fork of this repo (or a copy or whatever). Modify to taste. Then for each host you're going to use it on, pull it down to some subdirectory like ~/.dotfiles. From there you can either use [GNU stow](https://www.gnu.org/software/stow/) to manually link stuff into place, or you can use the 'makemyenv.sh' script included to do that for you.

### Stow?
Stow is a handy little utility that takes a set of files and symlinks them into your home directory. The advantage is that you can make a subdirectory containing your personal config files and keep that under SCM (git, mercurial, etc.) without having to keep your whole home directory under SCM or create a bunch of exclusions. Since the files are symlinked into place, you can edit them at any time and changes will get incorporated into your repo for storage and distribution, and you can use that to keep your various hosts up to date with any new stuff.
