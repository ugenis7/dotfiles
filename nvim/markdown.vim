setlocal fo=tqn tw=80 formatoptions-=r comments=b:>,b:-

let g:pandoc#folding#fold_yaml = 1

nnoremap Q gqap
vnoremap Q gq

" Presentación de Beamer

nmap <F5> :Pandoc! pdf -f markdown --citeproc<CR><CR>

nmap <F6> :Pandoc! beamer --incremental=true --pdf-engine=xelatex --citeproc<CR><CR>

nmap <F7> :Pandoc! odt -f markdown 
			\ --citeproc 
			\ --reference-doc=~/dotfiles/pandoc-templates/referencia.odt<CR><CR>
