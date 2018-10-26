# dotfiles

A collection of dotfiles for my MacBook.

## homebrew

[https://brew.sh/index_zh-tw](https://brew.sh/index_zh-tw)

## zsh

[https://github.com/getantibody/antibody](https://github.com/getantibody/antibody)

```sh
# install zsh & plugin manager
$ brew install zsh && chsh -s /bin/zsh
$ brew install getantibody/tap/antibody

# install iTerm2
$ brew cask install iterm2

# config zsh plugin
$ make zsh
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

# config
$ make vim
```
