source			= main.c
objects			= *.o
options			= -Wall -std=c99
compile			= gcc 
build			= gcc
libraries		= -libwebkitgtk-4.0 -lgtk-3
target			= main	
executable		= ./main
pkg_paths		= $(shell pkg-config --cflags --libs webkit2gtk-4.0)
lib_paths		= $(shell pkg-config --libs webkit2gtk-4.0)


compile: 
	$(compile) $(pkg_paths) -c $(options) $(source) $(libraries)

build:
	$(build) $(pkg_paths) -o $(target) $(objects) $(lib_paths)
	
clean:
	rm -f $(objects) $(target) $(executable)
	