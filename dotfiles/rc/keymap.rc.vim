" key map settings
let mapleader = "\<Space>"
nnoremap <silent> <Space>ev :<C-u>edit $MYVIMRC<CR>
nnoremap <silent> <Space>rv :<C-u>source $MYVIMRC<CR>

nnoremap <Leader>w :w<CR>
nnoremap <Leader>q :q<CR>

vmap <Leader>y "+y
vmap <Leader>d "+d
vmap <Leader>p "+p
nmap <Leader>p "+p
vmap <Leader>P "+P
nmap <Leader>P "+P

" go to visual mode
nmap <Leader><Leader> V

" expand selection
vmap v <Plug>(expand_region_expand)
vmap <C-v> <Plug>(expand_region_shrink)

" paste and go to end of line
vnoremap <silent> y y`]
vnoremap <silent> p p`]
nnoremap <silent> p p`]



