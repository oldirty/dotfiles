set nocompatible		" first and foremost..."{{{
"}}}
" Indentation and syntax"{{{
filetype indent on      " activates indenting for files
filetype plugin on		" activates indent plugins
syntax enable			" Syntax highlighting
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
"}}}
" Indent intelligently"{{{
set ai
set si
"}}}
" Theme"{{{
set background=dark
colorscheme solarized
"}}}
" Folding"{{{
set foldmethod=marker
"}}}
" Spacebar to toggle folds. From vim.wikia.com"{{{
nnoremap <silent> <Space> @=(foldlevel('.')?'za':"\<Space>")<CR>
vnoremap <Space> zf
"}}}
" Save and reload folds silently"{{{
autocmd BufWinLeave *.* mkview
autocmd BufWinEnter *.* silent loadview
"}}}
" Visual map to surround blocks in quotes/braces "{{{
vnoremap <Leader>] c[]hp
vnoremap <Leader>} c{}hp
vnoremap <Leader>) c()hp
vnoremap <Leader>' c''hp
vnoremap <Leader>" c""hp
"}}}
