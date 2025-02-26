nnoremap <space> <nop>
let mapleader = "\<space>"

nnoremap <leader>bn :bn<cr> ;buffer next
nnoremap <leader>tn gt ;new tab
nnoremap <leader>wq :wq<cr> ;writes and quits 

set clipboard+=unnamedplus
 
" no swap file
set noswapfile

" save undo-trees in files
set undofile
set undodir=$HOME/.config/nvim/undo

" number of undo saved
set undolevels=10000
set undoreload=10000

" set line number
set number

" use 4 spaces instead of tab () -i guess
" copy indent from current line when satrting a new line
set autoindent
set expandtab
set tabstop=4
set softtabstop=4
set shiftwidth=4

set hidden
