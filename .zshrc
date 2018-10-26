# https://github.com/getantibody/antibody
source ~/.zsh_plugins.sh

# general
export TERM=xterm-256color
alias -g ...='../..'
alias -g ....='../../..'
alias -g .....='../../../..'
alias -g ......='../../../../..'
alias lsa='ls -lahG'
alias l='ls -lahG'
alias ll='ls -lhG'
alias la='ls -lAhG'

# https://github.com/sindresorhus/pure
export PROMPT='%F{yello}%* '$PROMPT

export SPACESHIP_EXEC_TIME_SHOW=false

export PATH="/usr/local/sbin:$PATH"

# https://github.com/nvbn/thefuck
eval $(thefuck --alias)

# drone
export DRONE_SERVER=http://softleader.com.tw:18082
export DRONE_TOKEN=eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0ZXh0Ijoic2hpaHl1aG8iLCJ0eXBlIjoidXNlciJ9.W7tnX9ZiHcrtQdwKGJ9mJgJ4Rg6SV085y1uRqTAnWP8

# GO
export GOPATH=$HOME/go
export PATH=$PATH:$GOPATH/bin

export GITHUB_TOKEN=9f85fc3a6e07814219ff5b1ed5653d1f03432100

# https://github.com/creationix/nvm
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# https://github.com/gcuisinier/jenv
export PATH="$HOME/.jenv/bin:$PATH"
eval "$(jenv init -)"

# https://github.com/pyenv/pyenv
export PATH="$HOME/.pyenv/bin:$PATH"
eval "$(pyenv init -)"
eval "$(pyenv virtualenv-init -)"
# https://github.com/pyenv/pyenv/issues/1219

# https://github.com/github/hub
fpath=(~/.zsh/completions $fpath)
autoload -U compinit && compinit
eval "$(hub alias -s)"

# https://github.com/neovim/neovim
# use .vimrc for neovim: https://blog.m157q.tw/posts/2018/07/23/use-my-old-vimrc-for-neovim/
alias vi="nvim"
alias vim="nvim"
export PATH="/usr/local/opt/gettext/bin:$PATH"

# https://github.com/github-changelog-generator/github-changelog-generator
export CHANGELOG_GITHUB_TOKEN=a940aacc119d0072163ec23387dd6920e74639bd
