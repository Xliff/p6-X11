#include "X11/Xlib.h"

// cw: No longer necessary, since Window is a typedef'd long int.
/*
Bool XQueryPointer_helper (
  Display *var0,
  Window  *var1,
  Window  *var2,
  Window  *var3,
  int     *var4,
  int     *var5,
  int     *var6,
  int     *var7,
  int     *var8
) {
  XQueryPointer(var0, *var1, var2, var3, var4, var5, var6, var7, var8);
}
