.PHONY: git readline tmux urxvt vim

all: git readline tmux urxvt vim

git:
	ln -fs $(shell pwd)/git/gitconfig ~/.gitconfig
readline: 
	ln -fs $(shell pwd)/readline/inputrc ~/.inputrc
tmux:
	ln -fs $(shell pwd)/tmux/tmux.conf ~/.tmux.conf
urxvt:
	ln -fs $(shell pwd)/urxvt/Xresources ~/.Xresources
	xrdb ~/.Xresources
vim:
	ln -fs $(shell pwd)/vim/vimrc ~/.vimrc
