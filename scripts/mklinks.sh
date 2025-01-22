#!/bin/bash
TARGET=~
SOURCE=~/cfg
BACKUP=~/backup

# Create the backup directory if it doesn't exist
[[ -d $BACKUP ]] || mkdir $BACKUP

# For each file/directory, check that it exists, back it up if it does, then replace it with the symlink
if [ -f $TARGET/.zshrc ]; then mv $TARGET/.zshrc $BACKUP/.zshrc; fi
ln -s $SOURCE/zsh/zshrc $TARGET/.zshrc
if [ -f $TARGET/.p10k.zsh ]; then mv $TARGET/.p10k.zsh $BACKUP/.p10k.zsh; fi
ln -s $SOURCE/zsh/p10k.zsh $TARGET/.p10k.zsh
if [ -f $TARGET/.zshrc ]; then mv $TARGET/.zshrc $BACKUP/.zshrc; fi
ln -s $SOURCE/zsh/zshrc $TARGET/.zshrc
if [ -f $TARGET/.bash_profile ]; then mv $TARGET/.bash_profile $BACKUP/.bash_profile; fi
ln -s $SOURCE/bash/bash_profile $TARGET/.bash_profile
if [ -f $TARGET/.bashrc ]; then mv $TARGET/.bashrc $BACKUP/.bashrc; fi
ln -s $SOURCE/bash/bashrc $TARGET/.bashrc
if [ -f $TARGET/.screenrc ]; then mv $TARGET/.screenrc $BACKUP/.screenrc; fi
ln -s $SOURCE/screen/screenrc $TARGET/.screenrc
if [ -f $TARGET/.tmux.conf ]; then mv $TARGET/.tmux.conf $BACKUP/.tmux.conf; fi
ln -s $SOURCE/tmux/tmux.conf $TARGET/.tmux.conf
if [ -f $TARGET/.Xdefaults ]; then mv $TARGET/.Xdefaults $BACKUP/.Xdefaults; fi
ln -s $SOURCE/X11/Xdefaults $TARGET/.Xdefaults
if [ -f $TARGET/.emacs ]; then mv $TARGET/.emacs $BACKUP/.emacs; fi
ln -s $SOURCE/emacs/emacs $TARGET/.emacs
if [ -d $TARGET/.emacs.d ]; then mv $TARGET/.emacs.d $BACKUP/.emacs.d; fi
ln -s $SOURCE/emacs/emacs.d $TARGET/.emacs.d
if [ -f $TARGET/.vimrc ]; then mv $TARGET/.vimrc $BACKUP/.vimrc; fi
ln -s $SOURCE/vim/vimrc $TARGET/.vimrc
if [ -f $TARGET/.gitconfig ]; then mv $TARGET/.gitconfig $BACKUP/.gitconfig; fi
ln -s $SOURCE/git/gitconfig $TARGET/.gitconfig
if [ -f $TARGET/.gitignore_global ]; then mv $TARGET/.gitignore_global $BACKUP/.gitignore_global; fi
ln -s $SOURCE/git/gitignore_global $TARGET/.gitignore_global
if [ -d $TARGET/.config/ghostty ]; then mv $TARGET/.config/ghostty $BACKUP/ghostty; fi
ln -s $SOURCE/ghostty $TARGET/.config/ghostty

