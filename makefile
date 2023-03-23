source			= main.c
objects			= *.o
options			= -Wall -std=c99
compile			= gcc -c 
build			= gcc -o
libraries		= -libwebkitgtk-4.0	-lgtk-3
target			= main	
executable		= ./main

compile: 
	$(compile) $(options) $(source) $(libraries)

build:
	$(build) $(target) $(objects) $(libraries)
	
clean:
	rm -f $(objects) $(target) $(executable)
	