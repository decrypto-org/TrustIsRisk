all: fc17.pdf thesis.pdf riskinvalgs.pdf

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

riskinvalgs.pdf: thesis/* common/*
	echo "lalalaaaaaaaaa!!!!!!!!"; \
	export TEXINPUTS=.:./thesis//:./common//:; \
	pdflatex -shell-escape riskinvalgs.tex; \
	pdflatex -shell-escape riskinvalgs.tex; \
	rm -rf riskinvalgs.aux riskinvalgs.log riskinvalgs.out
	
clean:
	rm -rf *.aux *.log *.out *.pdf
