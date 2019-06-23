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
	${PDFLATEX} exTypeReport 
	${MAKEINDEX} exTypeReport 
	${PDFLATEX} exTypeReport
	${PDFLATEX} nexpReport 
	${MAKEINDEX} nexpReport 
	${PDFLATEX} nexpReport 

