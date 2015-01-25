"
" My vimrc.
"

" Use Vim settings
set nocompatible

" Vundle
set runtimepath+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'gmarik/Vundle.vim'
Plugin 'fatih/vim-go'
Plugin 'wting/rust.vim'
call vundle#end()

" Use sensible tab settings
set tabstop=2
set shiftwidth=2
set expandtab
set smartindent
filetype plugin indent on

" Use sensible search settings
set incsearch
set hlsearch
set ignorecase " Ignore search case unless search contains capitals
set smartcase

" Show line number at the bottom
set ruler

" Show incomplete commands
set history=50
set showcmd

" Turn on colouring
colors desert
syntax enable

" Enable backups but stuff them away
set backup
set backupdir=~/.vim/backup

" Configure the GUI
set guifont=Consolas:h10
set guioptions-=T

" When editing a file, always jump to the last known cursor position.
" Don't do it when the position is invalid or when inside an event handler.
" Also don't do it when the mark is in the first line, that is the default
" position when opening a file.
autocmd BufReadPost *
\ if line("'\"") > 1 && line("'\"") <= line("$") |
\   exe "normal! g`\"" |
\ endif
