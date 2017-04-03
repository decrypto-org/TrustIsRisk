all:
	dot -Tsvg collusion.dot -o collusion.svg
	dot -Tsvg turn_init.dot -o turn_init.svg
	dot -Tsvg turn_end.dot -o turn_end.svg
	dot -Tsvg AliceBobMultisig.dot -o AliceBobMultisig.svg
	dot -Tsvg AliceBobTIR.dot -o AliceBobTIR.svg
	dot -Tsvg transaction1.dot -o transaction1.svg
	dot -Tsvg transaction2.dot -o transaction2.svg

allmost:
	dot -Tsvg collusion.dot -o collusion.svg
	dot -Tsvg turn_init.dot -o turn_init.svg
	dot -Tsvg turn_end.dot -o turn_end.svg
	dot -Tsvg AliceBobTIR.dot -o AliceBobTIR.svg
	dot -Tsvg transaction1.dot -o transaction1.svg
	dot -Tsvg transaction2.dot -o transaction2.svg

clean:
	rm -rf beforeTurn.svg afterTurn.svg AliceBobMultisig.svg AliceBobTIR.sv

reallyclean:
	rm -rf *.svg
