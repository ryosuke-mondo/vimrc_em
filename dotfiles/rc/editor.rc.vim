" editor settings
filetype plugin indent on
syntax on

let g:python_host_prog = 'C:\Python27\python.exe'
let g:python3_host_prog = 'C:\Python37\python.exe'

set rtp+=C:\ProgramData\chocolatey\bin\

autocmd vimenter * cd ~/

set number "桁表示"
set backspace=indent,eol,start
set mouse=a   "マウス有効"
set laststatus=2 "ステータスラインの表示"
set list "スペースの可視化"
set listchars=tab:»\ ,trail:-,extends:»,precedes:«,nbsp:% "space 対応"
set clipboard=unnamed "clipbordと対応"
set ruler "カーソルが何行目の何列目に置かれているかを表示"
set autoindent "改行時に前の行のインデントを継続する"
set tabstop=4 "画面上でタブ文字が占める幅"
set softtabstop=4 "連続した空白に対してタブキーやバックスペースキーでカーソルが動く幅"
set shiftwidth=4 "自動インデントでずれる幅"
set expandtab "タブ入力を複数の空白入力に置き換える"
set cursorline "横のカーソルライン表示"
set cursorcolumn "縦のカーソルライン表示"
set smartindent "改行時に入力された行の末尾に合わせて次の行のインデントを増減する"
set ignorecase
set smartcase

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
