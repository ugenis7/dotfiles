setlocal fo=awtq tw=80
let g:pandoc#folding#fold_yaml = 1

" Presentación de Beamer

nmap <F5> :Pandoc! pdf -f markdown --citeproc<CR><CR>

nmap <F6> :Pandoc! beamer --pdf-engine=xelatex --incremental --citeproc<CR><CR>

nmap <F7> :Pandoc! odt -f markdown 
			\ --citeproc 
			\ --reference-doc=~/dotfiles/pandoc-templates/referencia.odt<CR><CR>
