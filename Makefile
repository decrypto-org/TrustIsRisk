all: fc17.pdf thesis.pdf

#.ONESHELL:
fc17.pdf: fc17/* common/*
	export TEXINPUTS=.:./fc17//:./common//:; \
	pdflatex -shell-escape fc17.tex; \
	pdflatex -shell-escape fc17.tex; \
	rm -rf fc17.aux fc17.log fc17.out

thesis.pdf: thesis/* common/*
	export TEXINPUTS=.:./thesis//:./common//:; \
	pdflatex -shell-escape thesis.tex; \
	pdflatex -shell-escape thesis.tex; \
	rm -rf thesis.aux thesis.log thesis.out thesis.toc thesis.lof thesis.lot

clean:
	rm -rf *.aux *.log *.out *.toc *.lof *.lot *.pdf
