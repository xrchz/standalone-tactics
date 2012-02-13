paper.pdf: paper.tex paper.bib
	pdflatex $<
	pdflatex $<
	bibtex paper
	pdflatex $<
