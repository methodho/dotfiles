HAS_BREW := $(shell command -v brew;)
HAS_VIDIR := $(shell command -v vidir;) 
HAS_GIT := $(shell command -v git;)
HAS_ZSH := $(shell command -v zsh;)
HAS_ANTIBODY := $(shell command -v antibody;)
HAS_XKBSWITCH := $(shell command -v xkbswitch;)
HAS_RG := $(shell command -v rg;)
HAS_EXA := $(shell command -v exa;)

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
ifndef HAS_RG
	brew install ripgrep
endif
ifndef HAS_EXA
	brew install exa
endif
	curl -sSL https://raw.githubusercontent.com/ahmetb/kubectl-aliases/master/.kubectl_aliases -o zsh/.kubectl_aliases
	ln -f zsh/.zshrc ~/.zshrc
	antibody bundle < zsh/bundles.txt > ~/.zsh_plugins.sh
	antibody update

.PHONY: vim
vim:
ifndef HAS_XKBSWITCH
	git clone https://github.com/myshov/xkbswitch-macosx
	cp xkbswitch-macosx/bin/xkbswitch /usr/local/bin
	rm -rf xkbswitch-macosx
endif
	ln -f vim/.vimrc ~/.vimrc

bootstrap:
ifndef HAS_BREW
	/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
endif
ifndef HAS_VIDIR
	brew install moreutils
endif
