all: fc17.pdf fc17-proceedings.pdf thesis.pdf thesisgr.pdf game_theory_notes.pdf

#.ONESHELL:
fc17.pdf: fc17/* common/*
	export TEXINPUTS=.:./fc17//:./common//:; \
	pdflatex fc17.tex; \
	pdflatex fc17.tex; \
	rm -rf fc17.aux fc17.log fc17.out

fc17-proceedings.pdf: fc17/* common/*
	export TEXINPUTS=.:./fc17//:./common//:; \
	pdflatex fc17-proceedings.tex; \
	pdflatex fc17-proceedings.tex; \
	rm -rf fc17-proceedings.aux fc17-proceedings.log fc17-proceedings.out

thesis.pdf: thesis/* common/*
	export TEXINPUTS=.:./thesis//:./common//:; \
	pdflatex thesis.tex; \
	pdflatex thesis.tex; \
	rm -rf thesis.aux thesis.log thesis.out thesis.toc thesis.lof thesis.lot

thesisgr.pdf: thesisgr/* common/*
	export TEXINPUTS=.:./thesisgr//:./common//:; \
	pdflatex thesisgr.tex; \
	pdflatex thesisgr.tex; \
	rm -rf thesisgr.aux thesisgr.log thesisgr.out thesisgr.toc thesisgr.lof thesisgr.lot

game_theory_notes.pdf: game_theory_notes/* common/*
	export TEXINPUTS=.:./game_theory_notes//:./common//:; \
	pdflatex game_theory_notes.tex; \
	pdflatex game_theory_notes.tex; \
	rm -rf game_theory_notes.aux game_theory_notes.log game_theory_notes.out game_theory_notes.toc game_theory_notes.lof game_theory_notes.lot
clean:
	rm -rf *.aux *.log *.out *.toc *.lof *.lot *.pdf
