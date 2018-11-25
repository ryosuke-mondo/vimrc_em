" editor settings
filetype plugin indent on
syntax on

let g:python_host_prog = 'C:\Python27\python.exe'
let g:python3_host_prog = 'C:\Python37\python.exe'

set rtp+=C:\ProgramData\chocolatey\bin\

autocmd vimenter * cd ~/

set number
set backspace=indent,eol,start
set mouse=a "enable mouse
set laststatus=2
set list "make space visible
set listchars=tab:»\ ,trail:-,extends:»,precedes:«,nbsp:% 
set clipboard=unnamed
set ruler 
set autoindent 
set tabstop=4 
set softtabstop=4 
set shiftwidth=4 
set expandtab 
set smarttab
set cursorline 
set cursorcolumn 
set smartindent 
set ignorecase
set smartcase
set splitbelow
set textwidth=0

" =======================
"setting for Color scheme
" =======================
set t_Co=256
set background=dark
set termguicolors

"color dracula
"color solarized
" workaround for -Neovim is not responding try again-.
" set colorscheme after bootup.
autocmd vimenter * color molokai
