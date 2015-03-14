" INSTALL: 
" git clone https://github.com/gmarik/Vundle.vim.git ~/.vim/bundle/Vundle.vim
" vim +PluginInstall +qall

set nocompatible               " be iMproved
filetype off                   " required!
if $SHELL =~ 'fish'
  set shell=/bin/sh
endif

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'gmarik/Vundle.vim'
Plugin 'Shougo/neocomplete.vim'
Plugin 'Shougo/neosnippet.vim'
Plugin 'Shougo/neosnippet-snippets'
Plugin 'altercation/vim-colors-solarized'
Plugin 'scrooloose/syntastic'
Plugin 'skammer/vim-css-color'
Plugin 'maxbrunsfeld/vim-yankstack'
Plugin 'def-lkb/vimbufsync'
Plugin 'the-lambda-church/coquille'
Plugin 'fatih/vim-go'
Plugin 'JuliaLang/julia-vim'
Plugin 'peterhoeg/vim-qml'
Plugin 'vim-pandoc/vim-pandoc-syntax'
Plugin 'vim-pandoc/vim-pandoc'
call vundle#end()
filetype plugin indent on

au BufRead,BufNewFile *.md set filetype=markdown
au BufNewFile,BufRead,BufEnter *.tex setlocal spell spelllang=en_us tw=80 wrap
au BufNewFile,BufRead,BufEnter *.md setlocal spell spelllang=en_us tw=80 wrap
au BufNewFile,BufRead,BufEnter *.txt setlocal spell spelllang=en_us tw=80 wrap
au FileType coq call coquille#FNMapping()

let g:pandoc#modules#disabled = ["folding"]

let g:latex_to_unicode_auto = 1
let g:latex_to_unicode_file_types = ["coq", "go", "haskell", "julia", "agda"]

" let g:pantondoc_formatting_settings "h"

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

let g:syntastic_mode_map = { 'mode': 'active', 'passive_filetypes': ['coq'] }
let g:syntastic_go_checkers = ['golint', 'govet', 'gofmt']
let g:syntastic_aggregate_errors = 1
let g:go_snippet_engine = "neosnippet"
let g:go_fmt_experimental = 0
let g:go_highlight_array_whitespace_error = 1
let g:go_highlight_chan_whitespace_error = 1
let g:go_highlight_space_tab_error = 1
let g:go_highlight_trailing_whitespace_error = 1
let g:go_highlight_build_constraints = 1

au FileType go nmap <Leader>s <Plug>(go-implements)
au FileType go nmap <Leader>i <Plug>(go-info)
au FileType go nmap <leader>r <Plug>(go-run)
au FileType go nmap <leader>b <Plug>(go-build)
au FileType go nmap <leader>t <Plug>(go-test)
au FileType go nmap <leader>c <Plug>(go-coverage)
au FileType go nmap <Leader>gh <Plug>(go-doc-split)
au FileType go nmap <Leader>gv <Plug>(go-doc-vertical)
