#!/bin/bash

pdflatex -shell-escape -synctex=1 -interaction=nonstopmode -file-line-error pics.tex
cd tikz
for f in *.pdf; do 
# EACH OF THE FOLLOWING COMMMENTS SHOULD BE BESIDE OF THE LINES BELOW BUT BASH SCRIPS DON'T ALLOW TO COMMENT SPLIT COMMANDS IN THIS WAY
# PDF to PNG (and other formats) conversion tool
# convert to PNG
# just converts the first page of the PDF (which in this case has a single page anyway) and doesn't add counter to the output file name
# output height in pixels
# keep aspect ratio
# take filename.pdf to filename.png
  pdftocairo \
  -png \
  -singlefile \
  -scale-to-y 300 \
  -scale-to-x -1 \
  "$f" "../../static/images/${f%.*}"
done
cd ..