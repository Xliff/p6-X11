#!/bin/sh
#gcc Xlib-helper.c --shared `xpkg-config --cflags xt` -fPIC `pkg-config --libs xt` -o Xlib-helper.so
gcc Xlib-helper.c -I/usr/include/X11 `pkg-config --cflags xt` `pkg-config --libs xt` -o x11-info
