all: fc17.pdf thesis.pdf

#.ONESHELL:
fc17.pdf: fc17/*#fc17/fc17.tex fc17/preamble.sty fc17/title.tex fc17/abstract.tex fc17/introduction.tex fc17/llncs.cls fc17/
	#export TEXINPUTS=.:./fc17//:;
	cd fc17; \
	pdflatex -shell-escape -output-directory=.. fc17.tex; \
	pdflatex -shell-escape -output-directory=.. fc17.tex

thesis.pdf: thesis/thesis.tex thesis/preamble.sty thesis/title.tex thesis/abstract.tex thesis/introduction.tex thesis/llncs.cls
	#export TEXINPUTS=.:./thesis//:;
	cd thesis; \
	pdflatex -shell-escape -output-directory=.. thesis.tex; \
	pdflatex -shell-escape -output-directory=.. thesis.tex

clear:
	rm -rf *.aux *.log *.out *.pdf
