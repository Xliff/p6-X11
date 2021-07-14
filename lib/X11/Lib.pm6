use v6.c;

use X11::Raw::Types;
use X11::Raw::Lib;

class X11::Lib::Master {

  method XActivateScreenSaver (Display $var0) {
    XActivateScreenSaver($var0);
  }

  method XAddConnectionWatch (Display $var0, XConnectionWatchProc $var1, XPointer $var2) {
    XAddConnectionWatch($var0, $var1, $var2);
  }

  method XAddExtension (Display $var0) {
    XAddExtension($var0);
  }

  method XAddHost (Display $var0, XHostAddress $var1) {
    XAddHost($var0, $var1);
  }

  method XAddHosts (Display $var0, XHostAddress $var1, gint $var2) {
    XAddHosts($var0, $var1, $var2);
  }

  method XAddToExtensionList (_XExtData $var0, XExtData $var1) {
    XAddToExtensionList($var0, $var1);
  }

  method XAddToSaveSet (Display $var0, Window $var1) {
    XAddToSaveSet($var0, $var1);
  }

  method XAllPlanes (Pointer $var0) {
    XAllPlanes($var0);
  }

  method XAllocColor (Display $var0, Colormap $var1, XColor $var2) {
    XAllocColor($var0, $var1, $var2);
  }

  method XAllocColorCells (Display $var0, Colormap $var1, Bool $var2, long $var3, gint $var4, long $var5, gint $var6) {
    XAllocColorCells($var0, $var1, $var2, $var3, $var4, $var5, $var6);
  }

  method XAllocColorPlanes (Display $var0, Colormap $var1, Bool $var2, long $var3, gint $var4, gint $var5, gint $var6, gint $var7, long $var8, long $var9, long $var10) {
    XAllocColorPlanes($var0, $var1, $var2, $var3, $var4, $var5, $var6, $var7, $var8, $var9, $var10);
  }

  method XAllocNamedColor (Display $var0, Colormap $var1, Str $var2, XColor $var3, XColor $var4) {
    XAllocNamedColor($var0, $var1, $var2, $var3, $var4);
  }

  method XAllowEvents (Display $var0, gint $var1, Time $var2) {
    XAllowEvents($var0, $var1, $var2);
  }

  method XAutoRepeatOff (Display $var0) {
    XAutoRepeatOff($var0);
  }

  method XAutoRepeatOn (Display $var0) {
    XAutoRepeatOn($var0);
  }

  method XBaseFontNameListOfFontSet (XFontSet $var0) {
    XBaseFontNameListOfFontSet($var0);
  }

  method XBell (Display $var0, gint $var1) {
    XBell($var0, $var1);
  }

  method XBitmapBitOrder (Display $var0) {
    XBitmapBitOrder($var0);
  }

  method XBitmapPad (Display $var0) {
    XBitmapPad($var0);
  }

  method XBitmapUnit (Display $var0) {
    XBitmapUnit($var0);
  }

  method XBlackPixel (Display $var0, gint $var1) {
    XBlackPixel($var0, $var1);
  }

  method XBlackPixelOfScreen (Screen $var0) {
    XBlackPixelOfScreen($var0);
  }

  method XCellsOfScreen (Screen $var0) {
    XCellsOfScreen($var0);
  }

  method XChangeActivePointerGrab (Display $var0, gint $var1, Cursor $var2, Time $var3) {
    XChangeActivePointerGrab($var0, $var1, $var2, $var3);
  }

  method XChangeGC (Display $var0, GC $var1, long $var2, XGCValues $var3) {
    XChangeGC($var0, $var1, $var2, $var3);
  }

  method XChangeKeyboardControl (Display $var0, long $var1, XKeyboardControl $var2) {
    XChangeKeyboardControl($var0, $var1, $var2);
  }

  method XChangeKeyboardMapping (Display $var0, gint $var1, gint $var2, KeySym $var3, gint $var4) {
    XChangeKeyboardMapping($var0, $var1, $var2, $var3, $var4);
  }

  method XChangePointerControl (Display $var0, Bool $var1, Bool $var2, gint $var3, gint $var4, gint $var5) {
    XChangePointerControl($var0, $var1, $var2, $var3, $var4, $var5);
  }

  method XChangeProperty (Display $var0, Window $var1, Atom $var2, Atom $var3, gint $var4, gint $var5, Str $var6, gint $var7) {
    XChangeProperty($var0, $var1, $var2, $var3, $var4, $var5, $var6, $var7);
  }

  method XChangeSaveSet (Display $var0, Window $var1, gint $var2) {
    XChangeSaveSet($var0, $var1, $var2);
  }

  method XChangeWindowAttributes (Display $var0, Window $var1, long $var2, XSetWindowAttributes $var3) {
    XChangeWindowAttributes($var0, $var1, $var2, $var3);
  }

  method XCheckIfEvent (Display $(*) (         Display*                 ,                XEvent*                        ,                XPointer                                 )) {
    XCheckIfEvent($(*) (               Display*                 ,                XEvent*                        ,                XPointer                                     ));
  }

  method XCheckMaskEvent (Display $var0, long $var1, XEvent $var2) {
    XCheckMaskEvent($var0, $var1, $var2);
  }

  method XCheckTypedEvent (Display $var0, gint $var1, XEvent $var2) {
    XCheckTypedEvent($var0, $var1, $var2);
  }

  method XCheckTypedWindowEvent (Display $var0, Window $var1, gint $var2, XEvent $var3) {
    XCheckTypedWindowEvent($var0, $var1, $var2, $var3);
  }

  method XCheckWindowEvent (Display $var0, Window $var1, long $var2, XEvent $var3) {
    XCheckWindowEvent($var0, $var1, $var2, $var3);
  }

  method XCirculateSubwindows (Display $var0, Window $var1, gint $var2) {
    XCirculateSubwindows($var0, $var1, $var2);
  }

  method XCirculateSubwindowsDown (Display $var0, Window $var1) {
    XCirculateSubwindowsDown($var0, $var1);
  }

  method XCirculateSubwindowsUp (Display $var0, Window $var1) {
    XCirculateSubwindowsUp($var0, $var1);
  }

  method XClearArea (Display $var0, Window $var1, gint $var2, gint $var3, gint $var4, gint $var5, Bool $var6) {
    XClearArea($var0, $var1, $var2, $var3, $var4, $var5, $var6);
  }

  method XClearWindow (Display $var0, Window $var1) {
    XClearWindow($var0, $var1);
  }

  method XCloseDisplay (Display $var0) {
    XCloseDisplay($var0);
  }

  method XCloseIM (XIM $var0) {
    XCloseIM($var0);
  }

  method XCloseOM (XOM $var0) {
    XCloseOM($var0);
  }

  method XConfigureWindow (Display $var0, Window $var1, gint $var2, XWindowChanges $var3) {
    XConfigureWindow($var0, $var1, $var2, $var3);
  }

  method XConnectionNumber (Display $var0) {
    XConnectionNumber($var0);
  }

  method XContextDependentDrawing (XFontSet $var0) {
    XContextDependentDrawing($var0);
  }

  method XContextualDrawing (XFontSet $var0) {
    XContextualDrawing($var0);
  }

  method XConvertSelection (Display $var0, Atom $var1, Atom $var2, Atom $var3, Window $var4, Time $var5) {
    XConvertSelection($var0, $var1, $var2, $var3, $var4, $var5);
  }

  method XCopyArea (Display $var0, Drawable $var1, Drawable $var2, GC $var3, gint $var4, gint $var5, gint $var6, gint $var7, gint $var8, gint $var9) {
    XCopyArea($var0, $var1, $var2, $var3, $var4, $var5, $var6, $var7, $var8, $var9);
  }

  method XCopyColormapAndFree (Display $var0, Colormap $var1) {
    XCopyColormapAndFree($var0, $var1);
  }

  method XCopyGC (Display $var0, GC $var1, long $var2, GC $var3) {
    XCopyGC($var0, $var1, $var2, $var3);
  }

  method XCopyPlane (Display $var0, Drawable $var1, Drawable $var2, GC $var3, gint $var4, gint $var5, gint $var6, gint $var7, gint $var8, gint $var9, long $var10) {
    XCopyPlane($var0, $var1, $var2, $var3, $var4, $var5, $var6, $var7, $var8, $var9, $var10);
  }

  method XCreateBitmapFromData (Display $var0, Drawable $var1, Str $var2, gint $var3, gint $var4) {
    XCreateBitmapFromData($var0, $var1, $var2, $var3, $var4);
  }

  method XCreateColormap (Display $var0, Window $var1, Visual $var2, gint $var3) {
    XCreateColormap($var0, $var1, $var2, $var3);
  }

  method XCreateFontCursor (Display $var0, gint $var1) {
    XCreateFontCursor($var0, $var1);
  }

  method XCreateFontSet (Display $var0, Str $var1, Str $var2, gint $var3 is rw, Str $var4) {
    XCreateFontSet($var0, $var1, $var2, $var3 is rw, $var4);
  }

  method XCreateGC (Display $var0, Drawable $var1, long $var2, XGCValues $var3) {
    XCreateGC($var0, $var1, $var2, $var3);
  }

  method XCreateGlyphCursor (Display $var0, Font $var1, Font $var2, gint $var3, gint $var4, XColor $var5, XColor $var6) {
    XCreateGlyphCursor($var0, $var1, $var2, $var3, $var4, $var5, $var6);
  }

  method XCreateIC (XIM $var0,  $var1, ...) {
    XCreateIC($var0, $var1);
  }

  method XCreateImage (Display $var0, Visual $var1, gint $var2, gint $var3, gint $var4, Str $var5, gint $var6, gint $var7, gint $var8, gint $var9) {
    XCreateImage($var0, $var1, $var2, $var3, $var4, $var5, $var6, $var7, $var8, $var9);
  }

  method XCreateOC (XOM $var0,  $var1, ...) {
    XCreateOC($var0, $var1);
  }

  method XCreatePixmap (Display $var0, Drawable $var1, gint $var2, gint $var3, gint $var4) {
    XCreatePixmap($var0, $var1, $var2, $var3, $var4);
  }

  method XCreatePixmapCursor (Display $var0, Pixmap $var1, Pixmap $var2, XColor $var3, XColor $var4, gint $var5, gint $var6) {
    XCreatePixmapCursor($var0, $var1, $var2, $var3, $var4, $var5, $var6);
  }

  method XCreatePixmapFromBitmapData (Display $var0, Drawable $var1, Str $var2, gint $var3, gint $var4, long $var5, long $var6, gint $var7) {
    XCreatePixmapFromBitmapData($var0, $var1, $var2, $var3, $var4, $var5, $var6, $var7);
  }

  method XCreateSimpleWindow (Display $var0, Window $var1, gint $var2, gint $var3, gint $var4, gint $var5, gint $var6, long $var7, long $var8) {
    XCreateSimpleWindow($var0, $var1, $var2, $var3, $var4, $var5, $var6, $var7, $var8);
  }

  method XCreateWindow (Display $var0, Window $var1, gint $var2, gint $var3, gint $var4, gint $var5, gint $var6, gint $var7, gint $var8, Visual $var9, long $var10, XSetWindowAttributes $var11) {
    XCreateWindow($var0, $var1, $var2, $var3, $var4, $var5, $var6, $var7, $var8, $var9, $var10, $var11);
  }

  method XDefaultColormap (Display $var0, gint $var1) {
    XDefaultColormap($var0, $var1);
  }

  method XDefaultColormapOfScreen (Screen $var0) {
    XDefaultColormapOfScreen($var0);
  }

  method XDefaultDepth (Display $var0, gint $var1) {
    XDefaultDepth($var0, $var1);
  }

  method XDefaultDepthOfScreen (Screen $var0) {
    XDefaultDepthOfScreen($var0);
  }

  method XDefaultGC (Display $var0, gint $var1) {
    XDefaultGC($var0, $var1);
  }

  method XDefaultGCOfScreen (Screen $var0) {
    XDefaultGCOfScreen($var0);
  }

  method XDefaultRootWindow (Display $var0) {
    XDefaultRootWindow($var0);
  }

  method XDefaultScreen (Display $var0) {
    XDefaultScreen($var0);
  }

  method XDefaultScreenOfDisplay (Display $var0) {
    XDefaultScreenOfDisplay($var0);
  }

  method XDefaultVisual (Display $var0, gint $var1) {
    XDefaultVisual($var0, $var1);
  }

  method XDefaultVisualOfScreen (Screen $var0) {
    XDefaultVisualOfScreen($var0);
  }

  method XDefineCursor (Display $var0, Window $var1, Cursor $var2) {
    XDefineCursor($var0, $var1, $var2);
  }

  method XDeleteModifiermapEntry (XModifierKeymap $var0, gint $var1, KeyCode $var2, gint $var3) {
    XDeleteModifiermapEntry($var0, $var1, $var2, $var3);
  }

  method XDeleteProperty (Display $var0, Window $var1, Atom $var2) {
    XDeleteProperty($var0, $var1, $var2);
  }

  method XDestroyIC (XIC $var0) {
    XDestroyIC($var0);
  }

  method XDestroyOC (XOC $var0) {
    XDestroyOC($var0);
  }

  method XDestroySubwindows (Display $var0, Window $var1) {
    XDestroySubwindows($var0, $var1);
  }

  method XDestroyWindow (Display $var0, Window $var1) {
    XDestroyWindow($var0, $var1);
  }

  method XDirectionalDependentDrawing (XFontSet $var0) {
    XDirectionalDependentDrawing($var0);
  }

  method XDisableAccessControl (Display $var0) {
    XDisableAccessControl($var0);
  }

  method XDisplayCells (Display $var0, gint $var1) {
    XDisplayCells($var0, $var1);
  }

  method XDisplayHeight (Display $var0, gint $var1) {
    XDisplayHeight($var0, $var1);
  }

  method XDisplayHeightMM (Display $var0, gint $var1) {
    XDisplayHeightMM($var0, $var1);
  }

  method XDisplayKeycodes (Display $var0, gint $var1 is rw, gint $var2 is rw) {
    XDisplayKeycodes($var0, $var1 is rw, $var2 is rw);
  }

  method XDisplayMotionBufferSize (Display $var0) {
    XDisplayMotionBufferSize($var0);
  }

  method XDisplayName (Str $var0) {
    XDisplayName($var0);
  }

  method XDisplayOfIM (XIM $var0) {
    XDisplayOfIM($var0);
  }

  method XDisplayOfOM (XOM $var0) {
    XDisplayOfOM($var0);
  }

  method XDisplayOfScreen (Screen $var0) {
    XDisplayOfScreen($var0);
  }

  method XDisplayPlanes (Display $var0, gint $var1) {
    XDisplayPlanes($var0, $var1);
  }

  method XDisplayString (Display $var0) {
    XDisplayString($var0);
  }

  method XDisplayWidth (Display $var0, gint $var1) {
    XDisplayWidth($var0, $var1);
  }

  method XDisplayWidthMM (Display $var0, gint $var1) {
    XDisplayWidthMM($var0, $var1);
  }

  method XDoesBackingStore (Screen $var0) {
    XDoesBackingStore($var0);
  }

  method XDoesSaveUnders (Screen $var0) {
    XDoesSaveUnders($var0);
  }

  method XDrawArc (Display $var0, Drawable $var1, GC $var2, gint $var3, gint $var4, gint $var5, gint $var6, gint $var7, gint $var8) {
    XDrawArc($var0, $var1, $var2, $var3, $var4, $var5, $var6, $var7, $var8);
  }

  method XDrawArcs (Display $var0, Drawable $var1, GC $var2, XArc $var3, gint $var4) {
    XDrawArcs($var0, $var1, $var2, $var3, $var4);
  }

  method XDrawImageString (Display $var0, Drawable $var1, GC $var2, gint $var3, gint $var4, Str $var5, gint $var6) {
    XDrawImageString($var0, $var1, $var2, $var3, $var4, $var5, $var6);
  }

  method XDrawImageString16 (Display $var0, Drawable $var1, GC $var2, gint $var3, gint $var4, XChar2b $var5, gint $var6) {
    XDrawImageString16($var0, $var1, $var2, $var3, $var4, $var5, $var6);
  }

  method XDrawLine (Display $var0, Drawable $var1, GC $var2, gint $var3, gint $var4, gint $var5, gint $var6) {
    XDrawLine($var0, $var1, $var2, $var3, $var4, $var5, $var6);
  }

  method XDrawLines (Display $var0, Drawable $var1, GC $var2, XPoint $var3, gint $var4, gint $var5) {
    XDrawLines($var0, $var1, $var2, $var3, $var4, $var5);
  }

  method XDrawPoint (Display $var0, Drawable $var1, GC $var2, gint $var3, gint $var4) {
    XDrawPoint($var0, $var1, $var2, $var3, $var4);
  }

  method XDrawPoints (Display $var0, Drawable $var1, GC $var2, XPoint $var3, gint $var4, gint $var5) {
    XDrawPoints($var0, $var1, $var2, $var3, $var4, $var5);
  }

  method XDrawRectangle (Display $var0, Drawable $var1, GC $var2, gint $var3, gint $var4, gint $var5, gint $var6) {
    XDrawRectangle($var0, $var1, $var2, $var3, $var4, $var5, $var6);
  }

  method XDrawRectangles (Display $var0, Drawable $var1, GC $var2, XRectangle $var3, gint $var4) {
    XDrawRectangles($var0, $var1, $var2, $var3, $var4);
  }

  method XDrawSegments (Display $var0, Drawable $var1, GC $var2, XSegment $var3, gint $var4) {
    XDrawSegments($var0, $var1, $var2, $var3, $var4);
  }

  method XDrawString (Display $var0, Drawable $var1, GC $var2, gint $var3, gint $var4, Str $var5, gint $var6) {
    XDrawString($var0, $var1, $var2, $var3, $var4, $var5, $var6);
  }

  method XDrawString16 (Display $var0, Drawable $var1, GC $var2, gint $var3, gint $var4, XChar2b $var5, gint $var6) {
    XDrawString16($var0, $var1, $var2, $var3, $var4, $var5, $var6);
  }

  method XDrawText (Display $var0, Drawable $var1, GC $var2, gint $var3, gint $var4, XTextItem $var5, gint $var6) {
    XDrawText($var0, $var1, $var2, $var3, $var4, $var5, $var6);
  }

  method XDrawText16 (Display $var0, Drawable $var1, GC $var2, gint $var3, gint $var4, XTextItem16 $var5, gint $var6) {
    XDrawText16($var0, $var1, $var2, $var3, $var4, $var5, $var6);
  }

  method XEHeadOfExtensionList (XEDataObject $var0) {
    XEHeadOfExtensionList($var0);
  }

  method XEnableAccessControl (Display $var0) {
    XEnableAccessControl($var0);
  }

  method XEventMaskOfScreen (Screen $var0) {
    XEventMaskOfScreen($var0);
  }

  method XEventsQueued (Display $var0, gint $var1) {
    XEventsQueued($var0, $var1);
  }

  method XExtendedMaxRequestSize (Display $var0) {
    XExtendedMaxRequestSize($var0);
  }

  method XExtentsOfFontSet (XFontSet $var0) {
    XExtentsOfFontSet($var0);
  }

  method XFetchBuffer (Display $var0, gint $var1 is rw, gint $var2) {
    XFetchBuffer($var0, $var1 is rw, $var2);
  }

  method XFetchBytes (Display $var0, gint $var1 is rw) {
    XFetchBytes($var0, $var1 is rw);
  }

  method XFetchName (Display $var0, Window $var1, Str $var2) {
    XFetchName($var0, $var1, $var2);
  }

  method XFillArc (Display $var0, Drawable $var1, GC $var2, gint $var3, gint $var4, gint $var5, gint $var6, gint $var7, gint $var8) {
    XFillArc($var0, $var1, $var2, $var3, $var4, $var5, $var6, $var7, $var8);
  }

  method XFillArcs (Display $var0, Drawable $var1, GC $var2, XArc $var3, gint $var4) {
    XFillArcs($var0, $var1, $var2, $var3, $var4);
  }

  method XFillPolygon (Display $var0, Drawable $var1, GC $var2, XPoint $var3, gint $var4, gint $var5, gint $var6) {
    XFillPolygon($var0, $var1, $var2, $var3, $var4, $var5, $var6);
  }

  method XFillRectangle (Display $var0, Drawable $var1, GC $var2, gint $var3, gint $var4, gint $var5, gint $var6) {
    XFillRectangle($var0, $var1, $var2, $var3, $var4, $var5, $var6);
  }

  method XFillRectangles (Display $var0, Drawable $var1, GC $var2, XRectangle $var3, gint $var4) {
    XFillRectangles($var0, $var1, $var2, $var3, $var4);
  }

  method XFilterEvent (XEvent $var0, Window $var1) {
    XFilterEvent($var0, $var1);
  }

  method XFindOnExtensionList (XExtData $var0, gint $var1) {
    XFindOnExtensionList($var0, $var1);
  }

  method XFlush (Display $var0) {
    XFlush($var0);
  }

  method XFlushGC (Display $var0, GC $var1) {
    XFlushGC($var0, $var1);
  }

  method XFontsOfFontSet (XFontSet $var0, XFontStruct $var1, Str $var2) {
    XFontsOfFontSet($var0, $var1, $var2);
  }

  method XForceScreenSaver (Display $var0, gint $var1) {
    XForceScreenSaver($var0, $var1);
  }

  method XFree (Pointer $var0) {
    XFree($var0);
  }

  method XFreeColormap (Display $var0, Colormap $var1) {
    XFreeColormap($var0, $var1);
  }

  method XFreeColors (Display $var0, Colormap $var1, long $var2, gint $var3, long $var4) {
    XFreeColors($var0, $var1, $var2, $var3, $var4);
  }

  method XFreeCursor (Display $var0, Cursor $var1) {
    XFreeCursor($var0, $var1);
  }

  method XFreeEventData (Display $var0, XGenericEventCookie $var1) {
    XFreeEventData($var0, $var1);
  }

  method XFreeExtensionList (Str $var0) {
    XFreeExtensionList($var0);
  }

  method XFreeFont (Display $var0, XFontStruct $var1) {
    XFreeFont($var0, $var1);
  }

  method XFreeFontInfo (Str $var0, XFontStruct $var1, gint $var2) {
    XFreeFontInfo($var0, $var1, $var2);
  }

  method XFreeFontNames (Str $var0) {
    XFreeFontNames($var0);
  }

  method XFreeFontPath (Str $var0) {
    XFreeFontPath($var0);
  }

  method XFreeFontSet (Display $var0, XFontSet $var1) {
    XFreeFontSet($var0, $var1);
  }

  method XFreeGC (Display $var0, GC $var1) {
    XFreeGC($var0, $var1);
  }

  method XFreeModifiermap (XModifierKeymap $var0) {
    XFreeModifiermap($var0);
  }

  method XFreePixmap (Display $var0, Pixmap $var1) {
    XFreePixmap($var0, $var1);
  }

  method XFreeStringList (Str $var0) {
    XFreeStringList($var0);
  }

  method XGContextFromGC (GC $var0) {
    XGContextFromGC($var0);
  }

  method XGeometry (Display $var0, gint $var1, Str $var2, Str $var3, gint $var4, gint $var5, gint $var6, gint $var7, gint $var8, gint $var9 is rw, gint $var10 is rw, gint $var11 is rw, gint $var12 is rw) {
    XGeometry($var0, $var1, $var2, $var3, $var4, $var5, $var6, $var7, $var8, $var9 is rw, $var10 is rw, $var11 is rw, $var12 is rw);
  }

  method XGetAtomName (Display $var0, Atom $var1) {
    XGetAtomName($var0, $var1);
  }

  method XGetAtomNames (Display $var0, Atom $var1, gint $var2, Str $var3) {
    XGetAtomNames($var0, $var1, $var2, $var3);
  }

  method XGetCommand (Display $var0, Window $var1, Str $var2, gint $var3 is rw) {
    XGetCommand($var0, $var1, $var2, $var3 is rw);
  }

  method XGetDefault (Display $var0, Str $var1, Str $var2) {
    XGetDefault($var0, $var1, $var2);
  }

  method XGetErrorDatabaseText (Display $var0, Str $var1, Str $var2, Str $var3, Str $var4, gint $var5) {
    XGetErrorDatabaseText($var0, $var1, $var2, $var3, $var4, $var5);
  }

  method XGetErrorText (Display $var0, gint $var1, Str $var2, gint $var3) {
    XGetErrorText($var0, $var1, $var2, $var3);
  }

  method XGetEventData (Display $var0, XGenericEventCookie $var1) {
    XGetEventData($var0, $var1);
  }

  method XGetFontPath (Display $var0, gint $var1 is rw) {
    XGetFontPath($var0, $var1 is rw);
  }

  method XGetFontProperty (XFontStruct $var0, Atom $var1, long $var2) {
    XGetFontProperty($var0, $var1, $var2);
  }

  method XGetGCValues (Display $var0, GC $var1, long $var2, XGCValues $var3) {
    XGetGCValues($var0, $var1, $var2, $var3);
  }

  method XGetGeometry (Display $var0, Drawable $var1, Window $var2, gint $var3 is rw, gint $var4 is rw, gint $var5 is rw, gint $var6 is rw, gint $var7 is rw, gint $var8 is rw) {
    XGetGeometry($var0, $var1, $var2, $var3 is rw, $var4 is rw, $var5 is rw, $var6 is rw, $var7 is rw, $var8 is rw);
  }

  method XGetICValues (XIC $var0,  $var1, ...) {
    XGetICValues($var0, $var1);
  }

  method XGetIMValues (XIM $var0,  $var1, ...) {
    XGetIMValues($var0, $var1);
  }

  method XGetIconName (Display $var0, Window $var1, Str $var2) {
    XGetIconName($var0, $var1, $var2);
  }

  method XGetImage (Display $var0, Drawable $var1, gint $var2, gint $var3, gint $var4, gint $var5, long $var6, gint $var7) {
    XGetImage($var0, $var1, $var2, $var3, $var4, $var5, $var6, $var7);
  }

  method XGetInputFocus (Display $var0, Window $var1, gint $var2 is rw) {
    XGetInputFocus($var0, $var1, $var2 is rw);
  }

  method XGetKeyboardControl (Display $var0, XKeyboardState $var1) {
    XGetKeyboardControl($var0, $var1);
  }

  method XGetKeyboardMapping (Display $var0, gint $var1, KeyCode $var2, gint $var3, gint $var4 is rw) {
    XGetKeyboardMapping($var0, $var1, $var2, $var3, $var4 is rw);
  }

  method XGetModifierMapping (Display $var0) {
    XGetModifierMapping($var0);
  }

  method XGetMotionEvents (Display $var0, Window $var1, Time $var2, Time $var3, gint $var4 is rw) {
    XGetMotionEvents($var0, $var1, $var2, $var3, $var4 is rw);
  }

  method XGetOCValues (XOC $var0,  $var1, ...) {
    XGetOCValues($var0, $var1);
  }

  method XGetOMValues (XOM $var0,  $var1, ...) {
    XGetOMValues($var0, $var1);
  }

  method XGetPointerControl (Display $var0, gint $var1 is rw, gint $var2 is rw, gint $var3 is rw) {
    XGetPointerControl($var0, $var1 is rw, $var2 is rw, $var3 is rw);
  }

  method XGetPointerMapping (Display $var0, Str $var1, gint $var2) {
    XGetPointerMapping($var0, $var1, $var2);
  }

  method XGetScreenSaver (Display $var0, gint $var1 is rw, gint $var2 is rw, gint $var3 is rw, gint $var4 is rw) {
    XGetScreenSaver($var0, $var1 is rw, $var2 is rw, $var3 is rw, $var4 is rw);
  }

  method XGetSelectionOwner (Display $var0, Atom $var1) {
    XGetSelectionOwner($var0, $var1);
  }

  method XGetSubImage (Display $var0, Drawable $var1, gint $var2, gint $var3, gint $var4, gint $var5, long $var6, gint $var7, XImage $var8, gint $var9, gint $var10) {
    XGetSubImage($var0, $var1, $var2, $var3, $var4, $var5, $var6, $var7, $var8, $var9, $var10);
  }

  method XGetTransientForHint (Display $var0, Window $var1, Window $var2) {
    XGetTransientForHint($var0, $var1, $var2);
  }

  method XGetWMColormapWindows (Display $var0, Window $var1, Window $var2, gint $var3 is rw) {
    XGetWMColormapWindows($var0, $var1, $var2, $var3 is rw);
  }

  method XGetWMProtocols (Display $var0, Window $var1, Atom $var2, gint $var3 is rw) {
    XGetWMProtocols($var0, $var1, $var2, $var3 is rw);
  }

  method XGetWindowAttributes (Display $var0, Window $var1, XWindowAttributes $var2) {
    XGetWindowAttributes($var0, $var1, $var2);
  }

  method XGetWindowProperty (Display $var0, Window $var1, Atom $var2, long $var3, long $var4, Bool $var5, Atom $var6, Atom $var7, gint $var8 is rw, long $var9, long $var10, Str $var11) {
    XGetWindowProperty($var0, $var1, $var2, $var3, $var4, $var5, $var6, $var7, $var8 is rw, $var9, $var10, $var11);
  }

  method XGrabButton (Display $var0, gint $var1, gint $var2, Window $var3, Bool $var4, gint $var5, gint $var6, gint $var7, Window $var8, Cursor $var9) {
    XGrabButton($var0, $var1, $var2, $var3, $var4, $var5, $var6, $var7, $var8, $var9);
  }

  method XGrabKey (Display $var0, gint $var1, gint $var2, Window $var3, Bool $var4, gint $var5, gint $var6) {
    XGrabKey($var0, $var1, $var2, $var3, $var4, $var5, $var6);
  }

  method XGrabKeyboard (Display $var0, Window $var1, Bool $var2, gint $var3, gint $var4, Time $var5) {
    XGrabKeyboard($var0, $var1, $var2, $var3, $var4, $var5);
  }

  method XGrabPointer (Display $var0, Window $var1, Bool $var2, gint $var3, gint $var4, gint $var5, Window $var6, Cursor $var7, Time $var8) {
    XGrabPointer($var0, $var1, $var2, $var3, $var4, $var5, $var6, $var7, $var8);
  }

  method XGrabServer (Display $var0) {
    XGrabServer($var0);
  }

  method XHeightMMOfScreen (Screen $var0) {
    XHeightMMOfScreen($var0);
  }

  method XHeightOfScreen (Screen $var0) {
    XHeightOfScreen($var0);
  }

  method XIMOfIC (XIC $var0) {
    XIMOfIC($var0);
  }

  method XIconifyWindow (Display $var0, Window $var1, gint $var2) {
    XIconifyWindow($var0, $var1, $var2);
  }

  method XIfEvent (Display $(*) (              Display*                 ,                XEvent*                        ,                XPointer                                 )) {
    XIfEvent($(*) (            Display*                 ,                XEvent*                        ,                XPointer                                     ));
  }

  method XImageByteOrder (Display $var0) {
    XImageByteOrder($var0);
  }

  method XInitExtension (Display $var0, Str $var1) {
    XInitExtension($var0, $var1);
  }

  method XInitImage (XImage $var0) {
    XInitImage($var0);
  }

  method XInitThreads (Pointer $var0) {
    XInitThreads($var0);
  }

  method XInsertModifiermapEntry (XModifierKeymap $var0, gint $var1, KeyCode $var2, gint $var3) {
    XInsertModifiermapEntry($var0, $var1, $var2, $var3);
  }

  method XInstallColormap (Display $var0, Colormap $var1) {
    XInstallColormap($var0, $var1);
  }

  method XInternAtom (Display $var0, Str $var1, Bool $var2) {
    XInternAtom($var0, $var1, $var2);
  }

  method XInternAtoms (Display $var0, Str $var1, gint $var2, Bool $var3, Atom $var4) {
    XInternAtoms($var0, $var1, $var2, $var3, $var4);
  }

  method XInternalConnectionNumbers (Display $var0, gint $var1, gint $var2 is rw) {
    XInternalConnectionNumbers($var0, $var1, $var2 is rw);
  }

  method XKeycodeToKeysym (Display $var0, gint $var1, KeyCode $var2, gint $var3) {
    XKeycodeToKeysym($var0, $var1, $var2, $var3);
  }

  method XKeysymToKeycode (Display $var0, KeySym $var1) {
    XKeysymToKeycode($var0, $var1);
  }

  method XKeysymToString (KeySym $var0) {
    XKeysymToString($var0);
  }

  method XKillClient (Display $var0, XID $var1) {
    XKillClient($var0, $var1);
  }

  method XLastKnownRequestProcessed (Display $var0) {
    XLastKnownRequestProcessed($var0);
  }

  method XListDepths (Display $var0, gint $var1, gint $var2 is rw) {
    XListDepths($var0, $var1, $var2 is rw);
  }

  method XListExtensions (Display $var0, gint $var1 is rw) {
    XListExtensions($var0, $var1 is rw);
  }

  method XListFonts (Display $var0, Str $var1, gint $var2, gint $var3 is rw) {
    XListFonts($var0, $var1, $var2, $var3 is rw);
  }

  method XListFontsWithInfo (Display $var0, Str $var1, gint $var2, gint $var3 is rw, XFontStruct $var4) {
    XListFontsWithInfo($var0, $var1, $var2, $var3 is rw, $var4);
  }

  method XListHosts (Display $var0, gint $var1 is rw, Bool $var2) {
    XListHosts($var0, $var1 is rw, $var2);
  }

  method XListInstalledColormaps (Display $var0, Window $var1, gint $var2 is rw) {
    XListInstalledColormaps($var0, $var1, $var2 is rw);
  }

  method XListPixmapFormats (Display $var0, gint $var1 is rw) {
    XListPixmapFormats($var0, $var1 is rw);
  }

  method XListProperties (Display $var0, Window $var1, gint $var2 is rw) {
    XListProperties($var0, $var1, $var2 is rw);
  }

  method XLoadFont (Display $var0, Str $var1) {
    XLoadFont($var0, $var1);
  }

  method XLocaleOfFontSet (XFontSet $var0) {
    XLocaleOfFontSet($var0);
  }

  method XLocaleOfIM (XIM $var0) {
    XLocaleOfIM($var0);
  }

  method XLocaleOfOM (XOM $var0) {
    XLocaleOfOM($var0);
  }

  method XLockDisplay (Display $var0) {
    XLockDisplay($var0);
  }

  method XLookupColor (Display $var0, Colormap $var1, Str $var2, XColor $var3, XColor $var4) {
    XLookupColor($var0, $var1, $var2, $var3, $var4);
  }

  method XLookupKeysym (XKeyEvent $var0, gint $var1) {
    XLookupKeysym($var0, $var1);
  }

  method XLowerWindow (Display $var0, Window $var1) {
    XLowerWindow($var0, $var1);
  }

  method XMapRaised (Display $var0, Window $var1) {
    XMapRaised($var0, $var1);
  }

  method XMapSubwindows (Display $var0, Window $var1) {
    XMapSubwindows($var0, $var1);
  }

  method XMapWindow (Display $var0, Window $var1) {
    XMapWindow($var0, $var1);
  }

  method XMaskEvent (Display $var0, long $var1, XEvent $var2) {
    XMaskEvent($var0, $var1, $var2);
  }

  method XMaxCmapsOfScreen (Screen $var0) {
    XMaxCmapsOfScreen($var0);
  }

  method XMaxRequestSize (Display $var0) {
    XMaxRequestSize($var0);
  }

  method XMinCmapsOfScreen (Screen $var0) {
    XMinCmapsOfScreen($var0);
  }

  method XMoveResizeWindow (Display $var0, Window $var1, gint $var2, gint $var3, gint $var4, gint $var5) {
    XMoveResizeWindow($var0, $var1, $var2, $var3, $var4, $var5);
  }

  method XMoveWindow (Display $var0, Window $var1, gint $var2, gint $var3) {
    XMoveWindow($var0, $var1, $var2, $var3);
  }

  method XNewModifiermap (gint $var0) {
    XNewModifiermap($var0);
  }

  method XNextEvent (Display $var0, XEvent $var1) {
    XNextEvent($var0, $var1);
  }

  method XNextRequest (Display $var0) {
    XNextRequest($var0);
  }

  method XNoOp (Display $var0) {
    XNoOp($var0);
  }

  method XOMOfOC (XOC $var0) {
    XOMOfOC($var0);
  }

  method XOpenDisplay (Str $var0) {
    XOpenDisplay($var0);
  }

  method XOpenIM (Display $var0, _XrmHashBucketRec $var1, Str $var2, Str $var3) {
    XOpenIM($var0, $var1, $var2, $var3);
  }

  method XOpenOM (Display $var0, _XrmHashBucketRec $var1, Str $var2, Str $var3) {
    XOpenOM($var0, $var1, $var2, $var3);
  }

  method XParseColor (Display $var0, Colormap $var1, Str $var2, XColor $var3) {
    XParseColor($var0, $var1, $var2, $var3);
  }

  method XParseGeometry (Str $var0, gint $var1 is rw, gint $var2 is rw, gint $var3 is rw, gint $var4 is rw) {
    XParseGeometry($var0, $var1 is rw, $var2 is rw, $var3 is rw, $var4 is rw);
  }

  method XPeekEvent (Display $var0, XEvent $var1) {
    XPeekEvent($var0, $var1);
  }

  method XPeekIfEvent (Display $(*) (          Display*         ,                XEvent*                ,                XPointer                             )) {
    XPeekIfEvent($(*) (                Display*         ,                XEvent*                ,                XPointer                             ));
  }

  method XPending (Display $var0) {
    XPending($var0);
  }

  method XPlanesOfScreen (Screen $var0) {
    XPlanesOfScreen($var0);
  }

  method XProcessInternalConnection (Display $var0, gint $var1) {
    XProcessInternalConnection($var0, $var1);
  }

  method XProtocolRevision (Display $var0) {
    XProtocolRevision($var0);
  }

  method XProtocolVersion (Display $var0) {
    XProtocolVersion($var0);
  }

  method XPutBackEvent (Display $var0, XEvent $var1) {
    XPutBackEvent($var0, $var1);
  }

  method XPutImage (Display $var0, Drawable $var1, GC $var2, XImage $var3, gint $var4, gint $var5, gint $var6, gint $var7, gint $var8, gint $var9) {
    XPutImage($var0, $var1, $var2, $var3, $var4, $var5, $var6, $var7, $var8, $var9);
  }

  method XQLength (Display $var0) {
    XQLength($var0);
  }

  method XQueryBestCursor (Display $var0, Drawable $var1, gint $var2, gint $var3, gint $var4 is rw, gint $var5 is rw) {
    XQueryBestCursor($var0, $var1, $var2, $var3, $var4 is rw, $var5 is rw);
  }

  method XQueryBestSize (Display $var0, gint $var1, Drawable $var2, gint $var3, gint $var4, gint $var5 is rw, gint $var6 is rw) {
    XQueryBestSize($var0, $var1, $var2, $var3, $var4, $var5 is rw, $var6 is rw);
  }

  method XQueryBestStipple (Display $var0, Drawable $var1, gint $var2, gint $var3, gint $var4 is rw, gint $var5 is rw) {
    XQueryBestStipple($var0, $var1, $var2, $var3, $var4 is rw, $var5 is rw);
  }

  method XQueryBestTile (Display $var0, Drawable $var1, gint $var2, gint $var3, gint $var4 is rw, gint $var5 is rw) {
    XQueryBestTile($var0, $var1, $var2, $var3, $var4 is rw, $var5 is rw);
  }

  method XQueryColor (Display $var0, Colormap $var1, XColor $var2) {
    XQueryColor($var0, $var1, $var2);
  }

  method XQueryColors (Display $var0, Colormap $var1, XColor $var2, gint $var3) {
    XQueryColors($var0, $var1, $var2, $var3);
  }

  method XQueryExtension (Display $var0, Str $var1, gint $var2 is rw, gint $var3 is rw, gint $var4 is rw) {
    XQueryExtension($var0, $var1, $var2 is rw, $var3 is rw, $var4 is rw);
  }

  method XQueryFont (Display $var0, XID $var1) {
    XQueryFont($var0, $var1);
  }

  method XQueryKeymap (Display $var0, Str $var1) {
    XQueryKeymap($var0, $var1);
  }

  method XQueryPointer (Display $var0, Window $var1, Window $var2, Window $var3, gint $var4 is rw, gint $var5 is rw, gint $var6 is rw, gint $var7 is rw, gint $var8 is rw) {
    XQueryPointer($var0, $var1, $var2, $var3, $var4 is rw, $var5 is rw, $var6 is rw, $var7 is rw, $var8 is rw);
  }

  method XQueryTextExtents (Display $var0, XID $var1, Str $var2, gint $var3, gint $var4 is rw, gint $var5 is rw, gint $var6 is rw, XCharStruct $var7) {
    XQueryTextExtents($var0, $var1, $var2, $var3, $var4 is rw, $var5 is rw, $var6 is rw, $var7);
  }

  method XQueryTextExtents16 (Display $var0, XID $var1, XChar2b $var2, gint $var3, gint $var4 is rw, gint $var5 is rw, gint $var6 is rw, XCharStruct $var7) {
    XQueryTextExtents16($var0, $var1, $var2, $var3, $var4 is rw, $var5 is rw, $var6 is rw, $var7);
  }

  method XQueryTree (Display $var0, Window $var1, Window $var2, Window $var3, Window $var4, gint $var5 is rw) {
    XQueryTree($var0, $var1, $var2, $var3, $var4, $var5 is rw);
  }

  method XRaiseWindow (Display $var0, Window $var1) {
    XRaiseWindow($var0, $var1);
  }

  method XReadBitmapFile (Display $var0, Drawable $var1, Str $var2, gint $var3 is rw, gint $var4 is rw, Pixmap $var5, gint $var6 is rw, gint $var7 is rw) {
    XReadBitmapFile($var0, $var1, $var2, $var3 is rw, $var4 is rw, $var5, $var6 is rw, $var7 is rw);
  }

  method XReadBitmapFileData (Str $var0, gint $var1 is rw, gint $var2 is rw, Str $var3, gint $var4 is rw, gint $var5 is rw) {
    XReadBitmapFileData($var0, $var1 is rw, $var2 is rw, $var3, $var4 is rw, $var5 is rw);
  }

  method XRebindKeysym (Display $var0, KeySym $var1, KeySym $var2, gint $var3, Str $var4, gint $var5) {
    XRebindKeysym($var0, $var1, $var2, $var3, $var4, $var5);
  }

  method XRecolorCursor (Display $var0, Cursor $var1, XColor $var2, XColor $var3) {
    XRecolorCursor($var0, $var1, $var2, $var3);
  }

  method XReconfigureWMWindow (Display $var0, Window $var1, gint $var2, gint $var3, XWindowChanges $var4) {
    XReconfigureWMWindow($var0, $var1, $var2, $var3, $var4);
  }

  method XRefreshKeyboardMapping (XMappingEvent $var0) {
    XRefreshKeyboardMapping($var0);
  }

  method XRegisterIMInstantiateCallback (Display $var0, _XrmHashBucketRec $var1, Str $var2, Str $var3, XIDProc $var4, XPointer $var5) {
    XRegisterIMInstantiateCallback($var0, $var1, $var2, $var3, $var4, $var5);
  }

  method XRemoveConnectionWatch (Display $var0, XConnectionWatchProc $var1, XPointer $var2) {
    XRemoveConnectionWatch($var0, $var1, $var2);
  }

  method XRemoveFromSaveSet (Display $var0, Window $var1) {
    XRemoveFromSaveSet($var0, $var1);
  }

  method XRemoveHost (Display $var0, XHostAddress $var1) {
    XRemoveHost($var0, $var1);
  }

  method XRemoveHosts (Display $var0, XHostAddress $var1, gint $var2) {
    XRemoveHosts($var0, $var1, $var2);
  }

  method XReparentWindow (Display $var0, Window $var1, Window $var2, gint $var3, gint $var4) {
    XReparentWindow($var0, $var1, $var2, $var3, $var4);
  }

  method XResetScreenSaver (Display $var0) {
    XResetScreenSaver($var0);
  }

  method XResizeWindow (Display $var0, Window $var1, gint $var2, gint $var3) {
    XResizeWindow($var0, $var1, $var2, $var3);
  }

  method XResourceManagerString (Display $var0) {
    XResourceManagerString($var0);
  }

  method XRestackWindows (Display $var0, Window $var1, gint $var2) {
    XRestackWindows($var0, $var1, $var2);
  }

  method XRootWindow (Display $var0, gint $var1) {
    XRootWindow($var0, $var1);
  }

  method XRootWindowOfScreen (Screen $var0) {
    XRootWindowOfScreen($var0);
  }

  method XRotateBuffers (Display $var0, gint $var1) {
    XRotateBuffers($var0, $var1);
  }

  method XRotateWindowProperties (Display $var0, Window $var1, Atom $var2, gint $var3, gint $var4) {
    XRotateWindowProperties($var0, $var1, $var2, $var3, $var4);
  }

  method XScreenCount (Display $var0) {
    XScreenCount($var0);
  }

  method XScreenNumberOfScreen (Screen $var0) {
    XScreenNumberOfScreen($var0);
  }

  method XScreenOfDisplay (Display $var0, gint $var1) {
    XScreenOfDisplay($var0, $var1);
  }

  method XScreenResourceString (Screen $var0) {
    XScreenResourceString($var0);
  }

  method XSelectInput (Display $var0, Window $var1, long $var2) {
    XSelectInput($var0, $var1, $var2);
  }

  method XSendEvent (Display $var0, Window $var1, Bool $var2, long $var3, XEvent $var4) {
    XSendEvent($var0, $var1, $var2, $var3, $var4);
  }

  method XServerVendor (Display $var0) {
    XServerVendor($var0);
  }

  method XSetAccessControl (Display $var0, gint $var1) {
    XSetAccessControl($var0, $var1);
  }

  method XSetAfterFunction (Display $(*) (           Display*                )) {
    XSetAfterFunction($(*) (         Display*                ));
  }

  method XSetArcMode (Display $var0, GC $var1, gint $var2) {
    XSetArcMode($var0, $var1, $var2);
  }

  method XSetAuthorization (Str $var0, gint $var1, Str $var2, gint $var3) {
    XSetAuthorization($var0, $var1, $var2, $var3);
  }

  method XSetBackground (Display $var0, GC $var1, long $var2) {
    XSetBackground($var0, $var1, $var2);
  }

  method XSetClipMask (Display $var0, GC $var1, Pixmap $var2) {
    XSetClipMask($var0, $var1, $var2);
  }

  method XSetClipOrigin (Display $var0, GC $var1, gint $var2, gint $var3) {
    XSetClipOrigin($var0, $var1, $var2, $var3);
  }

  method XSetClipRectangles (Display $var0, GC $var1, gint $var2, gint $var3, XRectangle $var4, gint $var5, gint $var6) {
    XSetClipRectangles($var0, $var1, $var2, $var3, $var4, $var5, $var6);
  }

  method XSetCloseDownMode (Display $var0, gint $var1) {
    XSetCloseDownMode($var0, $var1);
  }

  method XSetCommand (Display $var0, Window $var1, Str $var2, gint $var3) {
    XSetCommand($var0, $var1, $var2, $var3);
  }

  method XSetDashes (Display $var0, GC $var1, gint $var2, Str $var3, gint $var4) {
    XSetDashes($var0, $var1, $var2, $var3, $var4);
  }

  method XSetErrorHandler (XErrorHandler $var0) {
    XSetErrorHandler($var0);
  }

  method XSetFillRule (Display $var0, GC $var1, gint $var2) {
    XSetFillRule($var0, $var1, $var2);
  }

  method XSetFillStyle (Display $var0, GC $var1, gint $var2) {
    XSetFillStyle($var0, $var1, $var2);
  }

  method XSetFont (Display $var0, GC $var1, Font $var2) {
    XSetFont($var0, $var1, $var2);
  }

  method XSetFontPath (Display $var0, Str $var1, gint $var2) {
    XSetFontPath($var0, $var1, $var2);
  }

  method XSetForeground (Display $var0, GC $var1, long $var2) {
    XSetForeground($var0, $var1, $var2);
  }

  method XSetFunction (Display $var0, GC $var1, gint $var2) {
    XSetFunction($var0, $var1, $var2);
  }

  method XSetGraphicsExposures (Display $var0, GC $var1, Bool $var2) {
    XSetGraphicsExposures($var0, $var1, $var2);
  }

  method XSetICFocus (XIC $var0) {
    XSetICFocus($var0);
  }

  method XSetICValues (XIC $var0,  $var1, ...) {
    XSetICValues($var0, $var1);
  }

  method XSetIMValues (XIM $var0,  $var1, ...) {
    XSetIMValues($var0, $var1);
  }

  method XSetIOErrorExitHandler (Display $var0, XIOErrorExitHandler $var1, Pointer $var2) {
    XSetIOErrorExitHandler($var0, $var1, $var2);
  }

  method XSetIOErrorHandler (XIOErrorHandler $var0) {
    XSetIOErrorHandler($var0);
  }

  method XSetIconName (Display $var0, Window $var1, Str $var2) {
    XSetIconName($var0, $var1, $var2);
  }

  method XSetInputFocus (Display $var0, Window $var1, gint $var2, Time $var3) {
    XSetInputFocus($var0, $var1, $var2, $var3);
  }

  method XSetLineAttributes (Display $var0, GC $var1, gint $var2, gint $var3, gint $var4, gint $var5) {
    XSetLineAttributes($var0, $var1, $var2, $var3, $var4, $var5);
  }

  method XSetLocaleModifiers (Str $var0) {
    XSetLocaleModifiers($var0);
  }

  method XSetModifierMapping (Display $var0, XModifierKeymap $var1) {
    XSetModifierMapping($var0, $var1);
  }

  method XSetOCValues (XOC $var0,  $var1, ...) {
    XSetOCValues($var0, $var1);
  }

  method XSetOMValues (XOM $var0,  $var1, ...) {
    XSetOMValues($var0, $var1);
  }

  method XSetPlaneMask (Display $var0, GC $var1, long $var2) {
    XSetPlaneMask($var0, $var1, $var2);
  }

  method XSetPointerMapping (Display $var0, Str $var1, gint $var2) {
    XSetPointerMapping($var0, $var1, $var2);
  }

  method XSetScreenSaver (Display $var0, gint $var1, gint $var2, gint $var3, gint $var4) {
    XSetScreenSaver($var0, $var1, $var2, $var3, $var4);
  }

  method XSetSelectionOwner (Display $var0, Atom $var1, Window $var2, Time $var3) {
    XSetSelectionOwner($var0, $var1, $var2, $var3);
  }

  method XSetState (Display $var0, GC $var1, long $var2, long $var3, gint $var4, long $var5) {
    XSetState($var0, $var1, $var2, $var3, $var4, $var5);
  }

  method XSetStipple (Display $var0, GC $var1, Pixmap $var2) {
    XSetStipple($var0, $var1, $var2);
  }

  method XSetSubwindowMode (Display $var0, GC $var1, gint $var2) {
    XSetSubwindowMode($var0, $var1, $var2);
  }

  method XSetTSOrigin (Display $var0, GC $var1, gint $var2, gint $var3) {
    XSetTSOrigin($var0, $var1, $var2, $var3);
  }

  method XSetTile (Display $var0, GC $var1, Pixmap $var2) {
    XSetTile($var0, $var1, $var2);
  }

  method XSetTransientForHint (Display $var0, Window $var1, Window $var2) {
    XSetTransientForHint($var0, $var1, $var2);
  }

  method XSetWMColormapWindows (Display $var0, Window $var1, Window $var2, gint $var3) {
    XSetWMColormapWindows($var0, $var1, $var2, $var3);
  }

  method XSetWMProtocols (Display $var0, Window $var1, Atom $var2, gint $var3) {
    XSetWMProtocols($var0, $var1, $var2, $var3);
  }

  method XSetWindowBackground (Display $var0, Window $var1, long $var2) {
    XSetWindowBackground($var0, $var1, $var2);
  }

  method XSetWindowBackgroundPixmap (Display $var0, Window $var1, Pixmap $var2) {
    XSetWindowBackgroundPixmap($var0, $var1, $var2);
  }

  method XSetWindowBorder (Display $var0, Window $var1, long $var2) {
    XSetWindowBorder($var0, $var1, $var2);
  }

  method XSetWindowBorderPixmap (Display $var0, Window $var1, Pixmap $var2) {
    XSetWindowBorderPixmap($var0, $var1, $var2);
  }

  method XSetWindowBorderWidth (Display $var0, Window $var1, gint $var2) {
    XSetWindowBorderWidth($var0, $var1, $var2);
  }

  method XSetWindowColormap (Display $var0, Window $var1, Colormap $var2) {
    XSetWindowColormap($var0, $var1, $var2);
  }

  method XStoreBuffer (Display $var0, Str $var1, gint $var2, gint $var3) {
    XStoreBuffer($var0, $var1, $var2, $var3);
  }

  method XStoreBytes (Display $var0, Str $var1, gint $var2) {
    XStoreBytes($var0, $var1, $var2);
  }

  method XStoreColor (Display $var0, Colormap $var1, XColor $var2) {
    XStoreColor($var0, $var1, $var2);
  }

  method XStoreColors (Display $var0, Colormap $var1, XColor $var2, gint $var3) {
    XStoreColors($var0, $var1, $var2, $var3);
  }

  method XStoreName (Display $var0, Window $var1, Str $var2) {
    XStoreName($var0, $var1, $var2);
  }

  method XStoreNamedColor (Display $var0, Colormap $var1, Str $var2, long $var3, gint $var4) {
    XStoreNamedColor($var0, $var1, $var2, $var3, $var4);
  }

  method XStringToKeysym (Str $var0) {
    XStringToKeysym($var0);
  }

  method XSupportsLocale {
    XSupportsLocale();
  }

  method XSync (Display $var0, Bool $var1) {
    XSync($var0, $var1);
  }

  method XSynchronize (Display $var0, Bool $var1) {
    XSynchronize($var0, $var1);
  }

  method XTextExtents (XFontStruct $var0, Str $var1, gint $var2, gint $var3 is rw, gint $var4 is rw, gint $var5 is rw, XCharStruct $var6) {
    XTextExtents($var0, $var1, $var2, $var3 is rw, $var4 is rw, $var5 is rw, $var6);
  }

  method XTextExtents16 (XFontStruct $var0, XChar2b $var1, gint $var2, gint $var3 is rw, gint $var4 is rw, gint $var5 is rw, XCharStruct $var6) {
    XTextExtents16($var0, $var1, $var2, $var3 is rw, $var4 is rw, $var5 is rw, $var6);
  }

  method XTextWidth (XFontStruct $var0, Str $var1, gint $var2) {
    XTextWidth($var0, $var1, $var2);
  }

  method XTextWidth16 (XFontStruct $var0, XChar2b $var1, gint $var2) {
    XTextWidth16($var0, $var1, $var2);
  }

  method XTranslateCoordinates (Display $var0, Window $var1, Window $var2, gint $var3, gint $var4, gint $var5 is rw, gint $var6 is rw, Window $var7) {
    XTranslateCoordinates($var0, $var1, $var2, $var3, $var4, $var5 is rw, $var6 is rw, $var7);
  }

  method XUndefineCursor (Display $var0, Window $var1) {
    XUndefineCursor($var0, $var1);
  }

  method XUngrabButton (Display $var0, gint $var1, gint $var2, Window $var3) {
    XUngrabButton($var0, $var1, $var2, $var3);
  }

  method XUngrabKey (Display $var0, gint $var1, gint $var2, Window $var3) {
    XUngrabKey($var0, $var1, $var2, $var3);
  }

  method XUngrabKeyboard (Display $var0, Time $var1) {
    XUngrabKeyboard($var0, $var1);
  }

  method XUngrabPointer (Display $var0, Time $var1) {
    XUngrabPointer($var0, $var1);
  }

  method XUngrabServer (Display $var0) {
    XUngrabServer($var0);
  }

  method XUninstallColormap (Display $var0, Colormap $var1) {
    XUninstallColormap($var0, $var1);
  }

  method XUnloadFont (Display $var0, Font $var1) {
    XUnloadFont($var0, $var1);
  }

  method XUnlockDisplay (Display $var0) {
    XUnlockDisplay($var0);
  }

  method XUnmapSubwindows (Display $var0, Window $var1) {
    XUnmapSubwindows($var0, $var1);
  }

  method XUnmapWindow (Display $var0, Window $var1) {
    XUnmapWindow($var0, $var1);
  }

  method XUnregisterIMInstantiateCallback (Display $var0, _XrmHashBucketRec $var1, Str $var2, Str $var3, XIDProc $var4, XPointer $var5) {
    XUnregisterIMInstantiateCallback($var0, $var1, $var2, $var3, $var4, $var5);
  }

  method XUnsetICFocus (XIC $var0) {
    XUnsetICFocus($var0);
  }

  method XVaCreateNestedList (gint $var0,  $var1, ...) {
    XVaCreateNestedList($var0, $var1);
  }

  method XVendorRelease (Display $var0) {
    XVendorRelease($var0);
  }

  method XVisualIDFromVisual (Visual $var0) {
    XVisualIDFromVisual($var0);
  }

  method XWarpPointer (Display $var0, Window $var1, Window $var2, gint $var3, gint $var4, gint $var5, gint $var6, gint $var7, gint $var8) {
    XWarpPointer($var0, $var1, $var2, $var3, $var4, $var5, $var6, $var7, $var8);
  }

  method XWhitePixel (Display $var0, gint $var1) {
    XWhitePixel($var0, $var1);
  }

  method XWhitePixelOfScreen (Screen $var0) {
    XWhitePixelOfScreen($var0);
  }

  method XWidthMMOfScreen (Screen $var0) {
    XWidthMMOfScreen($var0);
  }

  method XWidthOfScreen (Screen $var0) {
    XWidthOfScreen($var0);
  }

  method XWindowEvent (Display $var0, Window $var1, long $var2, XEvent $var3) {
    XWindowEvent($var0, $var1, $var2, $var3);
  }

  method XWithdrawWindow (Display $var0, Window $var1, gint $var2) {
    XWithdrawWindow($var0, $var1, $var2);
  }

  method XWriteBitmapFile (Display $var0, Str $var1, Pixmap $var2, gint $var3, gint $var4, gint $var5, gint $var6) {
    XWriteBitmapFile($var0, $var1, $var2, $var3, $var4, $var5, $var6);
  }

  method XmbDrawImageString (Display $var0, Drawable $var1, XFontSet $var2, GC $var3, gint $var4, gint $var5, Str $var6, gint $var7) {
    XmbDrawImageString($var0, $var1, $var2, $var3, $var4, $var5, $var6, $var7);
  }

  method XmbDrawString (Display $var0, Drawable $var1, XFontSet $var2, GC $var3, gint $var4, gint $var5, Str $var6, gint $var7) {
    XmbDrawString($var0, $var1, $var2, $var3, $var4, $var5, $var6, $var7);
  }

  method XmbDrawText (Display $var0, Drawable $var1, GC $var2, gint $var3, gint $var4, XmbTextItem $var5, gint $var6) {
    XmbDrawText($var0, $var1, $var2, $var3, $var4, $var5, $var6);
  }

  method XmbLookupString (XIC $var0, XKeyPressedEvent $var1, Str $var2, gint $var3, KeySym $var4, Status $var5) {
    XmbLookupString($var0, $var1, $var2, $var3, $var4, $var5);
  }

  method XmbResetIC (XIC $var0) {
    XmbResetIC($var0);
  }

  method XmbTextEscapement (XFontSet $var0, Str $var1, gint $var2) {
    XmbTextEscapement($var0, $var1, $var2);
  }

  method XmbTextExtents (XFontSet $var0, Str $var1, gint $var2, XRectangle $var3, XRectangle $var4) {
    XmbTextExtents($var0, $var1, $var2, $var3, $var4);
  }

  method XmbTextPerCharExtents (XFontSet $var0, Str $var1, gint $var2, XRectangle $var3, XRectangle $var4, gint $var5, gint $var6 is rw, XRectangle $var7, XRectangle $var8) {
    XmbTextPerCharExtents($var0, $var1, $var2, $var3, $var4, $var5, $var6 is rw, $var7, $var8);
  }

  method XrmInitialize (Pointer $var0) {
    XrmInitialize($var0);
  }

  method Xutf8DrawImageString (Display $var0, Drawable $var1, XFontSet $var2, GC $var3, gint $var4, gint $var5, Str $var6, gint $var7) {
    Xutf8DrawImageString($var0, $var1, $var2, $var3, $var4, $var5, $var6, $var7);
  }

  method Xutf8DrawString (Display $var0, Drawable $var1, XFontSet $var2, GC $var3, gint $var4, gint $var5, Str $var6, gint $var7) {
    Xutf8DrawString($var0, $var1, $var2, $var3, $var4, $var5, $var6, $var7);
  }

  method Xutf8DrawText (Display $var0, Drawable $var1, GC $var2, gint $var3, gint $var4, XmbTextItem $var5, gint $var6) {
    Xutf8DrawText($var0, $var1, $var2, $var3, $var4, $var5, $var6);
  }

  method Xutf8LookupString (XIC $var0, XKeyPressedEvent $var1, Str $var2, gint $var3, KeySym $var4, Status $var5) {
    Xutf8LookupString($var0, $var1, $var2, $var3, $var4, $var5);
  }

  method Xutf8ResetIC (XIC $var0) {
    Xutf8ResetIC($var0);
  }

  method Xutf8TextEscapement (XFontSet $var0, Str $var1, gint $var2) {
    Xutf8TextEscapement($var0, $var1, $var2);
  }

  method Xutf8TextExtents (XFontSet $var0, Str $var1, gint $var2, XRectangle $var3, XRectangle $var4) {
    Xutf8TextExtents($var0, $var1, $var2, $var3, $var4);
  }

  method Xutf8TextPerCharExtents (XFontSet $var0, Str $var1, gint $var2, XRectangle $var3, XRectangle $var4, gint $var5, gint $var6 is rw, XRectangle $var7, XRectangle $var8) {
    Xutf8TextPerCharExtents($var0, $var1, $var2, $var3, $var4, $var5, $var6 is rw, $var7, $var8);
  }

  method XwcDrawImageString (Display $var0, Drawable $var1, XFontSet $var2, GC $var3, gint $var4, gint $var5, wchar_t $var6, gint $var7) {
    XwcDrawImageString($var0, $var1, $var2, $var3, $var4, $var5, $var6, $var7);
  }

  method XwcDrawString (Display $var0, Drawable $var1, XFontSet $var2, GC $var3, gint $var4, gint $var5, wchar_t $var6, gint $var7) {
    XwcDrawString($var0, $var1, $var2, $var3, $var4, $var5, $var6, $var7);
  }

  method XwcDrawText (Display $var0, Drawable $var1, GC $var2, gint $var3, gint $var4, XwcTextItem $var5, gint $var6) {
    XwcDrawText($var0, $var1, $var2, $var3, $var4, $var5, $var6);
  }

  method XwcLookupString (XIC $var0, XKeyPressedEvent $var1, wchar_t $var2, gint $var3, KeySym $var4, Status $var5) {
    XwcLookupString($var0, $var1, $var2, $var3, $var4, $var5);
  }

  method XwcResetIC (XIC $var0) {
    XwcResetIC($var0);
  }

  method XwcTextEscapement (XFontSet $var0, wchar_t $var1, gint $var2) {
    XwcTextEscapement($var0, $var1, $var2);
  }

  method XwcTextExtents (XFontSet $var0, wchar_t $var1, gint $var2, XRectangle $var3, XRectangle $var4) {
    XwcTextExtents($var0, $var1, $var2, $var3, $var4);
  }

  method XwcTextPerCharExtents (XFontSet $var0, wchar_t $var1, gint $var2, XRectangle $var3, XRectangle $var4, gint $var5, gint $var6 is rw, XRectangle $var7, XRectangle $var8) {
    XwcTextPerCharExtents($var0, $var1, $var2, $var3, $var4, $var5, $var6 is rw, $var7, $var8);
  }

  method _Xmbtowc (wchar_t $var0, Str $var1, gint $var2) {
    _Xmbtowc($var0, $var1, $var2);
  }

  method _Xwctomb (Str $var0, wchar_t $var1) {
    _Xwctomb($var0, $var1);
  }

}
