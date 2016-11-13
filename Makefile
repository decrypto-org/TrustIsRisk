all: fc17.pdf thesis.pdf

#.ONESHELL:
fc17.pdf: fc17/*
	#export TEXINPUTS=.:./fc17//:;
	cd fc17; \
	pdflatex -shell-escape -output-directory=.. fc17.tex; \
	pdflatex -shell-escape -output-directory=.. fc17.tex

thesis.pdf: thesis/*
	#export TEXINPUTS=.:./thesis//:;
	cd thesis; \
	pdflatex -shell-escape -output-directory=.. thesis.tex; \
	pdflatex -shell-escape -output-directory=.. thesis.tex

clear:
	rm -rf *.aux *.log *.out *.pdf
