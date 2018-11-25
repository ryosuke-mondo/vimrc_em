@echo off
@setlocal
cd %~dp0
set current=%~dp0

set vim_home=%userprofile%\.vim
mkdir %vim_home%
mklink "%userprofile%\.vimrc" "%current%dotfiles\init.vim"
mklink "%userprofile%\.gvimrc" "%current%dotfiles\init.vim"
mklink /D "%vim_home%\rc" "%current%dotfiles\rc"

set nvim_initdir=%userprofile%\AppData\Local\nvim
mkdir "%nvim_initdir%"
mklink %nvim_initdir%"\init.vim" "%current%dotfiles\init.vim"
mklink /D "%nvim_initdir%\rc" "%current%dotfiles\rc"

@endlocal
@echo on
