# ===================================================
# Makefile for HOL
# This one is the exact copy provided by professor Shiu-Kai Chin
# ===================================================

default: theory

clean:
	Holmake cleanAll
	cd HOLReports;make clean

theory:
	Holmake cleanAll;Holmake;cd HOLReports;make clean;make

update:
	Holmake;cd HOLReports;make clean;make
