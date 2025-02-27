nnoremap <space> <nop>
let mapleader = "\<space>"

nnoremap <leader>bn :bn<cr> ;buffer next
nnoremap <leader>tn gt ;new tab
nnoremap <leader>wq :wq<cr> ;writes and quits 

nnoremap <leader>t :CHADopen<cr>

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

" Plugins 
call plug#begin("XDG_CONFIG_HOME/nvim/plugged")
    Plug 'chrisbra/csv.vim'
    Plug 'neoclide/coc.nvim', {'branch': 'release'}
    Plug 'ms-jpq/chadtree', {'branch': 'chad', 'do': 'python3 -m chadtree deps'}
    Plug 'wellle/tmux-complete.vim'
    Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
    Plug 'junegunn/fzf.vim'
call plug#end()

autocmd BufRead,BufWritePost *.csv :%ArrangeColumn!
autocmd BufWritePre *.csv :%UnArrangeColumn
