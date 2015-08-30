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

" Mappings
nnoremap ,, : so ~/.vimrc<CR>

"Options
syntax on
hi Comment ctermfg=green

set autoindent
set ruler
set laststatus=2
set nohls
set nojoinspaces
set number
set showmatch
set cindent
set vb t_vb=

" Python overrides
" autocmd BufRead *.py set smartindent cinwords=if,elif,else,for,while,try,except,finally,def,class
