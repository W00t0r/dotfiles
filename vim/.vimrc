set exrc
set guicursor=
set relativenumber
set number
set nohlsearch
set hidden
set noerrorbells

set tabstop=4
set softtabstop=4
set shiftwidth=4
set expandtab
set smartindent
set nowrap

" History stuff
set noswapfile
set nobackup
set undodir=~/.vim/undodir
set undofile

set incsearch
set termguicolors
set scrolloff=8
set noshowmode
set completeopt=menuone,noinsert,noselect
set colorcolumn=80
set signcolumn=yes

" Give more space for displaying messages.
set cmdheight=2

" Having longer updatetime (default is 4000 ms = 4 s) leads to noticeable
" delays and poor user experience
set updatetime=50

call plug#begin('~/.vim/plugged')
Plug 'nvim-lua/popup.nvim'
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'
Plug 'gruvbox-community/gruvbox'
Plug 'yuezk/vim-js'
Plug 'maxmellon/vim-jsx-pretty'
call plug#end()

colorscheme gruvbox
highlight Normal guibg=none

let mapleader = " "
nnoremap <leader>ff :lua require('telescope.builtin').find_files()<cr>

vnoremap J :m '>+1<CR>gv=gv
vnoremap K :m '>-2<CR>gv=gv
