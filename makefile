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

WebView_H			= https://raw.githubusercontent.com/webview/webview/master/webview.h
WebView_C			= https://raw.githubusercontent.com/webview/webview/master/webview.cc
Build_Directory		= src build libs "libs/webview"
libs				= --cflags --libs gtk+-3.0 webkit2gtk-4.0


install:
	@echo "Make Directories, build and libraries"
	mkdir -p $(Build_Directory)
	@echo "Downloading webview.h"
	curl -o libs/webview/webview.h $(WebView_H)
	@echo "Downloading webview.cc"
	curl -o libs/webview/webview.cc $(WebView_C)
	@echo "Build webview Library"
	g++ -c libs/webview/webview.cc -std=c++11 $$(pkg-config $(libs)) -o build/webview.o

compile: 
	$(compile) $(pkg_paths) -c $(options) $(source) $(libraries)

build:
	$(build) $(pkg_paths) -o $(target) $(objects) $(lib_paths)
	
clean:
	rm -f $(objects) $(target) $(executable)



