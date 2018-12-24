.PHONY: all
all: report.pdf

report.pdf: report.bbl 	\
			report.tex 	\
			sections/title-page.tex \
			sections/edge-detection.tex \
			sections/hog.tex \
			sections/human-detection.tex
	pdflatex report.tex

report.bbl: report.bib 
	pdflatex report.tex
	bibtex report
	pdflatex report.tex
