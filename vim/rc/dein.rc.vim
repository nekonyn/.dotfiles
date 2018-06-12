"---------------------------------------------------------------------------
" Summary: dein.rc.vim
"  Author: nekonyn
"---------------------------------------------------------------------------


" dein configurations.

let s:path = expand('~/.cache/dein')
let s:dein_repo_path = s:path . '/repos/github.com/Shougo/dein.vim'
"set runtimepath+=~/.cache/dein/repos/github.com/Shougo/dein.vim

if &runtimepath !~# 'dein.vim'
  if !isdirectory(s:dein_repo_path)
    execute '!git clone https://github.com/Shougo/dein.vim' s:dein_repo_path
  endif
  execute 'set runtimepath^=' . fnamemodify(s:dein_repo_path, 'p')
endif

if !dein#load_state(s:path)
  finish
endif

call dein#begin(s:path)

let s:toml_path = expand('~/.dotfiles/vim/rc')

call dein#load_toml(s:toml_path . '/dein.toml', {'lazy': 0})

call dein#load_toml(s:toml_path . '/ruby.toml', {'lazy': 1})

call dein#end()
call dein#save_state()

" installtiom check.
if !has('vim_starting') && dein#check_install()
  call dein#install()
endif
