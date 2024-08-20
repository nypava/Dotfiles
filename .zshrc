# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH
export PATH="$PATH:/home/pava/.local/bin"

# Export environmental variables
# export ZSH="$HOME/.oh-my-zsh"
# export http_proxy=$(ip route get 1 | sed -n 's/.*via \([0-9.]\+\).*/\1/p'):8000
# export https_proxy=$http_proxy
# export HTTPS_PROXY=$http_proxy
# export HTTP_PROXY=$http_proxy
# export ftp_proxy=$http_proxy
# export rsync_proxy=$http_proxy

# alias
alias v=nvim
alias t=tmux
alias ls='ls --color=auto'
alias timer='bash ~/.scripts/alarm/alarm.sh'
# set shortcut to emasc
set -o emacs

export EDITOR=nvim

eval "$(zoxide init zsh)"

# source and install plugins 
source /usr/share/zsh-theme-powerlevel10k/powerlevel10k.zsh-theme
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

[[ ! -d ~/.zsh/zsh-autosuggestions ]] && git clone https://github.com/zsh-users/zsh-autosuggestions .zsh/zsh-autosuggestions
source ~/.zsh/zsh-autosuggestions/zsh-autosuggestions.zsh

[[ ! -d ~/.zsh/zsh-syntax-highlighting ]] && git clone https://github.com/zsh-users/zsh-syntax-highlighting .zsh/zsh-syntax-highlighting
source ~/.zsh/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

# zsh history 
HISTFILE=~/.zsh_history
HISTSIZE=10000
SAVEHIST=10000

setopt SHARE_HISTORY
