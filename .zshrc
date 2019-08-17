source ~/.bashrc
autoload -U compinit
compinit
setopt prompt_subst
# prompt
PROMPT='%F{red}%*%f:%F{cyan}%.%f $ '
zstyle ':completion:*' matcher-list 'm:{a-z}={A-Z}'
HISTFILE=~/.zsh_history_macmini
HISTSIZE=1000000
SAVEHIST=1000000
# resolve conflicts
disable r
# alias
alias la='ls -a'
alias ll='ls -l'
alias ic="ibmcloud"
# show git branch
autoload -Uz vcs_info
zstyle ':vcs_info:git:*' check-for-changes true
zstyle ':vcs_info:git:*' stagedstr "%F{yellow}!"
zstyle ':vcs_info:git:*' unstagedstr "%F{red}+"
zstyle ':vcs_info:*' formats "%F{green}%c%u[%b]%f"
zstyle ':vcs_info:*' actionformats '[%b|%a]'
precmd () { vcs_info }
RPROMPT=$RPROMPT'${vcs_info_msg_0_}'
