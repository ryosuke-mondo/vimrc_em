" ================
" Vim-Plug session
" ================
" Specify a directory for plugins
" - For Neovim: ~/.local/share/nvim/plugged
" - Avoid using standard Vim directory names like 'plugin'
call plug#begin(g:vim_home . '/plugged')

" Make sure you use single quotes

" Shorthand notation; fetches https://github.com/junegunn/vim-easy-align
Plug 'junegunn/vim-easy-align'

" On-demand loading
Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }

Plug 'jistr/vim-nerdtree-tabs'
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
nmap <C-t> :TagbarToggle<CR>
let g:tagbar_ctags_bin = 'C:\ProgramData\chocolatey\bin\ctags.exe'

if !has('nvim')
    Plug 'roxma/nvim-yarp'
    Plug 'roxma/vim-hug-neovim-rpc'
endif

if has('python3')
    Plug 'autozimu/LanguageClient-neovim',
        let g:LanguageClient_loadSettings = 1
        let g:LanguageClient_settingsPath = expand('~/.vim/languageclient.json')
        let g:LanguageClient_selectionUI = 'location-list'
        let g:LanguageClient_loggingLevel = 'DEBUG'
    set hidden
endif

" Initialize plugin system
call plug#end()
