syntax enable
set background=light
colorscheme solarized

" Pathogen load
filetype off
call pathogen#infect()
call pathogen#helptags()
syntax on
filetype plugin indent on

set wrap
set formatoptions=qrn1
set colorcolumn=+1
" set filetype=html
set smartindent

let g:netrw_liststyle=3
set textwidth=79  " lines longer than 79 columns will be broken
set shiftwidth=4  " operation >> indents 4 columns; << unindents 4 columns
set tabstop=4     " a hard TAB displays as 4 columns
set expandtab     " insert spaces when hitting TABs
set softtabstop=4 " insert/delete 4 spaces when hitting a TAB/BACKSPACE
set shiftround    " round indent to multiple of 'shiftwidth'
set autoindent    " align the new line indent with the previous line

