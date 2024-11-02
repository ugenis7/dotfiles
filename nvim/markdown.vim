setlocal fo=awtq tw=80
let g:pandoc#folding#fold_yaml = 1

" Presentación de Beamer

nmap <F5> :Pandoc! pdf -f markdown<CR><CR>

nmap <F6> :Pandoc! beamer -i --pdf-engine=xelatex<CR><CR>

" Texto según COLTAM

nmap <F7> :Pandoc! odt -f markdown 
			\ -F ~/.vim/bundle/zotcite/python3/zotref.py 
			\ --citeproc 
			\ --csl ~/dotfiles/pandoc-templates/apa.csl
			\ --reference-doc=~/dotfiles/pandoc-templates/coltam.odt<CR><CR>

nmap <F8> :Pandoc! pdf -f markdown 
			\ -F ~/.vim/bundle/zotcite/python3/zotref.py 
			\ --citeproc 
			\ --csl ~/dotfiles/pandoc-templates/apa.csl<CR><CR>
