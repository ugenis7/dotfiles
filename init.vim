set nocompatible              		" We want the latest vim settings   

" Vundle list
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'
Plugin 'tpope/vim-vinegar'
Plugin 'tpope/vim-surround'
Plugin 'morhetz/gruvbox'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-pandoc/vim-pandoc'
Plugin 'vim-pandoc/vim-pandoc-syntax'
Plugin 'jalvesaq/Nvim-R'
Plugin 'scrooloose/syntastic'

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
set scrolloff=3		 	 	" Always have lines below
set colorcolumn=80			" Highlight the 80th column

let g:airline_powerline_fonts = 1 	" Pretty airline


" Search -----------------------------------------------------------------------
set hlsearch
set incsearch

" Mappings ---------------------------------------------------------------------
nmap ,ev :tabedit ~/gits/dotfiles/init.vim<cr> 	" Make it easy to edit the vimrc

nmap ,<space> :nohlsearch<cr>		" Stop highlighting a search

nnoremap ,n :bn<CR>			" Switching across buffers
nnoremap ,m :bp<cr>
nnoremap ,q :bd<cr>

nmap <F9> :make<cr>

" Autocommands -----------------------------------------------------------------
augroup autosourcing			" Automatically source the vimrc
	autocmd!
	autocmd BufWritePost ~/gits/dotfiles/init.vim source %
augroup END

au BufEnter *.txt *.tex *.md setlocal fo=awtq tw=80

set autoindent

" Split Management -------------------------------------------------------------
set splitright
set splitbelow

" NvimR ------------------------------------------------------------------------
let R_nvim_wd=1				" Same wd for Vim and R	

let R_objbr_place = "script,right"	" R console on the right
let R_objbr_place = "console,left"	" Vim to the left

let R_assign = 2			" Manual <- assignment

" Linting ----------------------------------------------------------------------
let g:syntastic_enable_r_lintr_checker = 1
let g:syntastic_r_checkers = ['lintr']

let g:syntastic_r_lintr_linters = "with_defaults(no_tab_linter = NULL, infix_spaces_linter = NULL)"
