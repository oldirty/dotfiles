set nocompatible		" first and foremost..."{{{
filetype off
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'gmarik/Vundle.vim'
Plugin 'tpope/vim-fugitive'
call vundle#end()
"}}}
" Indentation and syntax"{{{
filetype indent plugin on      " activates indenting for files
syntax enable			" Syntax highlighting
" Handy vim-fugitive status line
set statusline=%<%f\ %h%m%r%{fugitive#statusline()}%=%-14.(%l,%c%V%)\ %P
"}}}
" General variables... tabstop, etc"{{{
set tabstop=4 			" Screen space is valuable...
set history=5000
set autoindent          " auto indenting
set nobackup			" fuck ~files
set wildmenu			" autocomplete menus
set wildmode=list:longest
set hlsearch			" Show me 'grep --color'
set autoread			" automatically rereads % when it changes under us
set ruler				" always show line number / pos
set smartcase			" For searching
set showmatch			" for matching [{( brackets
set laststatus=2		" Always show status line
set ai
set si
set background=dark
colorscheme solarized
set foldmethod=marker
let mapleader="q"		" Most of my leader mappings are on the right side of the keyboard...
"}}}
" My super-special key maps "{{{
nnoremap <silent> <Space> @=(foldlevel('.')?'za':"\<Space>")<CR>
vnoremap <Space> zf
nnoremap <C-l> <C-W><C-l>
nnoremap <C-j> <C-W><C-j>
nnoremap <C-k> <C-W><C-k>
nnoremap <C-h> <C-W><C-h>
vnoremap <Leader>] c[]hp
vnoremap <Leader>} c{}hp
vnoremap <Leader>) c()hp
vnoremap <Leader>' c''hp
vnoremap <Leader>" c""hp
map <Leader>OD :tabp
map <Leader>OC :tabn
" friggin escape key...
imap <Leader>q <Esc>
" This is literally the gnarliest way to quickly run the current script with
" no args. placed here to show i have a sense of humor.
nnoremap Q 1/!l"ay$:!a %

"}}}
" Save and reload folds silently"{{{
autocmd BufWinLeave *.* mkview
autocmd BufWinEnter *.* silent loadview
"}}}
