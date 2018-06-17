"---------------------------------------------------------------------------
" Summary: common.rc.vim
"  Author: nekonyn
"---------------------------------------------------------------------------

" not create backup file settings.
set nobackup
set noswapfile

" indent
set expandtab
set tabstop=2
set shiftwidth=2
set showmatch

set shiftround

" encoding
set encoding=utf-8
scriptencoding utf-8

set fileencoding=utf-8
set fileencodings=utf-8,sjis,cp932

set fileformat=unix
set fileformats=unix,dos,mac

" search
set incsearch
set ignorecase

set hlsearch

" us keyboard - change ; to : 
nnoremap ; :
nnoremap : ;
vnoremap : ;
vnoremap ; :

" color configuration.
set termguicolors
colorscheme wombat256mod

syntax on
set number

function! ZenkakuSpace()
  highlight ZenkakuSpace cterm=underline ctermfg=lightblue guibg=darkgray
endfunction

if has('syntax')
  augroup ZenkakuSpace
    autocmd!
    autocmd ColorScheme * call ZenkakuSpace()
    autocmd VimEnter,WinEnter,BufRead * let w:m1=matchadd('ZenkakuSpace', '　')
  augroup END
  call ZenkakuSpace()
endif

" search
set autoindent
set smartindent
 
