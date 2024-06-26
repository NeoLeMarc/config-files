" https://builtin.com/software-engineering-perspectives/neovim-configuration
" #:git config --global --add url."git@github.com:".insteadOf
" "https://github.com"
" pip3 install neovim
" npm install neovim
" cd /Users/marcel/.local/share/nvim/site/autoload
" curl -fLo ~/.local/share/nvim/site/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
" PlugInstall
" git clone https://github.com/github/copilot.vim.git  ~/.config/nvim/pack/github/start/copilot.vim
set nocompatible
set showmatch
set ignorecase
" set mouse=v
set hlsearch
set incsearch
set tabstop=2
set softtabstop=2
set expandtab
set shiftwidth=2
set autoindent
set number
set wildmode=longest,list
" set cc=80
filetype plugin indent on
syntax on
" set mouse=a
set clipboard=unnamedplus
filetype plugin on
set ttyfast
set spell
set spelllang=en
" set noswapfile - maybe
" set backupdir=~/.cache/vim
set modeline
set modelines=5

call plug#begin("~/.vim/plugged")
    Plug 'dracula/vim'
    Plug 'ryanoasis/vim-devicons'
    Plug 'SirVer/ultisnips'
    Plug 'honza/vim-snippets'
    Plug 'scrooloose/nerdtree'
    Plug 'preservim/nerdcommenter'
    Plug 'mhinz/vim-startify'
    Plug 'neoclide/coc.nvim', {'branch' : 'release'}
call plug#end()

" ToDo: Keybindings

" open file in a text by placing text and gf
nnoremap gf :vert winc f<cr>
" copies filepath to clipboard by pressing yf
:nnoremap <silent> yf :let @+=expand('%:p%')<cr>
" copies pwd to clipboard: command yd
:nnoremap <silent> yd :let @+=expand('%:p:h')<cr>
" Vim jump to the last position when reopening a file
if has("autocmd")
    au BufReadPost * if line("'\"") > 0 && line("'\"") <= line("$")
     \| exe "normal! g'\"" | endif
endif

" map leader key 
let mapleader=" "

" Load init.lua
lua require('init')
