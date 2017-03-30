all:
	dot -Tsvg collusion.dot -o collusion.svg
	dot -Tsvg beforeTurn.dot -o beforeTurn.svg
	dot -Tsvg afterTurn.dot -o afterTurn.svg
	dot -Tsvg AliceBobMultisig.dot -o AliceBobMultisig.svg
	dot -Tsvg AliceBobTIR.dot -o AliceBobTIR.svg
	dot -Tsvg riskinv1.dot -o riskinv1.svg
	dot -Tsvg riskinv2.dot -o riskinv2.svg
	dot -Tsvg riskinv3.dot -o riskinv3.svg
	dot -Tsvg transaction1.dot -o transaction1.svg
	dot -Tsvg transaction2.dot -o transaction2.svg

allmost:
	dot -Tsvg collusion.dot -o collusion.svg
	dot -Tsvg beforeTurn.dot -o beforeTurn.svg
	dot -Tsvg afterTurn.dot -o afterTurn.svg
	dot -Tsvg AliceBobTIR.dot -o AliceBobTIR.svg
	dot -Tsvg riskinv1.dot -o riskinv1.svg
	dot -Tsvg riskinv2.dot -o riskinv2.svg
	dot -Tsvg riskinv3.dot -o riskinv3.svg
	dot -Tsvg transaction1.dot -o transaction1.svg
	dot -Tsvg transaction2.dot -o transaction2.svg

clean:
	rm -rf beforeTurn.svg afterTurn.svg AliceBobMultisig.svg AliceBobTIR.sv

reallyclean:
	rm -rf *.svg
