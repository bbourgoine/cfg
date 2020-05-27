#!/bin/bash
TARGET=~
SOURCE=~/cfg
ln -s $SOURCE/zsh/zshrc $TARGET/.zshrc
ln -s $SOURCE/zsh/zshenv $TARGET/.zshenv
ln -s $SOURCE/bash/bash_profile $TARGET/.bash_profile
ln -s $SOURCE/bash/bashrc $TARGET/.bashrc
ln -s $SOURCE/screen/screenrc $TARGET/.screenrc
ln -s $SOURCE/X11/Xdefaults $TARGET/.Xdefaults
ln -s $SOURCE/emacs/emacs $TARGET/.emacs
ln -s $SOURCE/vim/vimrc $TARGET/.vimrc
ln -s $SOURCE/git/gitconfig $TARGET/.gitconfig
ln -s $SOURCE/git/gitignore_global $TARGET/.gitignore_global

