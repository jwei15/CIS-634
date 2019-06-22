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
	${PDFLATEX} exercise9Report 
	${MAKEINDEX} exercise9Report 
	${PDFLATEX} exercise9Report
	${PDFLATEX} exercise10Report 
	${MAKEINDEX} exercise10Report 
	${PDFLATEX} exercise10Report 

