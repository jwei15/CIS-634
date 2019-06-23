# ===================================================
# Makefile for example1 Theory 
# ===================================================

PDFLATEX=pdflatex
DVILATEX=latex
MAKEINDEX=makeindex
BIBTEX=bibtex

default: report

clean:
	(rm -f *Report.* HOL*.*)

report:
	hol<documentation.sml
	${PDFLATEX} cipherReport 
	${MAKEINDEX} cipherReport 
	${PDFLATEX} cipherReport
	${PDFLATEX} cryptoExerciseReport 
	${MAKEINDEX} cryptoExerciseReport 
	${PDFLATEX} cryptoExerciseReport
