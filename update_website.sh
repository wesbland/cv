#!/bin/bash

export TMPDIR=.
make
mv cv.pdf wesley_bland.pdf
bibtex2html -nokeys -d -r -s acm -css website/css/style.css -noheader -nofooter -nodoc -nokeywords papers.bib
scp wesley_bland.pdf papers.html papers_bib.html login1.mcs.anl.gov:public_html/
make clean
#rm wesley_bland.pdf papers.html papers_bib.html
