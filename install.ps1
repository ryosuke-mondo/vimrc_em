#install chocolatey
Set-ExecutionPolicy Bypass -Scope Process -Force; iex ((New-Object System.Net.WebClient).DownloadString('https://chocolatey.org/install.ps1'))

#install related tools
cinst neovim -y
cinst fzf -y
cinst ctags -y
cinst python2 -y
cinst python3 -y

C:\Python37\python.exe -m pip install -U pip
C:\Python37\python.exe -m pip install -U neovim

C:\Python27\python.exe -m pip install -U pip
C:\Python27\python.exe -m pip install -U neovim

#install vim-plug to nvim
md $env:Appdata\..\local\nvim\autoload\
$uri = 'https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
$plug_dst = "$env:Appdata\..\local\nvim\autoload\plug.vim"
(New-Object Net.WebClient).DownloadFile($uri, $ExecutionContext.SessionState.Path.GetUnresolvedProviderPathFromPSPath($plug_dst))

$script_path = $MyInvocation.MyCommand.Path

$mklink = Join-Path (Split-Path -Parent $script_path) "mklink.bat"
# run as admin to make symbolic link.
Start-Process $mklink -verb runas

#install plugins for nvim
& "C:\tools\neovim\Neovim\bin\nvim-qt.exe" +PlugInstall +qa
