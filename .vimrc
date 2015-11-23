" Use the space key as leader
let mapleader = "\<space>"

" Split edit vimrc
nmap <leader>vr :sp $MYVIMRC<cr>

" Source relaod vimrc
nmap <leader>so :source $MYVIMRC<cr>

" plugins
call plug#begin('~/.vim/plugged')
Plug 'ctrlpvim/ctrlp.vim'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-rails'
Plug 'tpope/vim-commentary'
Plug 'thoughtbot/vim-rspec'
Plug 'tpope/vim-dispatch'
Plug 'tomasr/molokai'
call plug#end()

" vim settings
filetype plugin indent on
syntax on
set background=dark
set cursorline
set expandtab
set hlsearch
set laststatus=2
set noswapfile
set nocompatible
set number
set relativenumber
set ruler
set showcmd
set softtabstop=2
set tabstop=2
set wildmenu

" escape shortcut
imap jk <esc>
imap kj <esc>

" silver searcher
let g:ctrl_user_command = 'ag %s -l --hidden --nocolor -g ""'
let g:ctrlp_use_caching = 0

let g:rspec_command = "Dispatch rspec {spec}"
" Rspec vim.mappings
map <Leader>t :call RunCurrentSpecFile()<CR>
map <Leader>s :call RunNearestSpec()<CR>
map <Leader>l :call RunLastSpec()<CR>
map <leader>a :call RunAllSpecs()<CR>

" color scheme
colorscheme molokai
