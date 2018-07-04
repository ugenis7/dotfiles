set nocompatible              		" We want the latest vim settings   

" Vundle list
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'
Plugin 'tpope/vim-vinegar'
Plugin 'scrooloose/nerdtree'
Plugin 'suan/vim-instant-markdown'
Plugin 'morhetz/gruvbox'
Plugin 'fenetikm/falcon'
Plugin 'altercation/vim-colors-solarized'
Plugin 'vim-airline/vim-airline'
Plugin 'xuhdev/vim-latex-live-preview'
Plugin 'mhinz/vim-janah'

call vundle#end()            " required
filetype plugin indent on    " required

syntax enable
set number 
set relativenumber

set backspace=indent,eol,start 		" Make backspace behave normally
filetype plugin on			" Useful for csv plugin

let maplocalleader = ","

" Visuals ----------------------------------------------------------------------
set background=dark
colorscheme gruvbox
set guifont=Fira\ Mono\ for\ Powerline\ 9

set guioptions-=r 			" Remove the scrollbars 
set guioptions-=R
set guioptions-=l
set guioptions-=L

nmap <S-Insert> "+gP			" Paste clipboard

set guioptions-=m 			" Remove the menubar from gui
set guioptions-=T			" Remove the Toolbar from gui

set cursorline 			 	" Highlight the current line
set scrolloff=10	 	 	" Always have 10 lines below
set colorcolumn=80			" Highlight the 80th column

let g:airline_powerline_fonts = 1 	" Pretty airline


" Search -----------------------------------------------------------------------
set hlsearch
set incsearch

" Mappings ---------------------------------------------------------------------
nmap ,ev :tabedit ~/gits/dotfiles/init.vim<cr> 	" Make it easy to edit the vimrc

nmap ,<space> :nohlsearch<cr>		" Stop highlighting a search

nmap ,1 :NERDTreeToggle<cr>		" Make NERDTree easier to toggle

inoremap <S-Tab> <Esc>/<++><Enter>"_c4l " Jumping points

nnoremap ,n :bn<CR>			" Switching across buffers
nnoremap ,m :bp<cr>

nmap <F5> :LLPStartPreview<cr>

" Autocommands -----------------------------------------------------------------
augroup autosourcing			" Automatically source the vimrc
	autocmd!
	autocmd BufWritePost ~/.config/nvim/init.vim source %
augroup END

au BufEnter *.txt setlocal fo=awtq tw=80
au BufEnter *.tex setlocal fo=awtq tw=80

set autoindent

" Split Management -------------------------------------------------------------
set splitbelow
set splitright

" NvimR ------------------------------------------------------------------------
let R_nvim_wd=1				" Same wd for Vim and R	

let R_objbr_place = "script,right"	" R console on the right
let R_objbr_place = "console,left"	" Vim to the left

let R_assign = 2			" Manual <- assignment

" NERDTree ---------------------------------------------------------------------
let NERDTreeHijackNetrw = 0		" Don't take - from vinegar-vim

" Latex-live-preview -----------------------------------------------------------
let g:livepreview_previewer = 'zathura'	" Use zathura for live preview of .tex
