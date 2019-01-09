export DOTFILES=~/.dotfiles

# https://github.com/lukechilds/zsh-nvm
export NVM_LAZY_LOAD=true

# https://github.com/getantibody/antibody
source ~/.zsh_plugins.sh

# general
alias ..="cd .."
alias ...='cd ../..'
alias ....='cd ../../..'
alias .....='cd ../../../..'
alias ......='cd ../../../../..'
alias lsa='ls -lahG'
alias l='ls -lahG'
alias ll='ls -lhG'
alias la='ls -lAhG'

# https://github.com/sindresorhus/pure
#export prompt_newline='%666v'
export PROMPT="%F{yello}%* $PROMPT"
#export RPROMPT='%F{white}%*'

export PATH="/usr/local/sbin:$PATH"

# https://github.com/nvbn/thefuck
eval $(thefuck --alias)

# GO
export GOPATH=$HOME/go
export PATH=$PATH:$GOPATH/bin

export GITHUB_TOKEN=071d81562713783bc77cc6689715cde8475ec223

# https://github.com/github/hub
fpath=(~/.zsh/completions $fpath)
autoload -U compinit && compinit
eval "$(hub alias -s)"

# https://github.com/neovim/neovim
# use .vimrc for neovim: https://blog.m157q.tw/posts/2018/07/23/use-my-old-vimrc-for-neovim/
alias vi="nvim"
alias vim="nvim"
export PATH="/usr/local/opt/gettext/bin:$PATH"
export VIMRUNTIME="$(nvim -e --cmd 'echo $VIMRUNTIME|quit' 2>&1)"

# https://github.com/github-changelog-generator/github-changelog-generator
export CHANGELOG_GITHUB_TOKEN=a940aacc119d0072163ec23387dd6920e74639bd

# added by travis gem
[ -f /Users/matt/.travis/travis.sh ] && source /Users/matt/.travis/travis.sh

# https://kubernetes.io/docs/reference/kubectl/cheatsheet/
if [ /usr/local/bin/kubectl ]; then source <(kubectl completion zsh); fi

# https://github.com/jarun/nnn
source $DOTFILES/nnn/_nnn
source $DOTFILES/nnn/quitcd.zsh
export NNN_NO_AUTOSELECT=1
export NNN_COPIER="$DOTFILES/nnn/copier.sh"
export NNN_BMS='d:~/Documents/SoftLeader;D:~/Downloads/;t:~/tmp;d:~/Desktop;g:~/GitHub;o:~/go/src/github.com'

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

# https://flutter.io/
export PATH=$PATH:/Users/matt/development/flutter/bin
