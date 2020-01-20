export https_proxy='http://www-cache:3128'
export http_proxy='http://www-cache:3128'
export use_proxy='on'

if [ -f ~/.bash_aliases ]; then
    . ~/.bash_aliases
fi

export PATH="$HOME/.cargo/bin:$PATH"
