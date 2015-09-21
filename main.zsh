export GOPATH=$HOME
export PATH=$PATH:$GOPATH/bin

alias ls='gls --color=auto' # require `brew install coreutils`
alias la='ls -a'
alias ll='ls -l'
alias lla='ls -la'
alias rm='gmv -f -b -t ~/.Trash'
alias ri='rm -i'
alias mi='mv -i'
alias mkdir='mkdir -p'
alias ip='ifconfig | grep 192'
alias g='git'
alias v='/Applications/MacVim.app/Contents/MacOS/mvim'

