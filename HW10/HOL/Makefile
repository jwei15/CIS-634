#This is my first attempt on my own Makefile
#At first I intent to use shell script

#This Makefile simply calls each Makefile under each of the subdirectories(sm, M1 and Counter)

#Those Makefiles in the subdirectories are provided by Professor Shiu-Kai Chin

all:
	Holmake clean; Holmake
	cd sm && $(MAKE)
	cd M1 && $(MAKE) 
	cd Counter && $(MAKE)

clean:
	Holmake clean
	cd sm && $(MAKE) clean
	cd M1 && $(MAKE) clean
	cd Counter && $(MAKE) clean 
