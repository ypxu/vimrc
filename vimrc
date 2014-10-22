
" Don't be compatible with vi
set nocompatible
filetype off

" Use Vundel to manage plugins
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
source ~/.vim/vimrc.bundles
call vundle#end()

filetype plugin indent on

syntax on

" More powerful backspacing
set backspace=indent,eol,start

" Matching
set showmatch " Show matching brackets.
set smartcase " Do smart case matching
set incsearch " Incremental search
set ignorecase " Do case insensitive matching
set hlsearch " Highlight search

" Status
set showcmd " Show (partial) command in status line.
set laststatus=2 " Always show status bar
set ruler " Show cursor position
set number " Show line number

" Indentation
set autoindent " Could use 'set smartindent'
set expandtab
set tabstop=4
set shiftwidth=4
set linespace=4

" Configs for rainbow_parentheses.vim
let g:rbpt_colorpairs = [
    \ ['brown',       'RoyalBlue3'],
    \ ['Darkblue',    'SeaGreen3'],
    \ ['darkgray',    'DarkOrchid3'],
    \ ['darkgreen',   'firebrick3'],
    \ ['darkcyan',    'RoyalBlue3'],
    \ ['darkred',     'SeaGreen3'],
    \ ['darkmagenta', 'DarkOrchid3'],
    \ ['brown',       'firebrick3'],
    \ ['gray',        'RoyalBlue3'],
    \ ['black',       'SeaGreen3'],
    \ ['darkmagenta', 'DarkOrchid3'],
    \ ['Darkblue',    'firebrick3'],
    \ ['darkgreen',   'RoyalBlue3'],
    \ ['darkcyan',    'SeaGreen3'],
    \ ['darkred',     'DarkOrchid3'],
    \ ['red',         'firebrick3'],
    \ ]
let g:rbpt_max = 16
let g:rbpt_loadcmd_toggle = 0

set t_Co=256
syntax on
set background=dark
"colorscheme distinguished

" Configs for vim-airline
let g:airline#extensions#branch#enabled = 1
let g:airline#extensions#hunks#enabled = 1
"let g:airline_section_b = airline#section#create(['hunks', 'branch'])
if !exists('g:airline_symbols')
  let g:airline_symbols = {}
endif
" unicode symbols
let g:airline_left_sep = '»'
let g:airline_left_sep = '▶'
let g:airline_right_sep = '«'
let g:airline_right_sep = '◀'
let g:airline_symbols.linenr = '␊'
let g:airline_symbols.linenr = '␤'
let g:airline_symbols.linenr = '¶'
let g:airline_symbols.branch = '⎇'
let g:airline_symbols.paste = 'ρ'
let g:airline_symbols.paste = 'Þ'
let g:airline_symbols.paste = '∥'
let g:airline_symbols.whitespace = 'Ξ'


let mapleader = ","

highlight OverLength ctermbg=red ctermfg=white guibg=#592929
match OverLength /\%81v.\+/
