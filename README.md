# dotfiles


A collection of dotfiles for my MacBook.


## zsh

```sh
# install zsh & zsh plugin manager
$ brew install zsh && chsh -s /bin/zsh
$ brew install antigen

# install iTerm2
$ brew cask install iterm2

# symlink .zshrc to home directory
$ ln /path/to/dotfiles/.zshrc ~/.zshrc
```

## package manager

- java: [http://www.jenv.be/](http://www.jenv.be/)

  ```sh
  $ brew install jenv
  ```

- python: [https://github.com/pyenv/pyenv](https://github.com/pyenv/pyenv)

  ```
  # https://github.com/pyenv/pyenv-installer
  $ curl -L https://github.com/pyenv/pyenv-installer/raw/master/bin/pyenv-installer | bash

  # https://github.com/pyenv/pyenv-virtualenv
  $ git clone https://github.com/pyenv/pyenv-virtualenv.git $(pyenv root)/plugins/pyenv-virtualenv
  ```

- nodejs: [https://github.com/creationix/nvm](https://github.com/creationix/nvm)

  ```
  $ curl -o- https://raw.githubusercontent.com/creationix/nvm/v0.33.11/install.sh | bash
  ```
