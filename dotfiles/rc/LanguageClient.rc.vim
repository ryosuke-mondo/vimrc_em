"LanguageClient Server settings
let g:LanguageClient_serverCommands = {
\ 'cpp': ['C:\Users\\Documents\github\cquery\build\Release\bin\cquery.exe', '--language-server', '--log-stdin-stdout-to-stderr', '--log-file=d:/cq.log'],
\ 'cc': ['C:\Users\\Documents\github\cquery\build\Release\bin\cquery.exe', '--language-server', '--log-stdin-stdout-to-stderr', '--log-file=d:/cq.log'],
\ }

nnoremap <F5> :call LanguageClient_contextMenu()<CR>
nnoremap <silent> K :call LanguageClient#textDocument_hover()<CR>
nnoremap <silent> gd :call LanguageClient#textDocument_definition()<CR>
nnoremap <silent> <F2> :call LanguageClient#textDocument_rename()<CR>

