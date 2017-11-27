# LaTeX makefile

FILE=knights-tour

all: $(FILE).pdf

.PHONY: clean
clean:
	rm $(FILE).log $(FILE).aux $(FILE).bbl $(FILE).blg $(FILE).out # $(FILE).toc

$(FILE).pdf: $(FILE).tex
	pdflatex $(FILE)
	pdflatex $(FILE)
	bibtex $(FILE)||true
	pdflatex $(FILE)
	pdflatex $(FILE)
