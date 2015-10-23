" Set colorscheme
colorscheme desert

set nocompatible               " be iMproved
set laststatus=2               " Always show the statusline
set encoding=utf-8             " Necessary to show Unicode glyphs
set t_Co=256                   " Explicitly tell Vim that the terminal supports 256 colors
filetype off                   " required!

"Changing Leader Key
let mapleader = ","

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle
" required!
Plugin 'VundleVim/Vundle.vim'

" My Plugins here:
Plugin 'Lokaltog/vim-easymotion'
Plugin 'scrooloose/nerdtree'
Plugin 'ctrlp.vim'
Plugin 'Lokaltog/vim-powerline'
Plugin 'stephenmckinney/vim-solarized-powerline'
Plugin 'vim-flake8'
Plugin 'Tagbar'
Plugin 'jade.vim'

" Powerline configuration
let g:Powerline_symbols = 'unicode'
let g:Powerline_colorscheme = 'solarized256'

" Tagbar binding
nnoremap <silent> <F9> :TagbarToggle<CR>

" Tab options
set tabstop=2
set shiftwidth=2
set softtabstop=2
set expandtab
set shiftround

" Some common options
syntax on
set autoindent
set smartindent
set scrolloff=5
set showmode
set showcmd
set hidden
set wildmenu
set wildmode=longest:full
set complete=.,t,d,i,k
set cursorline
set ttyfast
set ruler
set backspace=indent,eol,start
set nowrap
set showmatch

" Make sure the lines don't become too long
set textwidth=120
au BufWinEnter * let w:m2=matchadd('ErrorMsg', '\%>120v.\+', -1)

" All the mouse actions should be available
set mouse=a

" Enable vim-multiedit mappings
let g:multiedit_nomappings = 0

" Some Flake8 configurations and autostart
let g:flake8_max_line_length=120
let g:flake8_max_complexity=8
let g:flake8_ignore="E712,E711"
" autocmd BufWritePost *.py call Flake8()

" Some options to make searching more pleasant
set hlsearch
set incsearch
nmap <F6> :set hlsearch!<CR>
nnoremap n nzz
nnoremap N Nzz
nnoremap * *zz
nnoremap # #zz
nnoremap g* g*zz
nnoremap g# g#zz

" Map space to centering the current line
nmap <space> zz

" Sort imports (or something else) alphabetically
vnoremap <Leader>s :sort<CR>

" Create a sidebar window with the explorer in it
" nmap <Leader><C-o> :NERDTreeToggle expand("%:h")<CR>

" Create a split window and show the definition of item under cursor
nmap <C-space> :stj <C-R><C-W><CR>

" Create mapping for lvimgrep
map <F4> :execute "lvimgrep /" . expand("<cword>") . "/j **/*.py" <Bar> lw<CR>

" Binding for Tagbar
nmap <leader>l <ESC>:TagbarToggle<cr>
imap <leader>l <ESC>:TagbarToggle<cr>i

" set relativenumber
set number
set norelativenumber

" set undofile
set shell=/bin/bash
set lazyredraw
set matchtime=3

" Set title to window
set title

" Dictionary path, from which the words are being looked up.
set dictionary=/usr/share/dict/words

" Better copy and paste
set pastetoggle=<F3>
"set clipboard=unnamed

" Disable help buttons
inoremap <F1> <ESC>
nnoremap <F1> <ESC>
vnoremap <F1> <ESC>

" Define the tags file
set tags=~/mytags

" Set vim to save the file on focus out
au FocusLost * :update

" Define some settings for ctrlp
let g:ctrlp_cache_dir = $HOME.'/.cache/ctrlp'
set wildignore+=*.hg,*.svn,*.git "Version control files"
set wildignore+=*.pyc "Python compiled files"
set wildignore+=*.sw? "Vim swap files"
set wildignore+=*.tmp "My own tmp files"

let g:ctrlp_extensions = ['tag']
let g:ctrlp_max_height = 30
let g:ctrlp_dotfiles = 0


" Make Sure that Vim returns to the same line when we reopen a file"
augroup line_return
    au!
    au BufReadPost *
        \ if line("'\"") > 0 && line("'\"") <= line("$") |
        \ execute 'normal! g`"zvzz' |
        \ endif
augroup END

call vundle#end()
filetype plugin indent on     " required!
set ofu=syntaxcomplete#Complete

" Show whitespaces
highlight ExtraWhitespace ctermbg=red guibg=red
match ExtraWhitespace /\s\+$/
autocmd BufWinEnter * match ExtraWhitespace /\s\+$/
autocmd InsertEnter * match ExtraWhitespace /\s\+\%#\@<!$/
autocmd InsertLeave * match ExtraWhitespace /\s\+$/
autocmd BufWinLeave * call clearmatches()

" Automatic reloading of .vimrc
autocmd! bufwritepost ~/.vimrc source %
