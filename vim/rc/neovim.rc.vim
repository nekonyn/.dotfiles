"---------------------------------------------------------------------------
" Summary: neovim.rc.vim
"  Author: nekonyn
"---------------------------------------------------------------------------

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
 
"---------------------------------------------------------------------------

"" deoplete.vim
let g:python3_host_prog  = '/usr/bin/python3'

" <TAB>: completion.
inoremap <expr><TAB>  pumvisible() ? "\<C-n>" : "\<TAB>"
