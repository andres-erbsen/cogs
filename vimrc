" INSTALL: git clone https://github.com/gmarik/vundle.git ~/.vim/bundle/vundle
" vim +BundleInstall! +qall

set nocompatible               " be iMproved
filetype off                   " required!

set shell=/bin/bash

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

au BufRead,BufNewFile *.md set filetype=markdown
au BufNewFile,BufRead,BufEnter *.tex setlocal spell spelllang=en_us tw=80 wrap
au BufNewFile,BufRead,BufEnter *.md setlocal spell spelllang=en_us tw=80 wrap
au BufNewFile,BufRead,BufEnter *.txt setlocal spell spelllang=en_us tw=80 wrap

" let g:pantondoc_formatting_settings "h"

Bundle 'gmarik/vundle'
Bundle 'altercation/vim-colors-solarized'
Bundle 'scrooloose/syntastic'
Bundle 'skammer/vim-css-color'
Bundle 'jnwhiteh/vim-golang'
Bundle 'Blackrush/vim-gocode'
Bundle 'dgryski/vim-godef'
Bundle 'maxbrunsfeld/vim-yankstack'
Bundle 'vim-pandoc/vim-pandoc-syntax'
Bundle 'def-lkb/vimbufsync'
Bundle 'the-lambda-church/coquille'
Bundle 'fatih/vim-go'
Bundle 'JuliaLang/julia-vim'
" Bundle 'vim-pandoc/vim-pantondoc'

au FileType coq call coquille#FNMapping()
let g:latex_to_unicode_file_types = "coq"

filetype plugin indent on
set ts=4 sw=4

syntax enable
if has('gui_running')
	set guifont=Inconsolata\ 10
	set background=light
	let g:solarized_contrast = "high"
	colorscheme solarized
	highlight Normal guibg=white
endif

set mouse=a
set guioptions-=m  "remove menu bar
set guioptions-=T  "remove toolbar
"remove scrollbars
set guioptions-=r
set guioptions-=R
set guioptions-=l
set guioptions-=L

let g:syntastic_go_checkers = ['golint', 'govet', 'gofmt', 'go']
let g:syntastic_aggregate_errors = 1
let g:syntastic_mode_map = { 'mode': 'active', 'passive_filetypes': ['go', 'coq'] }

au FileType go nmap <Leader>s <Plug>(go-implements)
au FileType go nmap <Leader>i <Plug>(go-info)
au FileType go nmap <Leader>gd <Plug>(go-doc)
au FileType go nmap <Leader>gv <Plug>(go-doc-vertical)
au FileType go nmap <leader>r <Plug>(go-run)
au FileType go nmap <leader>b <Plug>(go-build)
au FileType go nmap <leader>t <Plug>(go-test)
au FileType go nmap <leader>c <Plug>(go-coverage)
au FileType go nmap gd <Plug>(go-def)

