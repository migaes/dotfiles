all: neovim tmux urxvt
.PHONY: neovim tmux urxvt

neovim:
	ln -fs `pwd`/nvim ~/.config/nvim

tmux:
	ln -fs `pwd`/tmux/tmux.conf ~/.tmux.conf

urxvt:
	ln -fs `pwd`/urxvt/Xresources ~/.Xresources
	xrdb ~/.Xresources

git:
	ln -fs `pwd`/git/gitconfig ~/.gitconfig

