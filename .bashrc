# Infinite history
HISTSIZE= HISTFILESIZE= 
# Vim mode
set -o vi

export CLICOLOR=1 
export LSCOLORS=exfxcxdxbxegedabagacad 
# Linux alternative
#export LS_COLORS="di=34:ln=35:so=32:pi=33:ex=31:bd=34;46:cd=34;43:su=30;41:sg=30;46:tw=30;42:ow=30;43" 
export PATH="/usr/local/Cellar/mongodb-community-shell/4.2.0/bin:$PATH" 
export NVM_DIR="$HOME/.nvm"
export PATH="/Users/chris/.deno/bin:$PATH"
export EDITOR='nvim' 
export DEFAULT=$PS1 
export PS1="\[\033[32m\]\u:\[\033[37;1m\]\w\[\033[m\]\$ "

alias c="clear" 
alias k="kubectl" 
alias mongod='brew services run mongodb-community@4.2' 
alias mongod-status='brew services list' 
alias mongod-stop='brew services stop mongodb-community@4.2' 

[ -f ~/.fzf.bash ] && source ~/.fzf.bash 
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"
