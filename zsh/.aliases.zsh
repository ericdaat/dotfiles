# alias pip='pip3'
# alias python='python3'
alias vdata='source $HOME/Code/virtualenvs/data/bin/activate'

alias jupyter-tmux='tmux new -d -s jupyter "jupyter-lab --no-browser"';
alias tas='tmux attach-session -t'

alias mkcd='foo(){ mkdir -p "$1"; cd "$1" }; foo '
alias svim='sudo vim'
alias vi='vim'
alias c='clear'

alias ipi='ipconfig getifaddr en0'

alias clean_branches='git branch | grep -v "master" | xargs git branch -D'
