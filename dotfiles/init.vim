set encoding=utf-8

if has('nvim')
    if has('win64') || has('win32')
        let g:vim_home = expand('~/AppData/Local/nvim/')
        let g:rc_dir = expand('~/AppData/Local/nvim/rc')
    else
        let g:vim_home = expand('~/.config/nvim/')
        let g:rc_dir = expand('~/.config/nvim/rc')
    endif
else
    if has('win64') || has('win32')
        let g:vim_home = expand('~/.vim/')
        let g:rc_dir = expand('~/.vim/rc')
    else
        let g:vim_home = expand('~/.vim/')
        let g:rc_dir = expand('~/.vim/rc')
    endif
endif

function! s:source_rc(rc_file_name)
    let rc_file = expand(g:rc_dir . '/' . a:rc_file_name)
    if filereadable(rc_file)
        execute 'source' rc_file
    endif
endfunction

"--------------------------------------------------------
call s:source_rc('editor.rc.vim')

call s:source_rc('keymap.rc.vim')

call s:source_rc('vim-plug.rc.vim')

call s:source_rc('LanguageClient.rc.vim')

call s:source_rc('NERDTree.rc.vim')

call s:source_rc('personal.rc.vim')
