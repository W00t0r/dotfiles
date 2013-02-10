" Set colorscheme
colorscheme desert

set nocompatible               " be iMproved
set laststatus=2               " Always show the statusline
set encoding=utf-8             " Necessary to show Unicode glyphs
set t_Co=256                   " Explicitly tell Vim that the terminal supports 256 colors
filetype off                   " required!

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

" let Vundle manage Vundle
" required! 
Bundle 'gmarik/vundle'

" My Bundles here:
Bundle 'Color-Sampler-Pack'
Bundle 'ScrollColors'
Bundle 'Lokaltog/vim-easymotion'
Bundle 'ctrlp.vim'
Bundle 'Lokaltog/vim-powerline'
Bundle 'LaTeX-Suite-aka-Vim-LaTeX'

" Powerline configuration
let g:Powerline_symbols = 'unicode'

syntax on
set smartindent
set autoindent
set expandtab
set tabstop=4
set shiftwidth=4
set nowrap

set incsearch
set showmatch
set hlsearch

set wildmenu
set background=dark

" Make sure the lines don't become too long
set textwidth=120
au BufWinEnter * let w:m2=matchadd('ErrorMsg', '\%>120v.\+', -1)

" All the mouse actions should be available as well
set mouse=a

" Map space to centering the current line
nmap <space> zz

" Make sure the search results always show up in the middle
nmap n nzz:set hlsearch<CR>
nmap N Nzz:set hlsearch<CR>

" Toggle search highlighting
map <silent><F6> :set hlsearch!<CR>

filetype plugin indent on     " required!
set ofu=syntaxcomplete#Complete

" Set all the latex-suite configurations
autocmd FileType tex setlocal shiftwidth=2 tabstop=2 spell spelllang=en_us

set grepprg=grep\ -nH\ $*
let g:tex_flavor = "latex"
let g:Tex_ViewRule_pdf = 'mupdf'
let g:Tex_ViewRule_dvi = 'xdvi'
let g:Tex_ViewRule_ps = 'zathura'
let g:Tex_FormatDependency_pdf = 'dvi,ps,pdf'
let g:Tex_FormatDependency_ps = 'dvi,ps'
let g:Tex_CompileRule_dvi = 'latex -shell-escape --interaction=nonstopmode $*'
let g:Tex_CompileRule_ps = 'dvips -Ppdf -o $*.ps $*.dvi'
let g:Tex_CompileRule_pdf = 'ps2pdf $*.ps'
let g:Tex_DefaultTargetFormat = 'pdf'
