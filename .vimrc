set nocompatible              		" We want the latest vim settings   

so ~/.vim/plugins.vim			" File with list of Plugins for vundle

syntax enable
set number 
set relativenumber

set backspace=indent,eol,start 		" Make backspace behave normally
filetype plugin on			" Useful for csv plugin

let maplocalleader = ","

" Visuals ----------------------------------------------------------------------
colorscheme afterglow

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
nmap ,ev :tabedit ~/.vimrc<cr>  	" Make it easy to edit the vimrc file.

nmap ,<space> :nohlsearch<cr>		" Stop highlighting a search

nmap ,1 :NERDTreeToggle<cr>		" Make NERDTree easier to toggle

inoremap <S-Tab> <Esc>/<++><Enter>"_c4l " Jumping points

nmap <F5> :LLPStartPreview<cr>

" Autocommands -----------------------------------------------------------------
augroup autosourcing			" Automatically source the vimrc
	autocmd!
	autocmd BufWritePost .vimrc source %
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
let g:livepreview_previewer = 'zathura'	" Use mupdf for live preview
