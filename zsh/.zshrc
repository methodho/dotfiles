export DOTFILES=~/.dotfiles

# lang
export LC_ALL=en_US.UTF-8
export LANG=en_US.UTF-8
export LANGUAGE=en_US.UTF-8

# https://github.com/lukechilds/zsh-nvm
export NVM_LAZY_LOAD=true

# https://github.com/getantibody/antibody
source ~/.zsh_plugins.sh

# general
alias lsa='exa --git -laa'
alias l='exa --git -laa'
alias ll='exa --git -l'
alias la='exa --git -laa'
alias ql='qlmanage -p'
alias lg='lazygit'

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

# https://github.com/github/hub
fpath=(~/.zsh/completions $fpath)
autoload -U compinit && compinit
eval "$(hub alias -s)"

# added by travis gem
[ -f /Users/matt/.travis/travis.sh ] && source /Users/matt/.travis/travis.sh

# https://kubernetes.io/docs/reference/kubectl/cheatsheet/
if [ /usr/local/bin/kubectl ]; then source <(kubectl completion zsh); fi
[ -f $DOTFILES/zsh/.kubectl_aliases ] && source $DOTFILES/zsh/.kubectl_aliases

# https://github.com/jarun/nnn
source $DOTFILES/nnn/quitcd.bash_zsh
export NNN_COPIER="$DOTFILES/nnn/copier.sh"
export NNN_BMS='D:~/Downloads/;t:~/tmp;d:~/Desktop;g:~/GitHub'
export DISABLE_FILE_OPEN_ON_NAV=1
alias ls='n -de'

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

# https://flutter.io/
export PATH=$PATH:/Users/matt/development/flutter/bin

export PATH="$HOME/.yarn/bin:$HOME/.config/yarn/global/node_modules/.bin:$PATH"
source <(slctl completion zsh)

# https://github.com/junegunn/fzf#settings
# Use ~~ as the trigger sequence instead of the default **
export FZF_COMPLETION_TRIGGER=','

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ -f ~/.p10k.zsh ]] && source ~/.p10k.zsh

eval "$(gh completion -s zsh)"

source <(oc completion zsh)
source <(tkn completion zsh)

export PATH="${KREW_ROOT:-$HOME/.krew}/bin:$PATH"

export HOMEBREW_GITHUB_API_TOKEN=1aa451b5b0ccacc367f8049cab07b4fd5a8fe70f
