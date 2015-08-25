" Vundle.
filetype off
set rtp+=~/.vim/bundle/Vundle.vim/
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'
Plugin 'a.vim'
Plugin 'bufexplorer.zip'
Plugin 'kien/ctrlp.vim'
Plugin 'tmhedberg/matchit'
Plugin 'godlygeek/tabular'
Plugin 'plasticboy/vim-markdown'
Plugin 'hynek/vim-python-pep8-indent'
call vundle#end()
filetype plugin indent on


set autoindent
set laststatus=2
set nohls
set nojoinspaces
set number
set showmatch
set smartindent
set vb t_vb=
syntax on

nnoremap ,, : so ~/.vimrc<CR>
