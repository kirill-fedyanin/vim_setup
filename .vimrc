call plug#begin()
  Plug 'bronson/vim-trailing-whitespace'
"  Plug 'Shougo/vimproc.vim', {'do' : 'make'}
"  Plug 'Shougo/unite.vim'
  Plug 'scrooloose/nerdtree'
"  Plug 'scrooloose/nerdcommenter'
  Plug 'tomtom/tcomment_vim'
  Plug 'mileszs/ack.vim'
call plug#end()









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
" set nu

let mapleader=","
map <leader>q :NERDTreeToggle<CR>
"" Searching
set hlsearch			" Highlight matches
set incsearch			" Incremental searching
set ignorecase			" Searches are case insenisitive ...
set smartcase			" ... unless they contain at least one capital letter

set backupdir=~/.vim/temp

colorscheme railscasts
set background=dark
"colorscheme desert

if executable('ag')
  let g:ackprg = 'ag --vimgrep'
endif

if (exists('+colorcolumn'))
  set colorcolumn=80
  highlight ColorColumn ctermbg=9
endif
let g:unite_source_history_yank_enable = 1
try
  let g:unite_source_rec_async_command='ag --nocolor --nogroup -g ""'
  call unite#filters#matcher_default#use(['matcher_fuzzy'])
catch
endtry
" search a file in the filetree
nnoremap <space><space> :split<cr> :<C-u>Unite -start-insert file_rec/async<cr>
" reset not it is <C-l> normally
:nnoremap <space>r <Plug>(unite_restart)
