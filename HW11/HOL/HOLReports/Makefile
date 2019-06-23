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
	${PDFLATEX} ssm1Report
	${MAKEINDEX} ssm1Report
	${PDFLATEX} ssm1Report
	${PDFLATEX} SM0Report
	${MAKEINDEX} SM0Report
	${PDFLATEX} SM0Report
	${PDFLATEX} SM0SolutionsReport
	${MAKEINDEX} SM0SolutionsReport
	${PDFLATEX} SM0SolutionsReport
