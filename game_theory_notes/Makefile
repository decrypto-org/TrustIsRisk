all: game_theory_notes.pdf

game_theory_notes.pdf: game_theory_notes.tex twoplayersgraph.dot twoplayers.tex manyplayers.tex
	pdflatex --shell-escape game_theory_notes.tex
	rm -rf game_theory_notes.aux game_theory_notes.log game_theory_notes.out
