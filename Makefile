.PHONY: link
link:
	# zsh
	ln -f .zshrc ~/.zshrc
	# fish
	mkdir -p ~/.config/fish/functions
	ln -sf ~/.jenv/fish/export.fish ~/.config/fish/functions/export.fish
	ln -sf ~/.jenv/fish/jenv.fish ~/.config/fish/functions/jenv.fish
	# fisher
	cp fishfile ~/.config/fish/fishfile
	ln -f init.fish ~/.config/fish/conf.d/init.fish
	# oh-my-fish
	#ln -f init.fish /Users/matt/.config/omf/init.fish
	#ln -f bundle /Users/matt/.config/omf/bundle
	# vimrc
	ln -f .vimrc ~/.vimrc
	# https://blog.m157q.tw/posts/2018/07/23/use-my-old-vimrc-for-neovim/
	mkdir -p ~/.config/nvim
	ln -sf ~/.vimrc ~/.config/nvim/init.vim
