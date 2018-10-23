" install plugins
call plug#begin('~/.vim/plugged')
Plug 'sjl/badwolf'
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'tpope/vim-fugitive'
Plug 'airblade/vim-gitgutter'
Plug 'fatih/vim-go'
Plug 'tpope/vim-surround'
Plug 'leafgarland/typescript-vim'
call plug#end()

" basics, largely self-explanatory
syntax on
set encoding=utf-8

" indent by filetype
filetype plugin indent on

" color scheme
colorscheme badwolf

" airline plugin settings
let g:airline_powerline_fonts=1

" map <leader> key to ,
let mapleader=","

" indent using two spaces
set autoindent     " insert space indentation as previous line on ENTER
set expandtab      " TAB inserts spaces
set shiftwidth=2   " 2 spaces inserted for indentation
set tabstop=2      " TAB char is 2 spaces wide
set softtabstop=2  " TAB inserts 2 spaces

" ruler
set textwidth=79    " wrap at 79 chars on insert
set colorcolumn=79  " different color at 79th char

" visual cues
set number      " show line numbers
set cursorline  " highlight current line
set showcmd     " show last command in bottom-right

" highlight last inserted text with gV
noremap gV `[v`]

" search
set incsearch  " turn on incremental search
set hlsearch   " highlight matches after <ESC>
" turn off highlighted matches with <leader><space>
nnoremap <leader><space> :nohlsearch<CR>

" set spell check language
set spell spelllang=en_us
set nospell                 " turn off spell check by default

" avoid PageDown/PageUp disrupting cursor position
map <silent> <PageUp> 1000<C-U>
map <silent> <PageDown> 1000<C-D>
imap <silent> <PageUp> <C-O>1000<C-U>
imap <silent> <PageDown> <C-O>1000<C-D>
set nostartofline

" disable cursor keys, PageUp, PageDown
noremap <Up> <NOP>
noremap <Down> <NOP>
noremap <Left> <NOP>
noremap <Right> <NOP>
noremap <PageUp> <NOP>
noremap <PageDown> <NOP>

" support fzf fuzzy finder
set rtp+=~/.fzf

" write file on :make
set autowrite
