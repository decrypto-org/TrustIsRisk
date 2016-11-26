all: fc17.pdf thesis.pdf algorithms.pdf

#.ONESHELL:
fc17.pdf: fc17/* common/*
	export TEXINPUTS=.:./fc17//:./common//:; \
	pdflatex -shell-escape fc17.tex; \
	pdflatex -shell-escape fc17.tex

thesis.pdf: thesis/* common/*
	export TEXINPUTS=.:./thesis//:./common//:; \
	pdflatex -shell-escape thesis.tex; \
	pdflatex -shell-escape thesis.tex

algorithms.pdf: thesis/* common/*
	export TEXINPUTS=.:./thesis//:./common//:; \
	pdflatex -shell-escape algorithms.tex; \
	pdflatex -shell-escape algorithms.tex
	
clean:
	rm -rf *.aux *.log *.out *.pdf
