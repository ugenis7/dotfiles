setlocal fo=awtq tw=80
let g:pandoc#folding#fold_yaml = 1

" Presentación de Beamer

nmap <F5> :Pandoc! beamer --pdf-engine=xelatex 
			\ -i
			\ --from markdown
			\ --variable lang=es-MX
			\ --variable aspectratio=169 
			\ --variable theme="Boadilla" 
			\ --variable colortheme="beaver" 
			\ --variable innertheme="rectangles"
			\ --variable mainfont="Lato" 
			\ --variable mathfont="TeX Gyre Pagella Math" 
			\ --variable fontsize=11pt<CR><CR>

" Texto en pdf

nmap <F6> :Pandoc! pdf --pdf-engine=xelatex
			\ -F ~/.vim/bundle/zotcite/python3/zotref.py 
			\ --citeproc 
			\ --csl ~/dotfiles/apa.csl 
			\ --variable lang=es-MX
			\ --variable mainfont="Lato"
			\ --variable mathfont="TeX Gyre Pagella Math"
			\ --variable fontsize=12pt
			\ --variable linestretch=1.5
			\ --variable geometry:letterpaper
			\ --variable geometry:margin="2cm"<CR><CR>

" Texto según COLTAM

nmap <F7> :Pandoc odt -f markdown 
			\ -F ~/.vim/bundle/zotcite/python3/zotref.py 
			\ --citeproc 
			\ --csl ~/dotfiles/apa.csl 
			\ --variable lang=es-MX 
			\ --reference-doc=~/dotfiles/coltam.odt<CR><CR>

" Texto imprimible

nmap <F8> :Pandoc odt -f markdown 
			\ -F ~/.vim/bundle/zotcite/python3/zotref.py 
			\ --citeproc 
			\ --csl ~/dotfiles/apa.csl 
			\ --variable lang=es-MX 
			\ --reference-doc=~/dotfiles/imprimible.odt<CR><CR>

