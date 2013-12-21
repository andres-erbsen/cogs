set nocompatible               " be iMproved
filetype off                   " required!

set shell=/usr/bin/zsh

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

Bundle 'gmarik/vundle'
Bundle 'scrooloose/syntastic'
Bundle 'skammer/vim-css-color'
Bundle 'jnwhiteh/vim-golang'
Bundle 'Blackrush/vim-gocode'

filetype plugin indent on
syntax enable
set ts=4 sw=4

set guioptions-=m  "remove menu bar
set guioptions-=T  "remove toolbar
set guioptions-=r  "remove right-hand scroll bar
