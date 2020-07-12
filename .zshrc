export ZSH="/Users/chris/.oh-my-zsh"
export PATH="/Users/chris/.deno/bin:$PATH"
export PATH="/usr/local/Cellar/mongodb-community-shell/4.2.0/bin:$PATH"
export NVM_DIR="$HOME/.nvm"
export EDITOR='vi'
ZSH_THEME="agnoster"

alias c="clear"
alias k="kubectl"
alias mongod='brew services run mongodb-community@4.2'
alias mongod-status='brew services list'
alias mongod-stop='brew services stop mongodb-community@4.2'

plugins=(zsh-autosuggestions)
source $ZSH/oh-my-zsh.sh

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"
