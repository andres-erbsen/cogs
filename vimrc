" INSTALL: git clone https://github.com/gmarik/vundle.git ~/.vim/bundle/vundle
" vim +BundleInstall! +qall

set nocompatible               " be iMproved
filetype off                   " required!

set shell=/bin/bash

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

" au BufRead,BufNewFile *.md set filetype=markdown
au BufNewFile,BufRead,BufEnter *.tex setlocal spell spelllang=en_us tw=80 wrap
au BufNewFile,BufRead,BufEnter *.md setlocal spell spelllang=en_us tw=80 wrap
au BufNewFile,BufRead,BufEnter *.txt setlocal spell spelllang=en_us tw=80 wrap

" let g:pantondoc_formatting_settings "h"

Bundle 'altercation/vim-colors-solarized'
Bundle 'gmarik/vundle'
Bundle 'scrooloose/syntastic'
Bundle 'skammer/vim-css-color'
Bundle 'jnwhiteh/vim-golang'
Bundle 'Blackrush/vim-gocode'
Bundle 'dgryski/vim-godef'
Bundle 'maxbrunsfeld/vim-yankstack'
Bundle 'vim-pandoc/vim-pandoc-syntax'
Bundle 'vim-pandoc/vim-pantondoc'

filetype plugin indent on
syntax enable
set background=light
colorscheme solarized
highlight Normal guibg=white
set ts=4 sw=4

set mouse=a
set guioptions-=m  "remove menu bar
set guioptions-=T  "remove toolbar
set guioptions-=r  "remove right-hand scroll bar

