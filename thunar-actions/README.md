# Actions for thunar

## Abrir terminal

Condición: *

kitty --directory %f


## Separar PDF

Condición: *.pdf (otros archivos)

/home/coltam05/dotfiles/thunar-actions/pdfsep.sh %F

## Unir PDF

Condición: *.pdf (otros archivos)

pdfunite %F $(mktemp -p %d --suffix=.pdf pdf_XXXXXX)
