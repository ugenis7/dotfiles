set nocompatible              		" We want the latest vim settings   

" Vundle list
filetype off

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

"Plugin 'jiangmiao/auto-pairs'
Plugin 'VundleVim/Vundle.vim' 		" This plugin manager
Plugin 'chrisbra/csv.vim'		" For viewing csv files
Plugin 'chriskempson/base16-vim'	" Better colors
Plugin 'dhruvasagar/vim-table-mode'     " Tables in Markdown
Plugin 'godlygeek/tabular'		" For aligning in tabs
Plugin 'jalvesaq/Nvim-R'		" For using R inside nvim
Plugin 'jalvesaq/zotcite'		" Citing with Zotero
Plugin 'junegunn/goyo.vim'		" Clean environment
Plugin 'junegunn/limelight.vim'		" Focus writing
Plugin 'lervag/vimtex'			" Better support for latex
Plugin 'preservim/nerdtree'		" More complex file manager
Plugin 'scrooloose/syntastic'		" For style linting
Plugin 'tpope/vim-fugitive'		" Git integration
Plugin 'tpope/vim-surround'		" For surrounding text
Plugin 'tpope/vim-vinegar'		" File manager
Plugin 'vim-airline/vim-airline'	" The powerline
Plugin 'vim-airline/vim-airline-themes'
Plugin 'vim-pandoc/vim-pandoc'		" for integration with pandoc
Plugin 'vim-pandoc/vim-pandoc-syntax'	" For syntax checking
Plugin 'frazrepo/vim-rainbow'

call vundle#end()
filetype plugin indent on


" Visuals ----------------------------------------------------------------------
syntax enable
set number 
set relativenumber
set spelllang=es

set backspace=indent,eol,start 		" Make backspace behave normally

set termguicolors
colorscheme base16-material-darker

nmap <S-Insert> "+gP			" Paste clipboard
vmap <S-Del> "+y

set cursorline 			 	" Highlight the current line
set cursorcolumn
set scrolloff=3		 	 	" Always have lines below
set colorcolumn=80			" Highlight the 80th column

let g:airline_powerline_fonts = 1 	" Pretty airline
let g:airline#extensions#wordcount#filetypes = 'tex\|pandoc'
let g:airline_theme='base16_material_darker'
let g:airline#extensions#tabline#enabled = 1

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

nmap <C-n> :tabnext<CR>
nmap <C-p> :tabprevious<CR>
nmap <C-s> :tabnew<CR>
nmap <C-x> :tabclose<CR>
nnoremap <C-e> :NERDTreeToggle<CR>

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

nmap <F7> :Pandoc odt -f markdown 
			\ -F ~/.vim/bundle/zotcite/python3/zotref.py 
			\ --citeproc 
			\ --csl ~/dotfiles/apa.csl 
			\ --variable lang=es-MX 
			\ --reference-doc=~/dotfiles/coltam.odt<CR><CR>

nmap <F8> :Pandoc odt -f markdown 
			\ -F ~/.vim/bundle/zotcite/python3/zotref.py 
			\ --citeproc 
			\ --csl ~/dotfiles/apa.csl 
			\ --variable lang=es-MX 
			\ --reference-doc=~/dotfiles/imprimible.odt<CR><CR>

au BufEnter *.R iabbrev %% %>%
au BufEnter *.R set foldmethod=marker
au BufEnter *.R setlocal fo=acrqwlj tw=80

au BufEnter *.Rmd setlocal fo=awtq tw=80
au BufEnter *.Rmd iabbrev %% %>%
au BufNewFile *.Rmd r ~/dotfiles/template.Rmd

set autoindent

" NvimR ------------------------------------------------------------------------
let R_auto_start=2			" Auto start when R file is open

let R_start_libs = 'base,stats,graphics,grDevices,utils,methods,tidyverse,lubridate'

let R_assign = 0			" Manual <- assignment

let R_indent_commented = 0
let R_args = ['--no-save', '--quiet']

let R_external_term = 1

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

" NerdTree
let g:netrw_bufsettings="noma nomod nonu nobl nowrap ro rnu"

" Goyo
let g:goyo_width=85

autocmd! User GoyoEnter Limelight
autocmd! User GoyoLeave Limelight!

nmap <Leader>g :Goyo<CR>

let g:rainbow_active = 1
