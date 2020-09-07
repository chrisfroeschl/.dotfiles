HISTSIZE= HISTFILESIZE= 
set -o vi

export EDITOR='nvim' 
export CLICOLOR=1 
# Linux alternative
#export LS_COLORS="di=34:ln=35:so=32:pi=33:ex=31:bd=34;46:cd=34;43:su=30;41:sg=30;46:tw=30;42:ow=30;43" 
export LSCOLORS=exfxcxdxbxegedabagacad 
export DEFAULT=$PS1 
GIT_PS1_SHOWUPSTREAM="auto"
GIT_PS1_SHOWCOLORHINTS="yes"
GIT_PS1_SHOWDIRTYSTATE="yes"
GIT_PS1_SHOWSTASHSTATE="yes"
GIT_PS1_SHOWUNTRACKEDFILES="yes"
source ~/.git-prompt.sh
export PROMPT_COMMAND='__git_ps1 "\[\033[32m\]\u:\[\033[37;1m\]\W" "\\\$ ";'

alias k="kubectl" 
alias mongod='brew services run mongodb-community' 
alias mongod-status='brew services list' 
alias mongod-stop='brew services stop mongodb-community' 

export PATH="/usr/local/Cellar/mongodb-community-shell/4.2.0/bin:$PATH" 
export PATH="/Users/chris/.deno/bin:$PATH"
[ -f ~/.fzf.bash ] && source ~/.fzf.bash 
eval "$(fnm env --multi)"
