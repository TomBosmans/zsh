ROOT_DIR:=$(shell dirname $(realpath $(firstword $(MAKEFILE_LIST))))

link:
	ln -s $(ROOT_DIR)/zsh ~/.zsh
	ln -s $(ROOT_DIR)/zshrc ~/.zshrc
