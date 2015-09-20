" Mappings
nnoremap ,, : so ~/.vimrc<CR>
command CD cd %:p:h

" Options. First come global options, then Vundle overrides, then per-filetype
" overrides.

syntax on
hi Comment ctermfg=green

set autoindent
set cindent
set expandtab
set laststatus=2
set nocompatible
set nohls
set nojoinspaces
set number
set ruler
set shiftwidth=4
set showmatch
set tabstop=4
set vb t_vb=

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


" Python overrides
" autocmd BufRead *.py set smartindent cinwords=if,elif,else,for,while,try,except,finally,def,class
