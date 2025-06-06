" Vundle list
filetype off

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'chrisbra/csv.vim'		" For viewing csv files
Plugin 'dhruvasagar/vim-table-mode'     " Tables in Markdown
Plugin 'folke/tokyonight.nvim'		" Colorscheme
Plugin 'godlygeek/tabular'		" For aligning in tabs
Plugin 'jalvesaq/Nvim-R'		" For using R inside nvim
Plugin 'jiangmiao/auto-pairs'		" Automatically complete pairs
Plugin 'preservim/nerdtree'		" More complex file manager
Plugin 'SirVer/ultisnips' 		" For code snippets
Plugin 'tpope/vim-fugitive'		" Git integration
Plugin 'tpope/vim-surround'		" For surrounding text
Plugin 'vim-airline/vim-airline'	" The powerline
Plugin 'vim-airline/vim-airline-themes' " Themes for the powerline
Plugin 'vim-pandoc/vim-pandoc'          " For exporting documents
Plugin 'vim-pandoc/vim-pandoc-syntax'   " For syntax highlighting
Plugin 'VundleVim/Vundle.vim' 		" This plugin manager

call vundle#end()
filetype plugin indent on

" Visuals ----------------------------------------------------------------------
syntax enable
set number
set relativenumber
set spelllang=es
set showtabline=1                       " Show tabs when multiple tabs are open

set termguicolors
colorscheme tokyonight-storm

nnoremap <S-Insert> "+gP			" Paste clipboard
vnoremap <S-Del> "+y

set cursorline 			 	" Highlight the current line
set cursorcolumn                        " Highlight the current column
set scrolloff=3		 	 	" Always have lines below
set colorcolumn=80			" Highlight the 80th column

let g:airline_powerline_fonts = 1 	" Pretty airline
let g:airline#extensions#wordcount#filetypes = 'pandoc'

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
nnoremap - :Explore<CR>

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

" Indentation -----------------------------------------------------------------

set tabstop=8
set expandtab
set shiftwidth=2  " indenting is 2 spaces
set autoindent

" NvimR ------------------------------------------------------------------------
"let R_external_term = 'kitty --start-as=maximized --config ~/dotfiles/kitty/r.conf'
let R_silent_term = 1 " No mostrar errores de kitty"

let R_auto_start=2			" Auto start when R file is open

let R_assign = 0			" Manual <- assignment

let R_indent_commented = 0
let R_args = ['--no-save', '--quiet']
let R_clear_line = 1

let R_pdfviewer = 'evince'
let R_openpdf = 1
let R_openhtml = 2

let R_hi_fun_paren = 1 "Solo iluminar funciones con paréntesis

" Linting ----------------------------------------------------------------------
let g:airline#extensions#ale#enabled = 1

let g:ale_linter_aliases = {'pandoc': 'markdown'}

let g:ale_fixers = {
\   '*': ['remove_trailing_lines'],
\}

let g:ale_fix_on_save = 1

let r_indent_align_args = 0

let g:ale_markdown_markdownlint_options='--disable MD025'

" Table Mode
let g:table_mode_corner='|'

" NerdTree
let g:netrw_bufsettings="noma nomod nonu nobl nowrap ro rnu"

" Ultisnips
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<tab>"
let g:UltiSnipsJumpBackwardTrigger="<s-tab>"
let g:UltiSnipsSnippetDirectories=["~/dotfiles/my_snippets/"]

" Pandoc
let g:pandoc#formatting#equalprg='' " Ignore = in Rmd files
