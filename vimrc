set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'

" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.
" plugin on GitHub repo
Plugin 'tpope/vim-fugitive'
Plugin 'tpope/vim-sensible.git'
Plugin 'nvie/vim-flake8'
Plugin 'altercation/vim-colors-solarized'
Plugin 'vim-scripts/L9'
Plugin 'vim-scripts/FuzzyFinder'
Plugin 'rstacruz/sparkup'
Plugin 'Glench/Vim-Jinja2-Syntax'
Plugin 'docunext/closetag.vim'
Plugin 'kchmck/vim-coffee-script'
Plugin 'scrooloose/nerdtree'
Plugin 'gnattishness/cscope_maps'

call vundle#end()            " required
filetype plugin indent on    " required

" accès rapide pour fuzzyfinder
nmap ,f :FufFileWithCurrentBufferDir<CR>
nmap ,b :FufBuffer<CR>
nmap ,t :FufTaggedFile<CR>

autocmd FileType python autocmd BufWritePre <buffer> :call Flake8()
autocmd vimenter * NERDTree

set bg=dark
set nu

set expandtab
set shiftwidth=2
set tabstop=2
set showtabline=2
set softtabstop=2
set foldmethod=indent
set foldnestmax=2
set list
set mouse=a

colo solarized
noremap » >
noremap « <
