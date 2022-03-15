set nocompatible              		" We want the latest vim settings   

" Vundle list
filetype off

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim' 		" This plugin manager
Plugin 'tpope/vim-vinegar'		" File manager
Plugin 'tpope/vim-surround'		" For surrounding text
Plugin 'vim-airline/vim-airline'	" The powerline
Plugin 'vim-airline/vim-airline-themes'
Plugin 'vim-pandoc/vim-pandoc'		" for integration with pandoc
Plugin 'vim-pandoc/vim-pandoc-syntax'	" For syntax checking
Plugin 'jalvesaq/Nvim-R'		" For using R inside nvim
Plugin 'scrooloose/syntastic'		" For style linting
Plugin 'godlygeek/tabular'		" For aligning in tabs
Plugin 'lervag/vimtex'			" Better support for latex
Plugin 'dhruvasagar/vim-table-mode'     " Tables in Markdown
Plugin 'chriskempson/base16-vim'
Plugin 'jalvesaq/zotcite'
Plugin 'junegunn/limelight.vim'
Plugin 'junegunn/goyo.vim'
Plugin 'jiangmiao/auto-pairs'
Plugin 'tpope/vim-fugitive'

call vundle#end()
filetype plugin indent on


" Visuals ----------------------------------------------------------------------
syntax enable
set number 
set relativenumber
set spelllang=es

set backspace=indent,eol,start 		" Make backspace behave normally

set termguicolors
colorscheme base16-bright

nmap <S-Insert> "+gP			" Paste clipboard
vmap <S-Del> "+y

set cursorline 			 	" Highlight the current line
set cursorcolumn
set scrolloff=3		 	 	" Always have lines below
set colorcolumn=80			" Highlight the 80th column

let g:airline_powerline_fonts = 1 	" Pretty airline
let g:airline#extensions#wordcount#filetypes = 'tex\|pandoc'
let g:airline_theme='base16_dracula'
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#formatter = 'default'

" Search -----------------------------------------------------------------------
set hlsearch
set incsearch

" Mappings ---------------------------------------------------------------------
let mapleader=","
let maplocalleader = ','

nmap <leader>ev :tabedit ~/dotfiles/init.vim<cr> " Edit this file

map <silent> <leader><space> :nohlsearch<cr>      " Stop highlighting a search

nnoremap <leader>nn :bn<CR>                        " Switching across buffers
nnoremap <leader>q :bd<cr>
nnoremap <space> za

nmap <F9> :make<cr>

" Autocommands -----------------------------------------------------------------
augroup autosourcing			" Automatically source the vimrc
	autocmd!
	autocmd BufWritePost ~/dotfiles/init.vim source %
augroup END

au BufEnter *.txt setlocal fo=awtq tw=80

au BufEnter *.tex setlocal fo=awtq tw=80
au BufEnter *.tex nnoremap <F5> :!xelatex % %:r.pdf<Enter>
au BufEnter *.tex nnoremap <F6> :!mupdf %:r.pdf &<Enter>

au BufEnter *.md setlocal fo=awtq tw=80
let g:pandoc#folding#fold_yaml = 1

nmap <F5> :Pandoc! beamer --pdf-engine=xelatex 
			\ -i
			\ --from markdown
			\ --variable lang=es-MX
			\ --variable aspectratio=169 
			\ --variable theme="Boadilla" 
			\ --variable colortheme="dolphin" 
			\ --variable innertheme="rectangles"
			\ --variable mainfont="Source Sans 3" 
			\ --variable mathfont="TeX Gyre Pagella Math" 
			\ --variable fontsize=11pt<CR><CR>

nmap <F6> :Pandoc! pdf --pdf-engine=xelatex
			\ --variable lang=es-MX
			\ --variable mainfont="Source Sans 3"
			\ --variable mathfont="TeX Gyre Pagella Math"
			\ --variable fontsize=12pt
			\ --variable linestretch=1.25
			\ --variable geometry:letterpaper
			\ --variable geometry:margin="1in"<CR><CR>

nmap <F7> :Pandoc! odt<CR><CR>

au BufEnter *.R iabbrev %% %>%
au BufEnter *.R set foldmethod=marker

au BufEnter *.Rmd setlocal fo=awtq tw=80
au BufNewFile *.Rmd r ~/dotfiles/template.Rmd
au BufEnter *.Rmd iabbrev %% %>%

set autoindent

" NvimR ------------------------------------------------------------------------
set splitright
set splitbelow

let R_auto_start=2			" Auto start when R file is open
let R_nvim_wd=1				" Same wd for Vim and R	

let R_assign = 0			" Manual <- assignment

let Rout_more_colors = 1
let R_indent_commented = 0
let R_rconsole_width = winwidth(0) / 2
autocmd VimResized * let R_rconsole_width = winwidth(0) / 2
let R_args = ['--no-save', '--quiet']

" Linting ----------------------------------------------------------------------
let g:syntastic_enable_r_lintr_checker = 1
let g:syntastic_r_checkers = ['lintr']

let g:syntastic_r_lintr_linters = "with_defaults(no_tab_linter = NULL, infix_spaces_linter = NULL)"

" Vimtex
let g:tex_flavor='latex'
let g:vimtex_quickfix_mode=0
set conceallevel=1
let g:tex_conceal='abdmg'

" Table Mode
let g:table_mode_corner='|'

let g:netrw_bufsettings="noma nomod nonu nobl nowrap ro rnu"

" Goyo
let g:goyo_width=85

autocmd! User GoyoEnter Limelight
autocmd! User GoyoLeave Limelight!

nmap <Leader>g :Goyo<CR>
