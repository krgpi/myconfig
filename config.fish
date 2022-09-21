set --export PATH $HOME/.anyenv/bin $HOME/google-cloud-sdk/bin $PATH
alias la='ls -a'
alias ll='ls -l'
alias fr='fvm flutter pub run build_runner build 
--delete-conflicting-outputs'
eval (/opt/homebrew/bin/brew shellenv)
status --is-interactive; and source (anyenv init -|psub)
starship init fish | source
