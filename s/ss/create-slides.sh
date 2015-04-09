#!/bin/bash

set -e
muse-compile.pl --ttdir yapc-templates --tex slides.muse

if [ ! -f slides.tex ]; then
    echo "No slides found!"
    exit 2
fi

# hacky
sed -i 's/\\section{/\\end{frame}\n\n\\begin{frame}{/' slides.tex

xelatex slides.tex
xelatex slides.tex
xelatex slides.tex

rm slides.{aux,nav,out,snm,toc}
