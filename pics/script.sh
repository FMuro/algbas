#!/bin/bash

pdflatex -shell-escape -synctex=1 -interaction=nonstopmode -file-line-error pics.tex
cd tikz
for f in *.pdf; do
  pdftocairo -svg "$f" "${f%.*}.svg"
  rsvg-convert -f svg -h 300 "${f%.*}.svg" > ""../../static/images/${f%.*}.svg""
done
cd ..