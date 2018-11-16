all: git neovim tmux urxvt vim
.PHONY: git tmux urxvt vim

git:
	ln -fs `pwd`/git/gitconfig ~/.gitconfig

tmux:
	ln -fs `pwd`/tmux/tmux.conf ~/.tmux.conf

urxvt:
	ln -fs `pwd`/urxvt/Xresources ~/.Xresources
	xrdb ~/.Xresources

vim:
	ln -fs `pwd`/vim/vimrc ~/.vimrc

