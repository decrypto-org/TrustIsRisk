all:
	dot -Tsvg collusion.dot -o collusion.svg
	dot -Tsvg beforeTurn.dot -o beforeTurn.svg
	dot -Tsvg afterTurn.dot -o afterTurn.svg
	dot -Tsvg AliceBobMultisig.dot -o AliceBobMultisig.svg
	dot -Tsvg AliceBobTIR.dot -o AliceBobTIR.svg

allmost:
	dot -Tsvg collusion.dot -o collusion.svg
	dot -Tsvg beforeTurn.dot -o beforeTurn.svg
	dot -Tsvg afterTurn.dot -o afterTurn.svg
	dot -Tsvg AliceBobTIR.dot -o AliceBobTIR.svg

clean:
	rm -rf beforeTurn.svg afterTurn.svg AliceBobMultisig.svg AliceBobTIR.sv

reallyclean:
	rm -rf *.svg
