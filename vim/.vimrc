set updatetime=100
filetype plugin indent on
set tabstop=4
set shiftwidth=4
set expandtab
set number
syntax on
set hlsearch
set incsearch
map , <C-W><C-W>
set number relativenumber
set nu rnu
nnoremap < : exe "vertical resize -5"<cr>
nnoremap > : exe "vertical resize +5"<cr>
nnoremap _ : exe "res -5"<cr>
nnoremap + : exe "res +5"<cr>

call plug#begin('~/.vim/plugged')
Plug 'junegunn/seoul256.vim'
call plug#end()

" seoul256 (dark):
"   Range:   233 (darkest) ~ 239 (lightest)
"   Default: 237
let g:seoul256_background = 233
colo seoul256

set spelllang+=en_us
set spelllang+=ru

