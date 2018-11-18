md $env:Appdata\..\local\nvim\autoload\
$uri = 'https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
(New-Object Net.WebClient).DownloadFile($uri, $ExecutionContext.SessionState.Path.GetUnresolvedProviderPathFromPSPath("$env:Appdata\..\local\nvim\autoload\\plug.vim"))

cinst fzf -y

