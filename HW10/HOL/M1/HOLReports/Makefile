# ===================================================
# Makefile for conops0SolutionsTheory 
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

	${PDFLATEX} smReport
	${MAKEINDEX} smReport
	${PDFLATEX} smReport
	${PDFLATEX} m1Report
	${MAKEINDEX} m1Report
	${PDFLATEX} m1Report
