HAS_BREW := $(shell command -v brew;)
HAS_VIDIR := $(shell command -v vidir;) 
HAS_GIT := $(shell command -v git;)
HAS_ZSH := $(shell command -v zsh;)
HAS_ANTIBODY := $(shell command -v antibody;)
HAS_NEOVIM := $(shell command -v nvim;)
HAS_XKBSWITCH := $(shell command -v xkbswitch;)
HAS_FZF := $(shell command -v fzf;)

.PHONY: all
all: bootstrap zsh vim git

.PHONY: git
git: 
ifndef HAS_GIT
	brew install git 
endif
	ln -f git/.gitconfig ~/.gitconfig
	curl -sSL https://raw.githubusercontent.com/GitAlias/gitalias/master/gitalias.txt -o git/gitalias.txt

.PHONY: zsh
zsh:	
ifndef HAS_ZSH
	brew install zsh
	chsh -s $(which zsh)
endif
ifndef HAS_ANTIBODY
	brew install getantibody/tap/antibody
endif
	ln -f zsh/.zshrc ~/.zshrc
	antibody bundle < zsh/bundles.txt > ~/.zsh_plugins.sh
	antibody update

.PHONY: vim
vim:
ifndef HAS_NEOVIM
	brew install neovim
endif
ifndef HAS_XKBSWITCH
	git clone https://github.com/myshov/xkbswitch-macosx
	cp xkbswitch-macosx/bin/xkbswitch /usr/local/bin
	rm -rf xkbswitch-macosx
endif
ifndef HAS_FZF
	brew install fzf
endif
	ln -f vim/.vimrc ~/.vimrc
	# https://blog.m157q.tw/posts/2018/07/23/use-my-old-vimrc-for-neovim/
	mkdir -p ~/.config/nvim
	ln -sf ~/.vimrc ~/.config/nvim/init.vim

bootstrap:
ifndef HAS_BREW
	/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
endif
ifndef HAS_VIDIR
	brew install moreutils
endif
