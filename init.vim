" =======
" General
" =======
set nocompatible
filetype plugin indent on
syntax on
let g:python_host_prog = 'C:\Python27\python.exe'
let g:python3_host_prog = 'C:\Python37\python.exe'

set number
set backspace=indent,eol,start
set mouse=a "enable mouse"
set laststatus=2 "show status line"
set list "make space visible"
set listchars=tab:»\ ,trail:-,extends:»,precedes:«,nbsp:% "set type of visible spaces"
set clipboard=unnamed
set ruler
set autoindent 
set tabstop=4 
set softtabstop=4
set shiftwidth=4
set expandtab "use spaces instead of tab"
set cursorline
set cursorcolumn
set smartindent
set ignorecase
set smartcase

nnoremap <silent> <Space>ev :<C-u>edit $MYVIMRC<CR>
nnoremap <silent> <Space>rv :<C-u>source $MYVIMRC<CR>

set rtp+=C:\ProgramData\chocolatey\bin\
autocmd vimenter * cd ~/

" =======================
"setting for Color scheme
" =======================
set t_Co=256
set background=dark
set termguicolors

"color dracula
"color solarized
" workaround for "Neovim is not responding try again".
" set colorscheme after bootup.
autocmd vimenter * color molokai

" ================
" Vim-Plug session
" ================
" Specify a directory for plugins
" - For Neovim: ~/.local/share/nvim/plugged
" - Avoid using standard Vim directory names like 'plugin'
call plug#begin('~/Appdata/Local/nvim/plugged')

" Make sure you use single quotes

" Shorthand notation; fetches https://github.com/junegunn/vim-easy-align
Plug 'junegunn/vim-easy-align'

" Any valid git URL is allowed
"Plug 'junegunn/vim-github-dashboard'

" Multiple Plug commands can be written in a single line using | separators
"Plug 'SirVer/ultisnips' | Plug 'honza/vim-snippets'

" On-demand loading
Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
Plug 'jistr/vim-nerdtree-tabs'
"Plug 'tpope/vim-fireplace', { 'for': 'clojure' }

" Using a non-master branch
"Plug 'rdnetto/YCM-Generator', { 'branch': 'stable' }

" Using a tagged release; wildcard allowed (requires git 1.9.2 or above)
"Plug 'fatih/vim-go', { 'tag': '*' }

" Plugin options
"Plug 'nsf/gocode', { 'tag': 'v.20150303', 'rtp': 'vim' }

" Plugin outside ~/.vim/plugged with post-update hook
"Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
"
"Plug 'dracula/vim'
"Plug 'altercation/vim-colors-solarized'
Plug 'tomasr/molokai'
Plug 'joshdick/onedark.vim'

" for airline

Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

Plug 'w0rp/ale'

Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'

Plug 'tpope/vim-endwise'
Plug 'Townk/vim-autoclose'
Plug 'airblade/vim-gitgutter'

Plug 'tpope/vim-fugitive'
Plug 'osyo-manga/vim-anzu'

Plug 'majutsushi/tagbar'
let g:tagbar_ctags_bin = 'C:\ProgramData\chocolatey\bin\ctags.exe'
nmap <C-t> :TagbarToggle<CR>

"Plug 'autozimu/LanguageClient-neovim'
"let g:LanguageClient_serverCommands = {
"\ 'cc': ['C:\Users\m\Documents\github\cquery\build\Release\cquery.exe', 
"\ '--log-file=C:\Users\m\cquery/cq.log', 
"\ '--init={"cacheDirectory":"C:\cquery/cquery/", "completion": {"filterAndSort": false}}']
"\ }
" Use an absolute configuration path if you want system-wide settings
" let g:LanguageClient_settingsPath = '/home/yourusername/.config/nvim/settings.json'
Plug 'autozimu/LanguageClient-neovim',
	let g:LanguageClient_loadSettings = 1
	let g:LanguageClient_settingsPath = expand('~/.vim/languageclient.json')
	let g:LanguageClient_selectionUI = 'location-list'
	let g:LanguageClient_loggingLevel = 'DEBUG'
set hidden
"	let g:LanguageClient_serverCommands = {
"\ 'cpp': ['C:\Users\m\Documents\github\cquery\build\Release\bin\cquery.exe', '--language-server', '--log-stdin-stdout-to-stderr', '--log-file=d:/cq.log'],
"\ 'cc': ['C:\Users\m\Documents\github\cquery\build\Release\bin\cquery.exe', '--language-server', '--log-stdin-stdout-to-stderr', '--log-file=d:/cq.log'],
"\ }
nnoremap <F5> :call LanguageClient_contextMenu()<CR>
nnoremap <silent> K :call LanguageClient#textDocument_hover()<CR>
nnoremap <silent> gd :call LanguageClient#textDocument_definition()<CR>
nnoremap <silent> <F2> :call LanguageClient#textDocument_rename()<CR>

Plug 'yucchiy/omnisharp-vim', {
\   'autoload': { 'filetypes': [ 'cs', 'csi', 'csx' ] },
\   'build': {
\     'windows' : 'C:\\Windows\\Microsoft.NET\\Framework64\\v4.0.30319\\MSBuild.exe server/OmniSharp.sln',
\   },
\}

" Initialize plugin system
call plug#end()

" =====================
" Settings for NERDTree
" =====================

map <C-n> :NERDTreeToggle<CR>
" NERDTress File highlighting
function! NERDTreeHighlightFile(extension, fg, bg, guifg, guibg)
 exec 'autocmd filetype nerdtree highlight ' . a:extension .' ctermbg='. a:bg .' ctermfg='. a:fg .' guibg='. a:guibg .' guifg='. a:guifg
 exec 'autocmd filetype nerdtree syn match ' . a:extension .' #^\s\+.*'. a:extension .'$#'
endfunction
call NERDTreeHighlightFile('py',     'yellow',  'none', 'yellow',  '#151515')
call NERDTreeHighlightFile('md',     'blue',    'none', '#3366FF', '#151515')
call NERDTreeHighlightFile('yml',    'yellow',  'none', 'yellow',  '#151515')
call NERDTreeHighlightFile('config', 'yellow',  'none', 'yellow',  '#151515')
call NERDTreeHighlightFile('conf',   'yellow',  'none', 'yellow',  '#151515')
call NERDTreeHighlightFile('json',   'yellow',  'none', 'yellow',  '#151515')
call NERDTreeHighlightFile('html',   'yellow',  'none', 'yellow',  '#151515')
call NERDTreeHighlightFile('styl',   'cyan',    'none', 'cyan',    '#151515')
call NERDTreeHighlightFile('css',    'cyan',    'none', 'cyan',    '#151515')
call NERDTreeHighlightFile('rb',     'Red',     'none', 'red',     '#151515')
call NERDTreeHighlightFile('js',     'Red',     'none', '#ffa500', '#151515')
call NERDTreeHighlightFile('php',    'Magenta', 'none', '#ff00ff', '#151515')
call NERDTreeHighlightFile('cs',    'Green',   'none', '#00ff00', '#151515')

let g:NERDTreeDirArrows = 1
let g:NERDTreeDirArrowExpandable  = '▶'
let g:NERDTreeDirArrowCollapsible = '▼'

" =========
" OmniSharp
" =========
" couldn't make it working on windows.
