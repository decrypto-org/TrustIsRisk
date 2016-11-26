all: fc17.pdf thesis.pdf #algorithms.pdf

#.ONESHELL:
fc17.pdf: fc17/* common/*
	echo "hahahahaah"
	export TEXINPUTS=.:./fc17//:./common//:; \
	pdflatex -shell-escape fc17.tex; \
	pdflatex -shell-escape fc17.tex; \
	rm -rf fc17.aux fc17.log fc17.out

thesis.pdf: thesis/* common/*
	echo "!@#^&*()(*&^"
	export TEXINPUTS=.:./thesis//:./common//:; \
	pdflatex -shell-escape thesis.tex; \
	pdflatex -shell-escape thesis.tex; \
	rm -rf thesis.aux thesis.log thesis.out

algorithms.pdf: thesis/* common/*
	echo "lalalaaaaaaaaa!!!!!!!!"; \
	export TEXINPUTS=.:./thesis//:./common//:; \
	pdflatex -shell-escape algorithms.tex; \
	pdflatex -shell-escape algorithms.tex; \
	rm -rf algorithms.aux algorithms.log algorithms.out
	
clean:
	rm -rf *.aux *.log *.out *.pdf
