set nocompatible		" choose no compatibility with legacy vi
syntax enable
set encoding=utf-8
set showcmd			" display incomplete commands
filetype plugin indent on 	" load file type plugins + indentation

"" Whitespace
set nowrap			" Don't wrap lines
set tabstop=2 shiftwidth=2	" A tab is two spaces
set expandtab			" Use spaces, not tabs
set backspace=indent,eol,start	" Backspace through everything in insert mode

"" Searching
set hlsearch			" Highlight matches
set incsearch			" Incremental searching
set ignorecase			" Searches are case insenisitive ...
set smartcase			" ... unless they contain at least one capital letter

