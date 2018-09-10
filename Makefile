.PHONY: link
link:
	rm ~/.zshrc && ln .zshrc ~/.zshrc
	rm ~/.vimrc && ln .vimrc ~/.vimrc
	# https://blog.m157q.tw/posts/2018/07/23/use-my-old-vimrc-for-neovim/
	mkdir -p ~/.config/nvim
	rm ~/.config/nvim/init.vim && ln -s ~/.vimrc ~/.config/nvim/init.vim
