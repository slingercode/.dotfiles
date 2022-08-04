"
" Personal Vim configuration of _slingercode
"
" ---------------------------------------------------------------------------
" General settings
" ---------------------------------------------------------------------------


set expandtab
set shiftwidth=2
set tabstop=2
set number
set relativenumber
set scrolloff=10
set sidescrolloff=10
set splitbelow
set splitright
set noshowmode


" ---------------------------------------------------------------------------
" Key maps
" ---------------------------------------------------------------------------


let mapleader = "\<space>"


" Allow gf to open non-existent files
map gf :edit <cfile><cr>


" Buffer navigation
map <tab> :bnext<cr>

" Close buffer
map <leader>w :bd<cr>

" Split navigation
map <C-\> :vs<cr>

map <C-h> <C-w>h
map <C-j> <C-w>j
map <C-k> <C-w>k
map <C-l> <C-w>l


" ---------------------------------------------------------------------------
" Pluggins
" ---------------------------------------------------------------------------


let data_dir = has('nvim') ? stdpath('data') . '/site' : '~/.vim'
if empty(glob(data_dir . '/autoload/plug.vim'))
  silent execute '!curl -fLo '.data_dir.'/autoload/plug.vim --create-dirs  https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif


call plug#begin(data_dir . '/plugins')


source ~/.config/nvim/plugins/airline.vim
source ~/.config/nvim/plugins/auto-pairs.vim
source ~/.config/nvim/plugins/coc.vim
source ~/.config/nvim/plugins/commentary.vim
source ~/.config/nvim/plugins/ctrlp.vim
source ~/.config/nvim/plugins/fugitive.vim
source ~/.config/nvim/plugins/nerdtree.vim
source ~/.config/nvim/plugins/onedark.vim
source ~/.config/nvim/plugins/polyglot.vim
source ~/.config/nvim/plugins/surround.vim


call plug#end()
doautocmd User PlugLoaded

