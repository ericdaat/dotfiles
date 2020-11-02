# alias pip='pip3'
# alias python='python3'
alias jupyter-tmux='tmux new -d -s jupyter "jupyter-lab --no-browser"';
alias tas='tmux attach-session -t'

alias mkcd='foo(){ mkdir -p "$1"; cd "$1" }; foo '
alias svim='sudo vim'
alias vi='vim'
alias c='clear'

alias ipi='ipconfig getifaddr en0'

# alias clean_branches='git branch | grep -v "master" | xargs git branch -D'

# Proxy
PROXY_ON=".proxy.zsh"
PROXY_OFF=".proxy.zsh.disabled"
alias disable_proxy="mv $PROXY_ON $PROXY_OFF";
alias enable_proxy="mv $PROXY_OFF $PROXY_ON";
