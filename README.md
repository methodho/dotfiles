# dotfiles

A collection of dotfiles for my MacBook.

> `$ make link` to re-link all `.*rc` files to `$HOME`

## homebrew

[https://brew.sh/index_zh-tw](https://brew.sh/index_zh-tw)

## zsh

[https://github.com/zsh-users/antigen](https://github.com/zsh-users/antigen)

```sh
# install zsh & plugin manager
$ brew install zsh && chsh -s /bin/zsh
$ brew install antigen

# symlink .zshrc to home directory
$ ln /path/to/dotfiles/.zshrc ~/.zshrc

# install iTerm2
$ brew cask install iterm2
```

## package manager

- java: [http://www.jenv.be/](http://www.jenv.be/)

  ```sh
  $ brew install jenv
  ```

- python: [https://github.com/pyenv/pyenv](https://github.com/pyenv/pyenv)

> https://github.com/pyenv/pyenv-installer

  ```sh
  # https://github.com/pyenv/pyenv-installer
  $ curl -L https://github.com/pyenv/pyenv-installer/raw/master/bin/pyenv-installer | bash

  # https://github.com/pyenv/pyenv-virtualenv
  $ git clone https://github.com/pyenv/pyenv-virtualenv.git $(pyenv root)/plugins/pyenv-virtualenv
  ```

> https://github.com/pyenv/pyenv/issues/1219

- nodejs: [https://github.com/creationix/nvm](https://github.com/creationix/nvm)

  ```sh
  $ curl -o- https://raw.githubusercontent.com/creationix/nvm/v0.33.11/install.sh | bash
  ```

## vim

vim-plug: [https://github.com/junegunn/vim-plug](https://github.com/junegunn/vim-plug)

```sh
$ curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
      https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vimi

$ ln /path/to/dotfiles/.vimrc ~/.vimrc
```

## tmux

tmux-plugins: [https://github.com/tmux-plugins/tpm](https://github.com/tmux-plugins/tpm)

```sh
git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
```

## fish

- Fisher - [https://github.com/jorgebucaran/fisher](https://github.com/jorgebucaran/fisher)

```sh
# install fish
brew install fish

# install plugin manager
curl https://git.io/fisher --create-dirs -sLo ~/.config/fish/functions/fisher.fish

# link bundles
make

# install plugins
fisher

# override some theme setting
make
```

set fish as deefault shell:

```sh
echo "/usr/local/bin/fish" >> /etc/shells

chsh -s /usr/local/bin/fish 
```
