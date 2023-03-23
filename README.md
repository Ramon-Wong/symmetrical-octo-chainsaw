# symmetrical-octo-chainsaw
<insert name> Framework
-----------------------
<insert name> Framework is an open source project that provides a set of tools for building 
and deploying applications for cross-platform desktop and mobile devices. 
It is based on using Webkit2GTK library written in pure C and TypeScript.
The main goal of this project is to provide a set of tools for building that are easy to use, 
easy to extend while avoiding package bloat and unnecessary dependencie.

Features
--------
* Cross-platform
* Easy to use
* Easy to extend
* No package bloat
* Minimal dependencies

Installation
------------
<insert name> Framework is available on github, you can download it from there by
cloning the repository  <git clone link>.

Usage.
------
After cloning the repository, you can build the project by running the following commands:

    $ make install
    $ cd project
    $ make dev
    $ make build

Discussion with Copilot on how we can plan the project.
    1.  Lets work on a simple hello world app using Webkit2GTK, loading a simple hello world page in main.c and typescript for the hello.
    2.  work on a method to load the typescript page and runs it with "make dev" command. 
        to speed this up, we can use a simple nodejs server to load the page..
    3.  work on a method to load the JS file and CSS file into the main.c and bundle these files into the executable.
    4.  work on an installer for the framework.
