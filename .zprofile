eval "$(/opt/homebrew/bin/brew shellenv)"
source $(brew --prefix nvm)/nvm.sh
alias python="python3"
alias pip2="pip"
alias pip="pip3"
alias gc="git commit -m"
alias gpush="git push"
alias gpull="git pull"
alias ga="git add"
alias gs="git status"
alias opct="ssh -N -D 1080  root@141.98.118.242"
alias opcd="ssh -N -D 1080  root@dev.amirnajafi.com"
alias vpn="sshuttle --dns -vvr root@141.98.118.242  0/0"
alias vpn_iran="sshuttle --dns -vvr root@213.176.0.81 0/0"
alias vim="nvim"
alias ircc="cd /Users/mac/dev/ircc && bun run index.ts"
alias ff="fzf --preview='bat --color=always {}'"
alias vmrss="sh ~/dotfiles/scripts/vmrss"


export HOMEBREW_NO_INSTALL_CLEANUP=TRUE

export FZF_DEFAULT_COMMAND="fd . $HOME  --hidden --follow --exclude .git --ignore-file ~/.gitignore"
# export FZF_DEFAULT_COMMAND='ag --hidden --ignore .git -l -g ""'
export FZF_CTRL_T_COMMAND="$FZF_DEFAULT_COMMAND"
export FZF_ALT_C_COMMAND="fd . $HOME --type d --hidden --follow --exclude .git --ignore-file ~/.gitignore"
export STOW_DIR="$HOME/dotfiles"


fv() {
    local file
    file=$(fzf --preview 'bat --style=numbers --color=always {}' --preview-window=right:50%:wrap) && vim "$file"
}
