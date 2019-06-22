# ===================================================
# Makefile for All Theory 
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
	${PDFLATEX} AllReport
	${MAKEINDEX} AllReport
	${PDFLATEX} AllReport

