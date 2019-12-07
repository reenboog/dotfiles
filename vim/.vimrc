set updatetime=100
filetype plugin indent on
set autoindent
set tabstop=4
set shiftwidth=4
set expandtab
set number
set ignorecase
syntax on
set hlsearch
set incsearch
map , <C-W><C-W>
set number relativenumber
set nu rnu

set spelllang+=en_us
set spelllang+=ru

set nocompatible
filetype plugin on

autocmd CursorMoved * exe exists("HlUnderCursor")?HlUnderCursor?printf('match IncSearch /\V\<%s\>/', escape(expand('<cword>'), '/\')):'match none':""
nnoremap <silent> <C-b> :exe "let HlUnderCursor=exists(\"HlUnderCursor\")?HlUnderCursor*-1+1:1"<CR>

vnoremap <C-c> "+y
nnoremap <C-x> "+p
nnoremap <C-X> "*p

nnoremap < : exe "vertical resize -5"<cr>
nnoremap > : exe "vertical resize +5"<cr>
nnoremap _ : exe "res -5"<cr>
nnoremap + : exe "res +5"<cr>

nnoremap <silent> <leader>k :vsplit<CR>
nnoremap <silent> <leader>h :split<CR>

nnoremap <C-p> :FZFFiles<cr>
nnoremap <S-p> :FZFBuffers<cr>
nnoremap <C-f> :FZFAg<CR>

nnoremap <silent> <leader>a :Ack <cword><CR>
nnoremap <leader>f :Ack 

nnoremap <silent> <C-n> :NERDTreeToggle<CR>
nnoremap <silent> <C-a> :NERDTreeFind<CR>

call plug#begin('~/.vim/plugged')

Plug 'junegunn/seoul256.vim'
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
Plug 'mhinz/vim-signify'
Plug 'mileszs/ack.vim'
Plug 'majutsushi/tagbar'
Plug 'scrooloose/nerdtree'
Plug 'tpope/vim-dispatch'
Plug 'dhruvasagar/vim-table-mode'
Plug 'mhinz/vim-rfc'
Plug 'junegunn/limelight.vim'
Plug 'junegunn/goyo.vim'
Plug 'vimwiki/vimwiki'
Plug 'NLKNguyen/papercolor-theme'

call plug#end()


let g:fzf_command_prefix = 'FZF'

let g:ackprg = 'ag --vimgrep --smart-case'
let g:ack_use_dispatch = 1

let g:goyo_width = 110

let g:vimwiki_list = [{'path': '~/Volumes/Data/Dropbox/docs', 'syntax': 'markdown', 'ext': '.md'}]

fun! SetCodeModeColor()
    " seoul256 (dark):
    "   Range:   233 (darkest) ~ 239 (lightest)
    "   Default: 237

    let g:seoul256_background = 233
    colorscheme seoul256
endfun

fun! SetWriteModeColor()
    let g:seoul256_background = 256
    colorscheme seoul256-light
endfun

call SetCodeModeColor()

nnoremap <silent> <leader>cm :call SetCodeModeColor()<CR>
nnoremap <silent> <leader>wm :call SetWriteModeColor()<CR>

set keymap=russian-jcukenwin
set iminsert=0
set imsearch=0
