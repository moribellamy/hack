" General vim options.
set autoindent
set nohls
" set number
set nojoinspaces
set showmatch
set smartindent
set tabstop=2
set vb t_vb=
set laststatus=2  " Always display the last status


" Vundle extensions.
filetype off
set rtp+=~/.vim/bundle/Vundle.vim/
call vundle#begin()
" Required
Plugin 'VundleVim/Vundle.vim'
Plugin 'a.vim'
Plugin 'bufexplorer.zip'
Plugin 'kien/ctrlp.vim'
Plugin 'tmhedberg/matchit'
Plugin 'godlygeek/tabular'
Plugin 'plasticboy/vim-markdown'
call vundle#end()
filetype plugin indent on
