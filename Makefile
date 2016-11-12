all: fc17.pdf thesis.pdf

.ONESHELL:
fc17.pdf: fc17/fc17.tex fc17/preamble.sty fc17/title.tex fc17/abstract.tex fc17/introduction.tex
	cd fc17
	#export TEXINPUTS=.:./fc17//:
	pdflatex -shell-escape -output-directory=.. fc17.tex
	pdflatex -shell-escape -output-directory=.. fc17.tex
	cd ..

thesis.pdf: thesis/thesis.tex thesis/preamble.sty thesis/title.tex thesis/abstract.tex thesis/introduction.tex
	cd thesis
	#export TEXINPUTS=.:./thesis//:
	pdflatex -shell-escape -output-directory=.. thesis.tex
	pdflatex -shell-escape -output-directory=.. thesis.tex
	cd ..
