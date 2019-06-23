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
	${PDFLATEX} example1Report 
	${MAKEINDEX} example1Report 
	${PDFLATEX} example1Report
	${PDFLATEX} solutions1Report 
	${MAKEINDEX} solutions1Report 
	${PDFLATEX} solutions1Report
	${PDFLATEX} conops0SolutionReport 
	${MAKEINDEX} conops0SolutionReport 
	${PDFLATEX} conops0SolutionReport
