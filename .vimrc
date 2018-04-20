" Options
syntax on
hi Comment ctermfg=darkgreen
set autoindent
set cindent
set laststatus=2
set nohls
set nojoinspaces
set number
set ruler
set expandtab
set shiftwidth=4
set showmatch
set tabstop=4
set vb t_vb=
set tags=./tags,tags;$HOME

let mapleader = ','
let maplocalleader = '\\'

" Mappings
nnoremap <leader>hrc :split $MYVIMRC<cr>
nnoremap <leader>vrc :vsplit $MYVIMRC<cr>
nnoremap <leader>f :CtrlP expand('%:p:h')<cr>
nnoremap <leader>e :SyntasticCheck<CR> :SyntasticToggleMode<CR>
nnoremap <leader>r :GoRun<CR>
nnoremap <leader><leader> :source $MYVIMRC<cr>
nnoremap <leader>cd :cd %:p:h<cr>
nnoremap <leader>8 :call Flake8()<cr>
nnoremap <leader>t :TagbarToggle<CR>
nnoremap <F8> :TagbarToggle<CR>
nnoremap <F3> :set nu!<CR>
inoremap <c-u> <esc>bgUiwA
inoremap <c-o> ~<esc>?\.<cr>xi['<esc>/\~<cr>xa']
inoremap jk <esc>
" Abbreviations
iabbrev @@ Mori Bellamy <mori@wavefront.com>
iabbrev adn and
iabbrev tehn then

set backspace=indent,eol,start
set pastetoggle=<F2>

set list
set listchars=tab:␉·,trail:␠

"call plug#begin()
"Plug 'davidhalter/jedi-vim'
"Plug 'scrooloose/syntastic'
"Plug 'jlanzarotta/bufexplorer'
"Plug 'fatih/vim-go'
"Plug 'majutsushi/tagbar'
"Plug 'kien/ctrlp.vim'
"Plug 'airblade/vim-gitgutter'
"call plug#end()

aug PerFiletypeEditingOptions
    au!
    au FileType python set textwidth=79
    au FileType sh set noexpandtab
    au FileType ruby set tabstop=2 shiftwidth=2 expandtab textwidth=80
    au FileType logstash set tabstop=2 shiftwidth=2 expandtab textwidth=80
    au FileType yaml setl sw=2 sts=2 et
aug end

let g:syntastic_python_pylint_post_args='--rcfile=~/.pylintrc'
let g:syntastic_javascript_checkers = ['eslint']
let g:syntastic_mode_map = { 'mode': 'passive', 'active_filetypes': [],'passive_filetypes': [] }

"" Archives
"" Vundle.
"let Tlist_Ctags_Cmd = '/usr/local/bin/ctags'
"filetype off
"set rtp+=~/.vim/bundle/Vundle.vim/
"call     vundle#begin()
"Plugin   'VundleVim/Vundle.vim'
""Plugin   'majutsushi/tagbar'
"Plugin   'a.vim'
""Plugin   'logstash.vim'
"Plugin   'robbles/logstash.vim'
"Plugin   'bufexplorer.zip'
"Plugin   'kien/ctrlp.vim'
""Plugin   'Shougo/neocomplete.vim'
"Plugin   'tmhedberg/matchit'
"Plugin   'godlygeek/tabular'
""Plugin   'fatih/vim-go'
"Plugin   'hynek/vim-python-pep8-indent'
""Plugin   'taglist.vim'
"Plugin   'scrooloose/syntastic'
"Plugin   'davidhalter/jedi-vim'
"Plugin   'nvie/vim-flake8'
"Plugin   'moll/vim-node'
"Plugin 'mtscout6/syntastic-local-eslint.vim'
"call     vundle#end()
"filetype plugin indent on
"set statusline+=%#warningmsg#
"set statusline+=%{SyntasticStatuslineFlag()}
"set statusline+=%*

" let g:syntastic_always_populate_loc_list = 1
" let g:syntastic_auto_loc_list = 1
" let g:syntastic_check_on_open = 1
" let g:syntastic_check_on_wq = 0
