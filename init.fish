set DRONE_SERVER http://softleader.com.tw:18082
set DRONE_TOKEN eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0ZXh0Ijoic2hpaHl1aG8iLCJ0eXBlIjoidXNlciJ9.W7tnX9ZiHcrtQdwKGJ9mJgJ4Rg6SV085y1uRqTAnWP8

set GOPATH $HOME/go
set PATH $GOPATH/bin $PATH

set GITHUB_TOKEN 9f85fc3a6e07814219ff5b1ed5653d1f03432100

# https://github.com/github-changelog-generator/github-changelog-generator
set CHANGELOG_GITHUB_TOKEN a940aacc119d0072163ec23387dd6920e74639bd

# https://github.com/neovim/neovim
# use .vimrc for neovim: https://blog.m157q.tw/posts/2018/07/23/use-my-old-vimrc-for-neovim/
alias vi="nvim"
alias vim="nvim"
set PATH /usr/local/opt/gettext/bin $PATH

# https://github.com/gcuisinier/jenv
set PATH $HOME/.jenv/bin $PATH

# https://github.com/nvbn/thefuck/wiki/Shell-aliases
thefuck --alias | source 

# https://github.com/rafaelrinaldi/pure
#set pure_symbol_prompt "⋊>"
