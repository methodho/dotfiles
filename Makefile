.PHONY: link
link:
	ln -f .zshrc ~/.zshrc
	ln -f .vimrc ~/.vimrc
	# https://blog.m157q.tw/posts/2018/07/23/use-my-old-vimrc-for-neovim/
	mkdir -p ~/.config/nvim
	ln -sf ~/.vimrc ~/.config/nvim/init.vim
	ln -f .tmux.conf ~/.tmux.conf
