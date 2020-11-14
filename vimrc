set nocompatible
"Install vimplug plugin manager"
if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

call plug#begin('~/.vim/plugged')
Plug  'stevearc/vim-arduino'
call plug#end()



set autoindent cindent

set tabstop=4       
set expandtab      
set shiftwidth=4      
filetype plugin indent on 

syntax on

if has("autocmd")
       " When editing a file, always jump to the last cursor position"       
       autocmd BufReadPost * if line("'\"") | exe "'\"" | endif
"   else"
       "set viminfo='10,\"100,:20,%,n~/.viminfo"
        "   au BufReadPost * if line("'\"") > 0|if line("'\"") <= line("$")|exe("norm '\"")|else|exe "norm $"|endif|endif "
endif
set showmatch
set background=dark
autocmd FileType python set omnifunc=pythoncomplete
let g:syntastic_enable_signs=1
set spell
set spelllang=de
set modeline
augroup yaml
    au!
    autocmd FileType yaml set spelllang=en
    autocmd BufNewFile,BufRead *.playbook set filetype=yaml
augroup END
augroup markdown
    au!
    autocmd FileType markdown set spelllang=en
augroup END
