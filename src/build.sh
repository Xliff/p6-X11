#!/bin/sh
gcc Xlib-helper.c -shared -fPIC `pkg-config --libs x11` -o Xlib-helper.so
