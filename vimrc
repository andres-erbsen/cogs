set nocompatible               " be iMproved
filetype off                   " required!

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

Bundle 'gmarik/vundle'
Bundle 'altercation/vim-colors-solarized'
Bundle 'skammer/vim-css-color'

filetype plugin indent on

syntax enable
let g:solarized_termcolors=256
set background=light
colorscheme solarized
