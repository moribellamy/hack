syntax on
hi Comment ctermfg=darkgreen
set autoindent
set ruler
set nu

set backspace=indent,eol,start  " more powerful backspacing
set list
set listchars=tab:␉·,trail:␠

autocmd BufNewFile,BufRead *.dockerfile set syntax=Dockerfile

" https://howchoo.com/g/m2u0nthkyti/vim-convert-tabs-to-spaces
set tabstop=2 shiftwidth=2 expandtab

" :help map-which-keys :)
imap jk <esc>

call plug#begin()
Plug 'godlygeek/tabular'
Plug 'jlanzarotta/bufexplorer'
call plug#end()
