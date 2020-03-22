set nocompatible              		" We want the latest vim settings   

" Vundle list
filetype off

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim' 		" This plugin manager
Plugin 'tpope/vim-vinegar'		" File manager
Plugin 'tpope/vim-surround'		" For surrounding text
Plugin 'morhetz/gruvbox' 		" Theme
Plugin 'vim-airline/vim-airline'	" The powerline
Plugin 'vim-pandoc/vim-pandoc'		" for integration with pandoc
Plugin 'vim-pandoc/vim-pandoc-syntax'	" For syntax checking
Plugin 'jalvesaq/Nvim-R'		" For using R inside nvim
Plugin 'scrooloose/syntastic'		" For style linting
Plugin 'godlygeek/tabular'		" For aligning in tabs
Plugin 'lervag/vimtex'			" Better support for latex
Plugin 'enricobacis/vim-airline-clock'  " A nice clock on airline
Plugin 'endel/vim-github-colorscheme'	" A light theme
Plugin 'ayu-theme/ayu-vim'

call vundle#end()
filetype plugin indent on

syntax enable
set number 
set relativenumber

set backspace=indent,eol,start 		" Make backspace behave normally

let maplocalleader = ","

" Visuals ----------------------------------------------------------------------
set termguicolors
let ayucolor="mirage"
colorscheme ayu

nmap <S-Insert> "+gP			" Paste clipboard
vmap <S-Del> "+y

set cursorline 			 	" Highlight the current line
set scrolloff=3		 	 	" Always have lines below
set colorcolumn=80			" Highlight the 80th column

let g:airline_powerline_fonts = 1 	" Pretty airline

" Search -----------------------------------------------------------------------
set hlsearch
set incsearch

" Mappings ---------------------------------------------------------------------
nmap ,ev :tabedit ~/proyectos/dotfiles/init.vim<cr> " Make it easy to edit the vimrc

nmap ,<space> :nohlsearch<cr>                  " Stop highlighting a search

nnoremap ,n :bn<CR>                            " Switching across buffers
nnoremap ,q :bd<cr>
nnoremap <space> za

vnoremap ,, y<c-w>wp<c-w>p 		" Paste in the other split

nmap <F9> :make<cr>

" Autocommands -----------------------------------------------------------------
augroup autosourcing			" Automatically source the vimrc
	autocmd!
	autocmd BufWritePost ~/proyectos/dotfiles/init.vim source %
augroup END

au BufEnter *.txt setlocal fo=awtq tw=80
au BufEnter *.tex setlocal fo=awtq tw=80
au BufEnter *.md setlocal fo=awtq tw=80

au BufEnter *.tex nnoremap <F5> :!pdflatex % %:r.pdf<Enter>
au BufEnter *.tex nnoremap <F6> :!mupdf %:r.pdf &<Enter>

au BufEnter *.md nnoremap <F5> :!pandoc -i % -o %:r.pdf<Enter>
au BufEnter *.md nnoremap <F6> :!mupdf %:r.pdf &<Enter>

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

" Vimtex
let g:tex_flavor='latex'
let g:vimtex_quickfix_mode=0
set conceallevel=1
let g:tex_conceal='abdmg'

" Snippets
let g:UltiSnipsExpandTrigger = '<tab>'
let g:UltiSnipsJumpForwardTrigger = '<tab>'
let g:UltiSnipsJumpBackwardTrigger = '<s-tab>'
