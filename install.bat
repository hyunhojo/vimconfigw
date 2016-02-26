@echo off

cd %USERPROFILE%

set vim=.vim
set vimrc=_vimrc

if exist %vim% (
    rmdir /s /q %vim%
)

git clone https://github.com/gmarik/Vundle.vim.git %USERPROFILE%/.vim/bundle/Vundle.vim

if exist %vimrc% (
    rmdir /s /q %vimrc% 
)

copy vimconfigw\_vimrc _vimrc 
vim -c :PluginInstall -c :qa

