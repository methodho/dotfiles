.PHONY: all
all: zsh vim git

.PHONY: git
git: 
	ln -f git/.gitconfig ~/.gitconfig
	curl https://raw.githubusercontent.com/GitAlias/gitalias/master/gitalias.txt -o git/gitalias.txt

.PHONY: zsh
zsh:
	ln -f zsh/.zshrc ~/.zshrc
	antibody bundle < zsh/bundles.txt > ~/.zsh_plugins.sh
	antibody update

.PHONY: vim
vim:
	ln -f vim/.vimrc ~/.vimrc
	# https://blog.m157q.tw/posts/2018/07/23/use-my-old-vimrc-for-neovim/
	mkdir -p ~/.config/nvim
	ln -sf ~/.vimrc ~/.config/nvim/init.vim
