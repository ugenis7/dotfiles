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
Plugin 'lervag/vimtex'			" Better support for latex
Plugin 'preservim/nerdtree'		" More complex file manager
Plugin 'scrooloose/syntastic'		" For style linting
Plugin 'tpope/vim-fugitive'		" Git integration
Plugin 'tpope/vim-surround'		" For surrounding text
Plugin 'vim-airline/vim-airline'	" The powerline
Plugin 'vim-airline/vim-airline-themes'
Plugin 'vim-pandoc/vim-pandoc'		" for integration with pandoc
Plugin 'vim-pandoc/vim-pandoc-syntax'	" For syntax checking
Plugin 'frazrepo/vim-rainbow'
Plugin 'SirVer/ultisnips' 		" For code snippets

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

nmap <leader>ev :tabedit ~/dotfiles/nvim/init.vim<cr> " Edit this file

nnoremap <silent> <leader><space> :nohlsearch<cr> " Stop highlighting a search

nnoremap <C-Tab> :bn<CR>                        " Switching across buffers
nnoremap <C-S-Tab> :bp<CR>                      " Switching across buffers
nnoremap <leader>1 :b1<CR> 			" Go to main buffer
nnoremap <C-t> :enew<CR>			" New buffer
nnoremap <C-q> :bd<CR>				" Close buffer
nnoremap <space> za				" Toggle folds

nmap <F9> :make<cr>

nnoremap <C-n> :tabnext<CR>			" Next tab
nnoremap <C-p> :tabprev<CR>			" Previous tab
nnoremap <C-e> :NERDTreeToggle<CR>

" Autocommands -----------------------------------------------------------------
augroup autosourcing			" Automatically source the vimrc
	autocmd!
	autocmd BufWritePost ~/dotfiles/nvim/init.vim source %
augroup END

au BufEnter *.md source ~/dotfiles/nvim/markdown.vim
au BufEnter *.Rmd source ~/dotfiles/nvim/markdown.vim
au BufEnter *.R source ~/dotfiles/nvim/rfiles.vim

au BufEnter *.txt setlocal fo=awtq tw=80

au BufEnter *.tex setlocal fo=awtq tw=80
au BufEnter *.tex nnoremap <F5> :!xelatex % %:r.pdf<Enter>
au BufEnter *.tex nnoremap <F6> :!mupdf %:r.pdf &<Enter>

set autoindent

" NvimR ------------------------------------------------------------------------
let R_auto_start=2			" Auto start when R file is open

let R_start_libs = 'base,stats,graphics,grDevices,utils,methods,tidyverse,lubridate'

let R_assign = 0			" Manual <- assignment

let R_indent_commented = 0
let R_args = ['--no-save', '--quiet']
let R_clear_line = 1

let R_openpdf = 1
let R_openhtml = 2

let R_hi_fun_paren = 1

let R_external_term = 1
let Rout_more_colors = 1

" Linting ----------------------------------------------------------------------
let g:syntastic_enable_r_lintr_checker = 1
let g:syntastic_r_checkers = ['lintr']

let g:syntastic_r_lintr_linters = "with_defaults(no_tab_linter = NULL)"

" Vimtex
let g:tex_flavor='latex'
let g:vimtex_quickfix_mode=0
set conceallevel=1
let g:tex_conceal='abdmg'

" Table Mode
let g:table_mode_corner='|'

" NerdTree
let g:netrw_bufsettings="noma nomod nonu nobl nowrap ro rnu"

" Ultisnips
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<tab>"
let g:UltiSnipsJumpBackwardTrigger="<s-tab>"
let g:UltiSnipsSnippetDirectories=["UltiSnips", "my_snippets"]
