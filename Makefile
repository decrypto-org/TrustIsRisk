all: fc17.pdf fc17-proceedings.pdf thesis.pdf thesisgr.pdf may31deliverable.pdf

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

may31deliverable.pdf: may31deliverable/* common/* may31deliverable/gametheory/* may31deliverable/networkhealth/*
	export TEXINPUTS=.:./may31deliverable//:./common//:; \
	pdflatex may31deliverable.tex; \
	pdflatex may31deliverable.tex; \
	rm -rf may31deliverable.aux may31deliverable.log may31deliverable.out may31deliverable.toc may31deliverable.lof may31deliverable.lot

clean:
	rm -rf *.aux *.log *.out *.toc *.lof *.lot *.pdf
