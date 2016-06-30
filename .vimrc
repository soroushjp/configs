" add Pathogen for plugins
execute pathogen#infect()

" basics, should be self-explanatory
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
set textwidth=79   " wrap at 79 chars on insert
set colorcolumn=79 " different color at 79th char

" visual cues
set number     " show line numbers
set cursorline " highlight current line
set showcmd    " show last command in bottom-right

" highlight last inserted text with gV
noremap gV `[v`]

" search
set incsearch " turn on incremental search
set hlsearch  " highlight matches after <ESC>
" turn off highlighted matches with <leader><space>
nnoremap <leader><space> :nohlsearch<CR>

" set spell check language
set spell spelllang=en_us
