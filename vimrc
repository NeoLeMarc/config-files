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
