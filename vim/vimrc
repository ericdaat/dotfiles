" Pathogen
execute pathogen#infect()

" Syntax color
syntax on

" Theme
colorscheme dracula

" Leader key
let mapleader=" "

" Remap ESC key to jj
imap jj <Esc>

" Visual help
set number
set ruler
set showcmd

" Search
set hlsearch "highlight search
set incsearch "incremental search
if has('nvim')
  set inccommand=nosplit
endif
set ignorecase "ignore case
set smartcase "unless we search for an uppercase

" Auto indent
set autoindent
set tabstop=4
set shiftwidth=4
set softtabstop=4
set expandtab

" Command line completion
set wildmenu
set wildmode=longest,full

" Useful help for beginners
set clipboard=unnamedplus

" Enable filetype plugin
filetype plugin on

" Disabling arrows
noremap <Up> <NOP>
noremap <Down> <NOP>
noremap <Left> <NOP>
noremap <Right> <NOP>

" Ale Linter
nmap <silent> <C-k> <Plug>(ale_previous_wrap)
nmap <silent> <C-j> <Plug>(ale_next_wrap)
let g:airline#extensions#ale#enabled = 1
let g:ale_lint_on_text_changed = 'never'
let g:ale_echo_msg_format = '[%severity%] [%linter%] %s' 
let g:ale_linters = {
  \ 'python': ['flake8', 'pycodestyle'] ,
  \ }
