setlocal fo=awtq tw=80
let g:pandoc#folding#fold_yaml = 1

" Presentación de Beamer

nmap <F5> :Pandoc! pdf -f markdown<CR><CR>

nmap <F6> :Pandoc! beamer --pdf-engine=xelatex --incremental<CR><CR>

nmap <F7> :Pandoc! pdf -f markdown 
			\ -F ~/.vim/bundle/zotcite/python3/zotref.py 
			\ --citeproc 
			\ --csl ~/dotfiles/pandoc-templates/apa.csl<CR><CR>
