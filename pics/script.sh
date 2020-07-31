#!/bin/bash

pdflatex -shell-escape -synctex=1 -interaction=nonstopmode -file-line-error pics.tex
cd tikz
for f in *.pdf; do 
  pdftocairo -svg "$f" "../../static/images/${f%.*}.svg"
done
cd ..