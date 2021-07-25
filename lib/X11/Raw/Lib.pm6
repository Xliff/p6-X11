use v6.c;

use NativeCall;

use X11::Compat::Definitions;
use X11::Raw::Definitions;
use X11::Raw::Structs;
use X11::Raw::Enums;

unit package X11::Raw::Lib;

### /usr/include/X11/Xlib.h

sub XActivateScreenSaver (Display $var0)
  returns realInt
  is native(x11)
  is export
{ * }

sub XAddConnectionWatch (
  Display              $var0,
  XConnectionWatchProc $var1,
  XPointer             $var2
)
  returns Status
  is native(x11)
  is export
{ * }

sub XAddExtension (Display $var0)
  returns XExtCodes
  is native(x11)
  is export
{ * }

sub XAddHost (Display $var0, XHostAddress $var1)
  returns realInt
  is native(x11)
  is export
{ * }

sub XAddHosts (Display $var0, XHostAddress $var1, realInt $var2)
  returns realInt
  is native(x11)
  is export
{ * }

sub XAddToExtensionList (XExtData $var0, XExtData $var1)
  returns realInt
  is native(x11)
  is export
{ * }

sub XAddToSaveSet (Display $var0, Window $var1)
  returns realInt
  is native(x11)
  is export
{ * }

sub XAllPlanes (Pointer $var0)
  returns long
  is native(x11)
  is export
{ * }

sub XAllocColor (Display $var0, Colormap $var1, XColor $var2)
  returns Status
  is native(x11)
  is export
{ * }

sub XAllocColorCells (
  Display $var0,
  Colormap $var1,
  Bool $var2,
  long $var3,
  realInt $var4,
  long $var5,
  realInt $var6
)
  returns Status
  is native(x11)
  is export
{ * }

sub XAllocColorPlanes (
  Display  $var0,
  Colormap $var1,
  Bool     $var2,
  long     $var3,
  realInt     $var4,
  realInt     $var5,
  realInt     $var6,
  realInt     $var7,
  long     $var8,
  long     $var9,
  long     $var10
)
  returns Status
  is native(x11)
  is export
{ * }

sub XAllocNamedColor (
  Display  $var0,
  Colormap $var1,
  Str      $var2,
  XColor   $var3,
  XColor   $var4
)
  returns Status
  is native(x11)
  is export
{ * }

sub XAllowEvents (Display $var0, realInt $var1, Time $var2)
  returns realInt
  is native(x11)
  is export
{ * }

sub XAutoRepeatOff (Display $var0)
  returns realInt
  is native(x11)
  is export
{ * }

sub XAutoRepeatOn (Display $var0)
  returns realInt
  is native(x11)
  is export
{ * }

sub XBaseFontNameListOfFontSet (XFontSet $var0)
  returns Str
  is native(x11)
  is export
{ * }

sub XBell (Display $var0, realInt $var1)
  returns realInt
  is native(x11)
  is export
{ * }

sub XBitmapBitOrder (Display $var0)
  returns realInt
  is native(x11)
  is export
{ * }

sub XBitmapPad (Display $var0)
  returns realInt
  is native(x11)
  is export
{ * }

sub XBitmapUnit (Display $var0)
  returns realInt
  is native(x11)
  is export
{ * }

sub XBlackPixel (Display $var0, realInt $var1)
  returns long
  is native(x11)
  is export
{ * }

sub XBlackPixelOfScreen (Screen $var0)
  returns long
  is native(x11)
  is export
{ * }

sub XCellsOfScreen (Screen $var0)
  returns realInt
  is native(x11)
  is export
{ * }

sub XChangeActivePointerGrab (
  Display $var0,
  realInt    $var1,
  Cursor  $var2,
  Time    $var3
)
  returns realInt
  is native(x11)
  is export
{ * }

sub XChangeGC (Display $var0, GC $var1, long $var2, XGCValues $var3)
  returns realInt
  is native(x11)
  is export
{ * }

sub XChangeKeyboardControl (Display $var0, long $var1, XKeyboardControl $var2)
  returns realInt
  is native(x11)
  is export
{ * }

sub XChangeKeyboardMapping (
  Display $var0,
  realInt    $var1,
  realInt    $var2,
  KeySym  $var3,
  realInt    $var4
)
  returns realInt
  is native(x11)
  is export
{ * }

sub XChangePointerControl (
  Display $var0,
  Bool    $var1,
  Bool    $var2,
  realInt    $var3,
  realInt    $var4,
  realInt    $var5
)
  returns realInt
  is native(x11)
  is export
{ * }

sub XChangeProperty (
  Display $var0,
  Window  $var1,
  Atom    $var2,
  Atom    $var3,
  realInt    $var4,
  realInt    $var5,
  Str     $var6,
  realInt    $var7
)
  returns realInt
  is native(x11)
  is export
{ * }

sub XChangeSaveSet (Display $var0, Window $var1, realInt $var2)
  returns realInt
  is native(x11)
  is export
{ * }

sub XChangeWindowAttributes (
  Display              $var0,
  Window               $var1,
  long                 $var2,
  XSetWindowAttributes $var3
)
  returns realInt
  is native(x11)
  is export
{ * }

# sub XCheckIfEvent (Display $(*) (              Display*                 ,                XEvent*                        ,                XPointer                                 ))
#   returns Bool
#   is native(x11)
#   is export
# { * }

sub XCheckMaskEvent (Display $var0, long $var1, XEvent $var2)
  returns Bool
  is native(x11)
  is export
{ * }

sub XCheckTypedEvent (Display $var0, realInt $var1, XEvent $var2)
  returns Bool
  is native(x11)
  is export
{ * }

sub XCheckTypedWindowEvent (
  Display $var0,
  Window  $var1,
  realInt    $var2,
  XEvent  $var3
)
  returns Bool
  is native(x11)
  is export
{ * }

sub XCheckWindowEvent (Display $var0, Window $var1, long $var2, XEvent $var3)
  returns Bool
  is native(x11)
  is export
{ * }

sub XCirculateSubwindows (Display $var0, Window $var1, realInt $var2)
  returns realInt
  is native(x11)
  is export
{ * }

sub XCirculateSubwindowsDown (Display $var0, Window $var1)
  returns realInt
  is native(x11)
  is export
{ * }

sub XCirculateSubwindowsUp (Display $var0, Window $var1)
  returns realInt
  is native(x11)
  is export
{ * }

sub XClearArea (
  Display $var0,
  Window  $var1,
  realInt    $var2,
  realInt    $var3,
  realInt    $var4,
  realInt    $var5,
  Bool    $var6
)
  returns realInt
  is native(x11)
  is export
{ * }

sub XClearWindow (Display $var0, Window $var1)
  returns realInt
  is native(x11)
  is export
{ * }

sub XCloseDisplay (Display $var0)
  returns realInt
  is native(x11)
  is export
{ * }

sub XCloseIM (XIM $var0)
  returns Status
  is native(x11)
  is export
{ * }

sub XCloseOM (XOM $var0)
  returns Status
  is native(x11)
  is export
{ * }

sub XConfigureWindow (
  Display        $var0,
  Window         $var1,
  realInt        $var2,
  XWindowChanges $var3
)
  returns realInt
  is native(x11)
  is export
{ * }

sub XConnectionNumber (Display $var0)
  returns realInt
  is native(x11)
  is export
{ * }

sub XContextDependentDrawing (XFontSet $var0)
  returns Bool
  is native(x11)
  is export
{ * }

sub XContextualDrawing (XFontSet $var0)
  returns Bool
  is native(x11)
  is export
{ * }

sub XConvertSelection (
  Display $var0,
  Atom    $var1,
  Atom    $var2,
  Atom    $var3,
  Window  $var4,
  Time    $var5
)
  returns realInt
  is native(x11)
  is export
{ * }

sub XCopyArea (
  Display  $var0,
  Drawable $var1,
  Drawable $var2,
  GC       $var3,
  realInt     $var4,
  realInt     $var5,
  realInt     $var6,
  realInt     $var7,
  realInt     $var8,
  realInt     $var9
)
  returns realInt
  is native(x11)
  is export
{ * }

sub XCopyColormapAndFree (Display $var0, Colormap $var1)
  returns Colormap
  is native(x11)
  is export
{ * }

sub XCopyGC (Display $var0, GC $var1, long $var2, GC $var3)
  returns realInt
  is native(x11)
  is export
{ * }

sub XCopyPlane (
  Display  $var0,
  Drawable $var1,
  Drawable $var2,
  GC       $var3,
  realInt     $var4,
  realInt     $var5,
  realInt     $var6,
  realInt     $var7,
  realInt     $var8,
  realInt     $var9,
  long     $var10
)
  returns realInt
  is native(x11)
  is export
{ * }

sub XCreateBitmapFromData (
  Display  $var0,
  Drawable $var1,
  Str      $var2,
  realInt  $var3,
  realInt  $var4
)
  returns Pixmap
  is native(x11)
  is export
{ * }

sub XCreateColormap (Display $var0, Window $var1, Visual $var2, realInt $var3)
  returns Colormap
  is native(x11)
  is export
{ * }

sub XCreateFontCursor (Display $var0, realInt $var1)
  returns Cursor
  is native(x11)
  is export
{ * }

sub XCreateFontSet (
  Display             $var0,
  Str                 $var1,
  CArray[CArray[Str]] $var2,
  realInt                 $var3 is rw,
  CArray[Str]         $var4
)
  returns XFontSet
  is native(x11)
  is export
{ * }

sub XCreateGC (Display $var0, Drawable $var1, long $var2, XGCValues $var3)
  returns GC
  is native(x11)
  is export
{ * }

sub XCreateGlyphCursor (
  Display $var0,
  Font    $var1,
  Font    $var2,
  realInt $var3,
  realInt $var4,
  XColor  $var5,
  XColor  $var6
)
  returns Cursor
  is native(x11)
  is export
{ * }

# sub XCreateIC (XIM $var0,  $var1, ...)
#   returns XIC
#   is native(x11)
#   is export
# { * }

sub XCreateImage (Display $var0, Visual $var1, realInt $var2, realInt $var3, realInt $var4, Str $var5, realInt $var6, realInt $var7, realInt $var8, realInt $var9)
  returns XImage
  is native(x11)
  is export
{ * }

# sub XCreateOC (XOM $var0,  $var1, ...)
#   returns XOC
#   is native(x11)
#   is export
# { * }

sub XCreatePixmap (Display $var0, Drawable $var1, realInt $var2, realInt $var3, realInt $var4)
  returns Pixmap
  is native(x11)
  is export
{ * }

sub XCreatePixmapCursor (Display $var0, Pixmap $var1, Pixmap $var2, XColor $var3, XColor $var4, realInt $var5, realInt $var6)
  returns Cursor
  is native(x11)
  is export
{ * }

sub XCreatePixmapFromBitmapData (Display $var0, Drawable $var1, Str $var2, realInt $var3, realInt $var4, long $var5, long $var6, realInt $var7)
  returns Pixmap
  is native(x11)
  is export
{ * }

sub XCreateSimpleWindow (Display $var0, Window $var1, realInt $var2, realInt $var3, realInt $var4, realInt $var5, realInt $var6, long $var7, long $var8)
  returns Window
  is native(x11)
  is export
{ * }

sub XCreateWindow (Display $var0, Window $var1, realInt $var2, realInt $var3, realInt $var4, realInt $var5, realInt $var6, realInt $var7, realInt $var8, Visual $var9, long $var10, XSetWindowAttributes $var11)
  returns Window
  is native(x11)
  is export
{ * }

sub XDefaultColormap (Display $var0, realInt $var1)
  returns Colormap
  is native(x11)
  is export
{ * }

sub XDefaultColormapOfScreen (Screen $var0)
  returns Colormap
  is native(x11)
  is export
{ * }

sub XDefaultDepth (Display $var0, realInt $var1)
  returns realInt
  is native(x11)
  is export
{ * }

sub XDefaultDepthOfScreen (Screen $var0)
  returns realInt
  is native(x11)
  is export
{ * }

sub XDefaultGC (Display $var0, realInt $var1)
  returns GC
  is native(x11)
  is export
{ * }

sub XDefaultGCOfScreen (Screen $var0)
  returns GC
  is native(x11)
  is export
{ * }

sub XDefaultRootWindow (Display $var0)
  returns Window
  is native(x11)
  is export
{ * }

sub XDefaultScreen (Display $var0)
  returns realInt
  is native(x11)
  is export
{ * }

sub XDefaultScreenOfDisplay (Display $var0)
  returns Screen
  is native(x11)
  is export
{ * }

sub XDefaultVisual (Display $var0, realInt $var1)
  returns Visual
  is native(x11)
  is export
{ * }

sub XDefaultVisualOfScreen (Screen $var0)
  returns Visual
  is native(x11)
  is export
{ * }

sub XDefineCursor (Display $var0, Window $var1, Cursor $var2)
  returns realInt
  is native(x11)
  is export
{ * }

sub XDeleteModifiermapEntry (XModifierKeymap $var0, realInt $var1, KeyCode $var2, realInt $var3)
  returns XModifierKeymap
  is native(x11)
  is export
{ * }

sub XDeleteProperty (Display $var0, Window $var1, Atom $var2)
  returns realInt
  is native(x11)
  is export
{ * }

sub XDestroyIC (XIC $var0)
  is native(x11)
  is export
{ * }

sub XDestroyOC (XOC $var0)
  is native(x11)
  is export
{ * }

sub XDestroySubwindows (Display $var0, Window $var1)
  returns realInt
  is native(x11)
  is export
{ * }

sub XDestroyWindow (Display $var0, Window $var1)
  returns realInt
  is native(x11)
  is export
{ * }

sub XDirectionalDependentDrawing (XFontSet $var0)
  returns Bool
  is native(x11)
  is export
{ * }

sub XDisableAccessControl (Display $var0)
  returns realInt
  is native(x11)
  is export
{ * }

sub XDisplayCells (Display $var0, realInt $var1)
  returns realInt
  is native(x11)
  is export
{ * }

sub XDisplayHeight (Display $var0, realInt $var1)
  returns realInt
  is native(x11)
  is export
{ * }

sub XDisplayHeightMM (Display $var0, realInt $var1)
  returns realInt
  is native(x11)
  is export
{ * }

sub XDisplayKeycodes (Display $var0, realInt $var1 is rw, realInt $var2 is rw)
  returns realInt
  is native(x11)
  is export
{ * }

sub XDisplayMotionBufferSize (Display $var0)
  returns long
  is native(x11)
  is export
{ * }

sub XDisplayName (Str $var0)
  returns Str
  is native(x11)
  is export
{ * }

sub XDisplayOfIM (XIM $var0)
  returns Display
  is native(x11)
  is export
{ * }

sub XDisplayOfOM (XOM $var0)
  returns Display
  is native(x11)
  is export
{ * }

sub XDisplayOfScreen (Screen $var0)
  returns Display
  is native(x11)
  is export
{ * }

sub XDisplayPlanes (Display $var0, realInt $var1)
  returns realInt
  is native(x11)
  is export
{ * }

sub XDisplayString (Display $var0)
  returns Str
  is native(x11)
  is export
{ * }

sub XDisplayWidth (Display $var0, realInt $var1)
  returns realInt
  is native(x11)
  is export
{ * }

sub XDisplayWidthMM (Display $var0, realInt $var1)
  returns realInt
  is native(x11)
  is export
{ * }

sub XDoesBackingStore (Screen $var0)
  returns realInt
  is native(x11)
  is export
{ * }

sub XDoesSaveUnders (Screen $var0)
  returns Bool
  is native(x11)
  is export
{ * }

sub XDrawArc (Display $var0, Drawable $var1, GC $var2, realInt $var3, realInt $var4, realInt $var5, realInt $var6, realInt $var7, realInt $var8)
  returns realInt
  is native(x11)
  is export
{ * }

sub XDrawArcs (Display $var0, Drawable $var1, GC $var2, XArc $var3, realInt $var4)
  returns realInt
  is native(x11)
  is export
{ * }

sub XDrawImageString (Display $var0, Drawable $var1, GC $var2, realInt $var3, realInt $var4, Str $var5, realInt $var6)
  returns realInt
  is native(x11)
  is export
{ * }

sub XDrawImageString16 (Display $var0, Drawable $var1, GC $var2, realInt $var3, realInt $var4, XChar2b $var5, realInt $var6)
  returns realInt
  is native(x11)
  is export
{ * }

sub XDrawLine (Display $var0, Drawable $var1, GC $var2, realInt $var3, realInt $var4, realInt $var5, realInt $var6)
  returns realInt
  is native(x11)
  is export
{ * }

sub XDrawLines (Display $var0, Drawable $var1, GC $var2, XPoint $var3, realInt $var4, realInt $var5)
  returns realInt
  is native(x11)
  is export
{ * }

sub XDrawPoint (Display $var0, Drawable $var1, GC $var2, realInt $var3, realInt $var4)
  returns realInt
  is native(x11)
  is export
{ * }

sub XDrawPoints (Display $var0, Drawable $var1, GC $var2, XPoint $var3, realInt $var4, realInt $var5)
  returns realInt
  is native(x11)
  is export
{ * }

sub XDrawRectangle (Display $var0, Drawable $var1, GC $var2, realInt $var3, realInt $var4, realInt $var5, realInt $var6)
  returns realInt
  is native(x11)
  is export
{ * }

sub XDrawRectangles (Display $var0, Drawable $var1, GC $var2, XRectangle $var3, realInt $var4)
  returns realInt
  is native(x11)
  is export
{ * }

sub XDrawSegments (Display $var0, Drawable $var1, GC $var2, XSegment $var3, realInt $var4)
  returns realInt
  is native(x11)
  is export
{ * }

sub XDrawString (Display $var0, Drawable $var1, GC $var2, realInt $var3, realInt $var4, Str $var5, realInt $var6)
  returns realInt
  is native(x11)
  is export
{ * }

sub XDrawString16 (Display $var0, Drawable $var1, GC $var2, realInt $var3, realInt $var4, XChar2b $var5, realInt $var6)
  returns realInt
  is native(x11)
  is export
{ * }

sub XDrawText (Display $var0, Drawable $var1, GC $var2, realInt $var3, realInt $var4, XTextItem $var5, realInt $var6)
  returns realInt
  is native(x11)
  is export
{ * }

sub XDrawText16 (Display $var0, Drawable $var1, GC $var2, realInt $var3, realInt $var4, XTextItem16 $var5, realInt $var6)
  returns realInt
  is native(x11)
  is export
{ * }

sub XEHeadOfExtensionList (XEDataObject $var0)
  returns CArray[CArray[XExtData]]
  is native(x11)
  is export
{ * }

sub XEnableAccessControl (Display $var0)
  returns realInt
  is native(x11)
  is export
{ * }

sub XEventMaskOfScreen (Screen $var0)
  returns long
  is native(x11)
  is export
{ * }

sub XEventsQueued (Display $var0, realInt $var1)
  returns realInt
  is native(x11)
  is export
{ * }

sub XExtendedMaxRequestSize (Display $var0)
  returns long
  is native(x11)
  is export
{ * }

sub XExtentsOfFontSet (XFontSet $var0)
  returns XFontSetExtents
  is native(x11)
  is export
{ * }

sub XFetchBuffer (Display $var0, realInt $var1 is rw, realInt $var2)
  returns Str
  is native(x11)
  is export
{ * }

sub XFetchBytes (Display $var0, realInt $var1 is rw)
  returns Str
  is native(x11)
  is export
{ * }

sub XFetchName (Display $var0, Window $var1, Str $var2)
  returns Status
  is native(x11)
  is export
{ * }

sub XFillArc (Display $var0, Drawable $var1, GC $var2, realInt $var3, realInt $var4, realInt $var5, realInt $var6, realInt $var7, realInt $var8)
  returns realInt
  is native(x11)
  is export
{ * }

sub XFillArcs (Display $var0, Drawable $var1, GC $var2, XArc $var3, realInt $var4)
  returns realInt
  is native(x11)
  is export
{ * }

sub XFillPolygon (Display $var0, Drawable $var1, GC $var2, XPoint $var3, realInt $var4, realInt $var5, realInt $var6)
  returns realInt
  is native(x11)
  is export
{ * }

sub XFillRectangle (Display $var0, Drawable $var1, GC $var2, realInt $var3, realInt $var4, realInt $var5, realInt $var6)
  returns realInt
  is native(x11)
  is export
{ * }

sub XFillRectangles (Display $var0, Drawable $var1, GC $var2, XRectangle $var3, realInt $var4)
  returns realInt
  is native(x11)
  is export
{ * }

sub XFilterEvent (XEvent $var0, Window $var1)
  returns Bool
  is native(x11)
  is export
{ * }

sub XFindOnExtensionList (XExtData $var0, realInt $var1)
  returns XExtData
  is native(x11)
  is export
{ * }

sub XFlush (Display $var0)
  returns realInt
  is native(x11)
  is export
{ * }

sub XFlushGC (Display $var0, GC $var1)
  is native(x11)
  is export
{ * }

sub XFontsOfFontSet (
  XFontSet                             $var0,
  CArray[CArray[Pointer[XFontStruct]]] $var1,
  Str                                  $var2
)
  returns realInt
  is native(x11)
  is export
{ * }

sub XForceScreenSaver (Display $var0, realInt $var1)
  returns realInt
  is native(x11)
  is export
{ * }

sub XFree (Pointer $var0)
  returns realInt
  is native(x11)
  is export
{ * }

sub XFreeColormap (Display $var0, Colormap $var1)
  returns realInt
  is native(x11)
  is export
{ * }

sub XFreeColors (Display $var0, Colormap $var1, long $var2, realInt $var3, long $var4)
  returns realInt
  is native(x11)
  is export
{ * }

sub XFreeCursor (Display $var0, Cursor $var1)
  returns realInt
  is native(x11)
  is export
{ * }

sub XFreeEventData (Display $var0, XGenericEventCookie $var1)
  is native(x11)
  is export
{ * }

sub XFreeExtensionList (Str $var0)
  returns realInt
  is native(x11)
  is export
{ * }

sub XFreeFont (Display $var0, XFontStruct $var1)
  returns realInt
  is native(x11)
  is export
{ * }

sub XFreeFontInfo (Str $var0, XFontStruct $var1, realInt $var2)
  returns realInt
  is native(x11)
  is export
{ * }

sub XFreeFontNames (Str $var0)
  returns realInt
  is native(x11)
  is export
{ * }

sub XFreeFontPath (Str $var0)
  returns realInt
  is native(x11)
  is export
{ * }

sub XFreeFontSet (Display $var0, XFontSet $var1)
  is native(x11)
  is export
{ * }

sub XFreeGC (Display $var0, GC $var1)
  returns realInt
  is native(x11)
  is export
{ * }

sub XFreeModifiermap (XModifierKeymap $var0)
  returns realInt
  is native(x11)
  is export
{ * }

sub XFreePixmap (Display $var0, Pixmap $var1)
  returns realInt
  is native(x11)
  is export
{ * }

sub XFreeStringList (Str $var0)
  is native(x11)
  is export
{ * }

sub XGContextFromGC (GC $var0)
  returns GContext
  is native(x11)
  is export
{ * }

sub XGeometry (Display $var0, realInt $var1, Str $var2, Str $var3, realInt $var4, realInt $var5, realInt $var6, realInt $var7, realInt $var8, realInt $var9 is rw, realInt $var10 is rw, realInt $var11 is rw, realInt $var12 is rw)
  returns realInt
  is native(x11)
  is export
{ * }

sub XGetAtomName (Display $var0, Atom $var1)
  returns Str
  is native(x11)
  is export
{ * }

sub XGetAtomNames (Display $var0, Atom $var1, realInt $var2, CArray[Str] $var3)
  returns Status
  is native(x11)
  is export
{ * }

sub XGetCommand (Display $var0, Window $var1, Str $var2, realInt $var3 is rw)
  returns Status
  is native(x11)
  is export
{ * }

sub XGetDefault (Display $var0, Str $var1, Str $var2)
  returns Str
  is native(x11)
  is export
{ * }

sub XGetErrorDatabaseText (Display $var0, Str $var1, Str $var2, Str $var3, Str $var4, realInt $var5)
  returns realInt
  is native(x11)
  is export
{ * }

sub XGetErrorText (Display $var0, realInt $var1, Str $var2, realInt $var3)
  returns realInt
  is native(x11)
  is export
{ * }

sub XGetEventData (Display $var0, XGenericEventCookie $var1)
  returns Bool
  is native(x11)
  is export
{ * }

sub XGetFontPath (Display $var0, realInt $var1 is rw)
  returns Str
  is native(x11)
  is export
{ * }

sub XGetFontProperty (XFontStruct $var0, Atom $var1, long $var2)
  returns Bool
  is native(x11)
  is export
{ * }

sub XGetGCValues (Display $var0, GC $var1, long $var2, XGCValues $var3)
  returns Status#   returns Str
#   is native(x11)
#   is export
# { * }
#
# sub XGetIMValues (XIM $var0,  $var1, ...)
#   returns Str
#   is native(x11)
#   is export
# { * }
  is native(x11)
  is export
{ * }

sub XGetGeometry (Display $var0, Drawable $var1, Window $var2, realInt $var3 is rw, realInt $var4 is rw, realInt $var5 is rw, realInt $var6 is rw, realInt $var7 is rw, realInt $var8 is rw)
  returns Status
  is native(x11)
  is export
{ * }

# sub XGetICValues (XIC $var0,  $var1, ...)
#   returns Str
#   is native(x11)
#   is export
# { * }
#
# sub XGetIMValues (XIM $var0,  $var1, ...)
#   returns Str
#   is native(x11)
#   is export
# { * }

sub XGetIconName (Display $var0, Window $var1, Str $var2)
  returns Status
  is native(x11)
  is export
{ * }

sub XGetImage (Display $var0, Drawable $var1, realInt $var2, realInt $var3, realInt $var4, realInt $var5, long $var6, realInt $var7)
  returns XImage
  is native(x11)
  is export
{ * }

sub XGetInputFocus (Display $var0, Window $var1, realInt $var2 is rw)
  returns realInt
  is native(x11)
  is export
{ * }

sub XGetKeyboardControl (Display $var0, XKeyboardState $var1)
  returns realInt
  is native(x11)
  is export
{ * }

sub XGetKeyboardMapping (Display $var0, realInt $var1, KeyCode $var2, realInt $var3, realInt $var4 is rw)
  returns KeySym
  is native(x11)
  is export
{ * }

sub XGetModifierMapping (Display $var0)
  returns XModifierKeymap
  is native(x11)
  is export
{ * }

sub XGetMotionEvents (Display $var0, Window $var1, Time $var2, Time $var3, realInt $var4 is rw)
  returns XTimeCoord
  is native(x11)
  is export
{ * }

# sub XGetOCValues (XOC $var0,  $var1, ...)
#   returns Str
#   is native(x11)
#   is export
# { * }
#
# sub XGetOMValues (XOM $var0,  $var1, ...)
#   returns Str
#   is native(x11)
#   is export
# { * }

sub XGetPointerControl (Display $var0, realInt $var1 is rw, realInt $var2 is rw, realInt $var3 is rw)
  returns realInt
  is native(x11)
  is export
{ * }

sub XGetPointerMapping (Display $var0, Str $var1, realInt $var2)
  returns realInt
  is native(x11)
  is export
{ * }

sub XGetScreenSaver (Display $var0, realInt $var1 is rw, realInt $var2 is rw, realInt $var3 is rw, realInt $var4 is rw)
  returns realInt
  is native(x11)
  is export
{ * }

sub XGetSelectionOwner (Display $var0, Atom $var1)
  returns Window
  is native(x11)
  is export
{ * }

sub XGetSubImage (Display $var0, Drawable $var1, realInt $var2, realInt $var3, realInt $var4, realInt $var5, long $var6, realInt $var7, XImage $var8, realInt $var9, realInt $var10)
  returns XImage
  is native(x11)
  is export
{ * }

sub XGetTransientForHint (Display $var0, Window $var1, Window $var2)
  returns Status
  is native(x11)
  is export
{ * }

sub XGetWMColormapWindows (Display $var0, Window $var1, Window $var2, realInt $var3 is rw)
  returns Status
  is native(x11)
  is export
{ * }

sub XGetWMProtocols (Display $var0, Window $var1, Atom $var2, realInt $var3 is rw)
  returns Status
  is native(x11)
  is export
{ * }

sub XGetWindowAttributes (Display $var0, Window $var1, XWindowAttributes $var2)
  returns Status
  is native(x11)
  is export
{ * }

sub XGetWindowProperty (
  Display       $var0,
  Window        $var1,
  Atom          $var2,
  long          $var3,
  long          $var4,
  Bool          $var5,
  Atom          $var6,
  Atom          $var7  is rw,
  realInt       $var8  is rw,
  long          $var9  is rw,
  long          $var10 is rw,
  CArray[uint8] $var11
)
  returns realInt
  is native(x11)
  is export
{ * }

sub XGrabButton (Display $var0, realInt $var1, realInt $var2, Window $var3, Bool $var4, realInt $var5, realInt $var6, realInt $var7, Window $var8, Cursor $var9)
  returns realInt
  is native(x11)
  is export
{ * }

sub XGrabKey (Display $var0, realInt $var1, realInt $var2, Window $var3, Bool $var4, realInt $var5, realInt $var6)
  returns realInt
  is native(x11)
  is export
{ * }

sub XGrabKeyboard (Display $var0, Window $var1, Bool $var2, realInt $var3, realInt $var4, Time $var5)
  returns realInt
  is native(x11)
  is export
{ * }

sub XGrabPointer (Display $var0, Window $var1, Bool $var2, realInt $var3, realInt $var4, realInt $var5, Window $var6, Cursor $var7, Time $var8)
  returns realInt
  is native(x11)
  is export
{ * }

sub XGrabServer (Display $var0)
  returns realInt
  is native(x11)
  is export
{ * }

sub XHeightMMOfScreen (Screen $var0)
  returns realInt
  is native(x11)
  is export
{ * }

sub XHeightOfScreen (Screen $var0)
  returns realInt
  is native(x11)
  is export
{ * }

sub XIMOfIC (XIC $var0)
  returns XIM
  is native(x11)
  is export
{ * }

sub XIconifyWindow (Display $var0, Window $var1, realInt $var2)
  returns Status
  is native(x11)
  is export
{ * }

# cw: wtf? -- Display $(*) (           Display*                 ,                XEvent*                        ,                XPointer                                     )
sub XIfEvent (Pointer)
  returns realInt
  is native(x11)
  is export
{ * }

sub XImageByteOrder (Display $var0)
  returns realInt
  is native(x11)
  is export
{ * }

sub XInitExtension (Display $var0, Str $var1)
  returns XExtCodes
  is native(x11)
  is export
{ * }

sub XInitImage (XImage $var0)
  returns Status
  is native(x11)
  is export
{ * }

sub XInitThreads (Pointer $var0)
  returns Status
  is native(x11)
  is export
{ * }

sub XInsertModifiermapEntry (XModifierKeymap $var0, realInt $var1, KeyCode $var2, realInt $var3)
  returns XModifierKeymap
  is native(x11)
  is export
{ * }

sub XInstallColormap (Display $var0, Colormap $var1)
  returns realInt
  is native(x11)
  is export
{ * }

sub XInternAtom (Display $var0, Str $var1, Bool $var2)
  returns Atom
  is native(x11)
  is export
{ * }

sub XInternAtoms (Display $var0, Str $var1, realInt $var2, Bool $var3, Atom $var4)
  returns Status
  is native(x11)
  is export
{ * }

sub XInternalConnectionNumbers (
  Display     $var0,
  CArray[realInt] $var1,
  realInt         $var2 is rw
)
  returns Status
  is native(x11)
  is export
{ * }

sub XKeycodeToKeysym (Display $var0, realInt $var1, KeyCode $var2, realInt $var3)
  returns KeySym
  is native(x11)
  is export
{ * }

sub XKeysymToKeycode (Display $var0, KeySym $var1)
  returns KeyCode
  is native(x11)
  is export
{ * }

sub XKeysymToString (KeySym $var0)
  returns Str
  is native(x11)
  is export
{ * }

sub XKillClient (Display $var0, XID $var1)
  returns realInt
  is native(x11)
  is export
{ * }

sub XLastKnownRequestProcessed (Display $var0)
  returns long
  is native(x11)
  is export
{ * }

sub XListDepths (Display $var0, realInt $var1, realInt $var2 is rw)
  returns realInt
  is native(x11)
  is export
{ * }

sub XListExtensions (Display $var0, realInt $var1 is rw)
  returns Str
  is native(x11)
  is export
{ * }

sub XListFonts (Display $var0, Str $var1, realInt $var2, realInt $var3 is rw)
  returns Str
  is native(x11)
  is export
{ * }

sub XListFontsWithInfo (Display $var0, Str $var1, realInt $var2, realInt $var3 is rw, XFontStruct $var4)
  returns Str
  is native(x11)
  is export
{ * }

sub XListHosts (Display $var0, realInt $var1 is rw, Bool $var2)
  returns XHostAddress
  is native(x11)
  is export
{ * }

sub XListInstalledColormaps (Display $var0, Window $var1, realInt $var2 is rw)
  returns CArray[Colormap]
  is native(x11)
  is export
{ * }

sub XListPixmapFormats (Display $var0, realInt $var1 is rw)
  returns XPixmapFormatValues
  is native(x11)
  is export
{ * }

sub XListProperties (Display $var0, Window $var1, realInt $var2 is rw)
  returns Atom
  is native(x11)
  is export
{ * }

sub XLoadFont (Display $var0, Str $var1)
  returns Font
  is native(x11)
  is export
{ * }

sub XLocaleOfFontSet (XFontSet $var0)
  returns Str
  is native(x11)
  is export
{ * }

sub XLocaleOfIM (XIM $var0)
  returns Str
  is native(x11)
  is export
{ * }

sub XLocaleOfOM (XOM $var0)
  returns Str
  is native(x11)
  is export
{ * }

sub XLockDisplay (Display $var0)
  is native(x11)
  is export
{ * }

sub XLookupColor (Display $var0, Colormap $var1, Str $var2, XColor $var3, XColor $var4)
  returns Status
  is native(x11)
  is export
{ * }

sub XLookupKeysym (XKeyEvent $var0, realInt $var1)
  returns KeySym
  is native(x11)
  is export
{ * }

sub XLowerWindow (Display $var0, Window $var1)
  returns realInt
  is native(x11)
  is export
{ * }

sub XMapRaised (Display $var0, Window $var1)
  returns realInt
  is native(x11)
  is export
{ * }

sub XMapSubwindows (Display $var0, Window $var1)
  returns realInt
  is native(x11)
  is export
{ * }

sub XMapWindow (Display $var0, Window $var1)
  returns realInt
  is native(x11)
  is export
{ * }

sub XMaskEvent (Display $var0, long $var1, XEvent $var2)
  returns realInt
  is native(x11)
  is export
{ * }

sub XMaxCmapsOfScreen (Screen $var0)
  returns realInt
  is native(x11)
  is export
{ * }

sub XMaxRequestSize (Display $var0)
  returns long
  is native(x11)
  is export
{ * }

sub XMinCmapsOfScreen (Screen $var0)
  returns realInt
  is native(x11)
  is export
{ * }

sub XMoveResizeWindow (Display $var0, Window $var1, realInt $var2, realInt $var3, realInt $var4, realInt $var5)
  returns realInt
  is native(x11)
  is export
{ * }

sub XMoveWindow (Display $var0, Window $var1, realInt $var2, realInt $var3)
  returns realInt
  is native(x11)
  is export
{ * }

sub XNewModifiermap (realInt $var0)
  returns XModifierKeymap
  is native(x11)
  is export
{ * }

sub XNextEvent (Display $var0, XEvent $var1)
  returns realInt
  is native(x11)
  is export
{ * }

sub XNextRequest (Display $var0)
  returns long
  is native(x11)
  is export
{ * }

sub XNoOp (Display $var0)
  returns realInt
  is native(x11)
  is export
{ * }

sub XOMOfOC (XOC $var0)
  returns XOM
  is native(x11)
  is export
{ * }

sub XOpenDisplay (Str $var0)
  returns Display
  is native(x11)
  is export
{ * }

sub XOpenIM (Display $var0, XrmHashBucket $var1, Str $var2, Str $var3)
  returns XIM
  is native(x11)
  is export
{ * }

sub XOpenOM (Display $var0, XrmHashBucket $var1, Str $var2, Str $var3)
  returns XOM
  is native(x11)
  is export
{ * }

sub XParseColor (Display $var0, Colormap $var1, Str $var2, XColor $var3)
  returns Status
  is native(x11)
  is export
{ * }

sub XParseGeometry (Str $var0, realInt $var1 is rw, realInt $var2 is rw, realInt $var3 is rw, realInt $var4 is rw)
  returns realInt
  is native(x11)
  is export
{ * }

sub XPeekEvent (Display $var0, XEvent $var1)
  returns realInt
  is native(x11)
  is export
{ * }

# cw: wtf - Display $(*) (               Display*         ,                XEvent*                ,                XPointer                             )
sub XPeekIfEvent (Pointer)
  returns realInt
  is native(x11)
  is export
{ * }

sub XPending (Display $var0)
  returns realInt
  is native(x11)
  is export
{ * }

sub XPlanesOfScreen (Screen $var0)
  returns realInt
  is native(x11)
  is export
{ * }

sub XProcessInternalConnection (Display $var0, realInt $var1)
  is native(x11)
  is export
{ * }

sub XProtocolRevision (Display $var0)
  returns realInt
  is native(x11)
  is export
{ * }

sub XProtocolVersion (Display $var0)
  returns realInt
  is native(x11)
  is export
{ * }

sub XPutBackEvent (Display $var0, XEvent $var1)
  returns realInt
  is native(x11)
  is export
{ * }

sub XPutImage (Display $var0, Drawable $var1, GC $var2, XImage $var3, realInt $var4, realInt $var5, realInt $var6, realInt $var7, realInt $var8, realInt $var9)
  returns realInt
  is native(x11)
  is export
{ * }

sub XQLength (Display $var0)
  returns realInt
  is native(x11)
  is export
{ * }

sub XQueryBestCursor (Display $var0, Drawable $var1, realInt $var2, realInt $var3, realInt $var4 is rw, realInt $var5 is rw)
  returns Status
  is native(x11)
  is export
{ * }

sub XQueryBestSize (Display $var0, realInt $var1, Drawable $var2, realInt $var3, realInt $var4, realInt $var5 is rw, realInt $var6 is rw)
  returns Status
  is native(x11)
  is export
{ * }

sub XQueryBestStipple (Display $var0, Drawable $var1, realInt $var2, realInt $var3, realInt $var4 is rw, realInt $var5 is rw)
  returns Status
  is native(x11)
  is export
{ * }

sub XQueryBestTile (Display $var0, Drawable $var1, realInt $var2, realInt $var3, realInt $var4 is rw, realInt $var5 is rw)
  returns Status
  is native(x11)
  is export
{ * }

sub XQueryColor (Display $var0, Colormap $var1, XColor $var2)
  returns realInt
  is native(x11)
  is export
{ * }

sub XQueryColors (Display $var0, Colormap $var1, XColor $var2, realInt $var3)
  returns realInt
  is native(x11)
  is export
{ * }

sub XQueryExtension (Display $var0, Str $var1, realInt $var2 is rw, realInt $var3 is rw, realInt $var4 is rw)
  returns Bool
  is native(x11)
  is export
{ * }

sub XQueryFont (Display $var0, XID $var1)
  returns XFontStruct
  is native(x11)
  is export
{ * }

sub XQueryKeymap (Display $var0, Str $var1)
  returns realInt
  is native(x11)
  is export
{ * }

sub XQueryPointer (Display $var0, Window $var1, Window $var2, Window $var3, realInt $var4 is rw, realInt $var5 is rw, realInt $var6 is rw, realInt $var7 is rw, realInt $var8 is rw)
  returns Bool
  is native(x11)
  is export
{ * }

sub XQueryTextExtents (Display $var0, XID $var1, Str $var2, realInt $var3, realInt $var4 is rw, realInt $var5 is rw, realInt $var6 is rw, XCharStruct $var7)
  returns realInt
  is native(x11)
  is export
{ * }

sub XQueryTextExtents16 (Display $var0, XID $var1, XChar2b $var2, realInt $var3, realInt $var4 is rw, realInt $var5 is rw, realInt $var6 is rw, XCharStruct $var7)
  returns realInt
  is native(x11)
  is export
{ * }

sub XQueryTree (Display $var0, Window $var1, Window $var2, Window $var3, Window $var4, realInt $var5 is rw)
  returns Status
  is native(x11)
  is export
{ * }

sub XRaiseWindow (Display $var0, Window $var1)
  returns realInt
  is native(x11)
  is export
{ * }

sub XReadBitmapFile (Display $var0, Drawable $var1, Str $var2, realInt $var3 is rw, realInt $var4 is rw, Pixmap $var5 is rw, realInt $var6 is rw, realInt $var7 is rw)
  returns realInt
  is native(x11)
  is export
{ * }

sub XReadBitmapFileData (Str $var0, realInt $var1 is rw, realInt $var2 is rw, CArray[Str] $var3, realInt $var4 is rw, realInt $var5 is rw)
  returns realInt
  is native(x11)
  is export
{ * }

sub XRebindKeysym (Display $var0, KeySym $var1, KeySym $var2, realInt $var3, Str $var4, realInt $var5)
  returns realInt
  is native(x11)
  is export
{ * }

sub XRecolorCursor (Display $var0, Cursor $var1, XColor $var2, XColor $var3)
  returns realInt
  is native(x11)
  is export
{ * }

sub XReconfigureWMWindow (Display $var0, Window $var1, realInt $var2, realInt $var3, XWindowChanges $var4)
  returns Status
  is native(x11)
  is export
{ * }

sub XRefreshKeyboardMapping (XMappingEvent $var0)
  returns realInt
  is native(x11)
  is export
{ * }

sub XRegisterIMInstantiateCallback (Display $var0, XrmHashBucket $var1, Str $var2, Str $var3, XIDProc $var4, XPointer $var5)
  returns Bool
  is native(x11)
  is export
{ * }

sub XRemoveConnectionWatch (Display $var0, XConnectionWatchProc $var1, XPointer $var2)
  is native(x11)
  is export
{ * }

sub XRemoveFromSaveSet (Display $var0, Window $var1)
  returns realInt
  is native(x11)
  is export
{ * }

sub XRemoveHost (Display $var0, XHostAddress $var1)
  returns realInt
  is native(x11)
  is export
{ * }

sub XRemoveHosts (Display $var0, XHostAddress $var1, realInt $var2)
  returns realInt
  is native(x11)
  is export
{ * }

sub XReparentWindow (Display $var0, Window $var1, Window $var2, realInt $var3, realInt $var4)
  returns realInt
  is native(x11)
  is export
{ * }

sub XResetScreenSaver (Display $var0)
  returns realInt
  is native(x11)
  is export
{ * }

sub XResizeWindow (Display $var0, Window $var1, realInt $var2, realInt $var3)
  returns realInt
  is native(x11)
  is export
{ * }

sub XResourceManagerString (Display $var0)
  returns Str
  is native(x11)
  is export
{ * }

sub XRestackWindows (Display $var0, CArray[Window] $var1, realInt $var2)
  returns realInt
  is native(x11)
  is export
{ * }

sub XRootWindow (Display $var0, realInt $var1)
  returns Window
  is native(x11)
  is export
{ * }

sub XRootWindowOfScreen (Screen $var0)
  returns Window
  is native(x11)
  is export
{ * }

sub XRotateBuffers (Display $var0, realInt $var1)
  returns realInt
  is native(x11)
  is export
{ * }

sub XRotateWindowProperties (
  Display      $var0,
  Window       $var1,
  CArray[Atom] $var2,
  realInt      $var3,
  realInt      $var4
)
  returns realInt
  is native(x11)
  is export
{ * }

sub XScreenCount (Display $var0)
  returns realInt
  is native(x11)
  is export
{ * }

sub XScreenNumberOfScreen (Screen $var0)
  returns realInt
  is native(x11)
  is export
{ * }

sub XScreenOfDisplay (Display $var0, realInt $var1)
  returns Screen
  is native(x11)
  is export
{ * }

sub XScreenResourceString (Screen $var0)
  returns Str
  is native(x11)
  is export
{ * }

sub XSelectInput (Display $var0, Window $var1, long $var2)
  returns realInt
  is native(x11)
  is export
{ * }

sub XSendEvent (Display $var0, Window $var1, Bool $var2, long $var3, XEvent $var4)
  returns Status
  is native(x11)
  is export
{ * }

sub XServerVendor (Display $var0)
  returns Str
  is native(x11)
  is export
{ * }

sub XSetAccessControl (Display $var0, realInt $var1)
  returns realInt
  is native(x11)
  is export
{ * }

# cw: wtf? - Display $(*) (        Display*                )
sub XSetAfterFunction (Pointer)
  returns realInt
  is native(x11)
  is export
{ * }

sub XSetArcMode (Display $var0, GC $var1, realInt $var2)
  returns realInt
  is native(x11)
  is export
{ * }

sub XSetAuthorization (Str $var0, realInt $var1, Str $var2, realInt $var3)
  is native(x11)
  is export
{ * }

sub XSetBackground (Display $var0, GC $var1, long $var2)
  returns realInt
  is native(x11)
  is export
{ * }

sub XSetClipMask (Display $var0, GC $var1, Pixmap $var2)
  returns realInt
  is native(x11)
  is export
{ * }

sub XSetClipOrigin (Display $var0, GC $var1, realInt $var2, realInt $var3)
  returns realInt
  is native(x11)
  is export
{ * }

sub XSetClipRectangles (Display $var0, GC $var1, realInt $var2, realInt $var3, XRectangle $var4, realInt $var5, realInt $var6)
  returns realInt
  is native(x11)
  is export
{ * }

sub XSetCloseDownMode (Display $var0, realInt $var1)
  returns realInt
  is native(x11)
  is export
{ * }

sub XSetCommand (Display $var0, Window $var1, CArray[Str] $var2, realInt $var3)
  returns realInt
  is native(x11)
  is export
{ * }

sub XSetDashes (
  Display       $var0, 
  GC            $var1, 
  realInt       $var2,
  CArray[uint8] $var3,
  realInt       $var4
)
  returns realInt
  is native(x11)
  is export
{ * }

sub XSetErrorHandler (XErrorHandler $var0)
  returns XErrorHandler
  is native(x11)
  is export
{ * }

sub XSetFillRule (Display $var0, GC $var1, realInt $var2)
  returns realInt
  is native(x11)
  is export
{ * }

sub XSetFillStyle (Display $var0, GC $var1, realInt $var2)
  returns realInt
  is native(x11)
  is export
{ * }

sub XSetFont (Display $var0, GC $var1, Font $var2)
  returns realInt
  is native(x11)
  is export
{ * }

sub XSetFontPath (Display $var0, CArray[Str] $var1, realInt $var2)
  returns realInt
  is native(x11)
  is export
{ * }

sub XSetForeground (Display $var0, GC $var1, long $var2)
  returns realInt
  is native(x11)
  is export
{ * }

sub XSetFunction (Display $var0, GC $var1, realInt $var2)
  returns realInt
  is native(x11)
  is export
{ * }

sub XSetGraphicsExposures (Display $var0, GC $var1, Bool $var2)
  returns realInt
  is native(x11)
  is export
{ * }

sub XSetICFocus (XIC $var0)
  is native(x11)
  is export
{ * }

# sub XSetICValues (XIC $var0,  $var1, ...)
#   returns Str
#   is native(x11)
#   is export
# { * }
#
# sub XSetIMValues (XIM $var0,  $var1, ...)
#   returns Str
#   is native(x11)
#   is export
# { * }

sub XSetIOErrorExitHandler (Display $var0, XIOErrorExitHandler $var1, Pointer $var2)
  is native(x11)
  is export
{ * }

sub XSetIOErrorHandler (XIOErrorHandler $var0)
  returns XIOErrorHandler
  is native(x11)
  is export
{ * }

sub XSetIconName (Display $var0, Window $var1, Str $var2)
  returns realInt
  is native(x11)
  is export
{ * }

sub XSetInputFocus (Display $var0, Window $var1, realInt $var2, Time $var3)
  returns realInt
  is native(x11)
  is export
{ * }

sub XSetLineAttributes (Display $var0, GC $var1, realInt $var2, realInt $var3, realInt $var4, realInt $var5)
  returns realInt
  is native(x11)
  is export
{ * }

sub XSetLocaleModifiers (Str $var0)
  returns Str
  is native(x11)
  is export
{ * }

sub XSetModifierMapping (Display $var0, XModifierKeymap $var1)
  returns realInt
  is native(x11)
  is export
{ * }

# sub XSetOCValues (XOC $var0,  $var1, ...)
#   returns Str
#   is native(x11)
#   is export
# { * }
#
# sub XSetOMValues (XOM $var0,  $var1, ...)
#   returns Str
#   is native(x11)
#   is export
# { * }

sub XSetPlaneMask (Display $var0, GC $var1, long $var2)
  returns realInt
  is native(x11)
  is export
{ * }

sub XSetPointerMapping (Display $var0, Str $var1, realInt $var2)
  returns realInt
  is native(x11)
  is export
{ * }

sub XSetScreenSaver (Display $var0, realInt $var1, realInt $var2, realInt $var3, realInt $var4)
  returns realInt
  is native(x11)
  is export
{ * }

sub XSetSelectionOwner (Display $var0, Atom $var1, Window $var2, Time $var3)
  returns realInt
  is native(x11)
  is export
{ * }

sub XSetState (Display $var0, GC $var1, long $var2, long $var3, realInt $var4, long $var5)
  returns realInt
  is native(x11)
  is export
{ * }

sub XSetStipple (Display $var0, GC $var1, Pixmap $var2)
  returns realInt
  is native(x11)
  is export
{ * }

sub XSetSubwindowMode (Display $var0, GC $var1, realInt $var2)
  returns realInt
  is native(x11)
  is export
{ * }

sub XSetTSOrigin (Display $var0, GC $var1, realInt $var2, realInt $var3)
  returns realInt
  is native(x11)
  is export
{ * }

sub XSetTile (Display $var0, GC $var1, Pixmap $var2)
  returns realInt
  is native(x11)
  is export
{ * }

sub XSetTransientForHint (Display $var0, Window $var1, Window $var2)
  returns realInt
  is native(x11)
  is export
{ * }

sub XSetWMColormapWindows (Display $var0, Window $var1, Window $var2, realInt $var3)
  returns Status
  is native(x11)
  is export
{ * }

sub XSetWMProtocols (Display $var0, Window $var1, Atom $var2, realInt $var3)
  returns Status
  is native(x11)
  is export
{ * }

sub XSetWindowBackground (Display $var0, Window $var1, long $var2)
  returns realInt
  is native(x11)
  is export
{ * }

sub XSetWindowBackgroundPixmap (Display $var0, Window $var1, Pixmap $var2)
  returns realInt
  is native(x11)
  is export
{ * }

sub XSetWindowBorder (Display $var0, Window $var1, long $var2)
  returns realInt
  is native(x11)
  is export
{ * }

sub XSetWindowBorderPixmap (Display $var0, Window $var1, Pixmap $var2)
  returns realInt
  is native(x11)
  is export
{ * }

sub XSetWindowBorderWidth (Display $var0, Window $var1, realInt $var2)
  returns realInt
  is native(x11)
  is export
{ * }

sub XSetWindowColormap (Display $var0, Window $var1, Colormap $var2)
  returns realInt
  is native(x11)
  is export
{ * }

sub XStoreBuffer (Display $var0, Str $var1, realInt $var2, realInt $var3)
  returns realInt
  is native(x11)
  is export
{ * }

sub XStoreBytes (Display $var0, Str $var1, realInt $var2)
  returns realInt
  is native(x11)
  is export
{ * }

sub XStoreColor (Display $var0, Colormap $var1, XColor $var2)
  returns realInt
  is native(x11)
  is export
{ * }

sub XStoreColors (Display $var0, Colormap $var1, XColor $var2, realInt $var3)
  returns realInt
  is native(x11)
  is export
{ * }

sub XStoreName (Display $var0, Window $var1, Str $var2)
  returns realInt
  is native(x11)
  is export
{ * }

sub XStoreNamedColor (Display $var0, Colormap $var1, Str $var2, long $var3, realInt $var4)
  returns realInt
  is native(x11)
  is export
{ * }

sub XStringToKeysym (Str $var0)
  returns KeySym
  is native(x11)
  is export
{ * }

sub XSupportsLocale ()
  returns Bool
  is native(x11)
  is export
{ * }

sub XSync (Display $var0, Bool $var1)
  returns realInt
  is native(x11)
  is export
{ * }

sub XSynchronize (Display $var0, Bool $var1)
  returns realInt
  is native(x11)
  is export
{ * }

sub XTextExtents (XFontStruct $var0, Str $var1, realInt $var2, realInt $var3 is rw, realInt $var4 is rw, realInt $var5 is rw, XCharStruct $var6)
  returns realInt
  is native(x11)
  is export
{ * }

sub XTextExtents16 (XFontStruct $var0, XChar2b $var1, realInt $var2, realInt $var3 is rw, realInt $var4 is rw, realInt $var5 is rw, XCharStruct $var6)
  returns realInt
  is native(x11)
  is export
{ * }

sub XTextWidth (XFontStruct $var0, Str $var1, realInt $var2)
  returns realInt
  is native(x11)
  is export
{ * }

sub XTextWidth16 (XFontStruct $var0, XChar2b $var1, realInt $var2)
  returns realInt
  is native(x11)
  is export
{ * }

sub XTranslateCoordinates (Display $var0, Window $var1, Window $var2, realInt $var3, realInt $var4, realInt $var5 is rw, realInt $var6 is rw, Window $var7)
  returns Bool
  is native(x11)
  is export
{ * }

sub XUndefineCursor (Display $var0, Window $var1)
  returns realInt
  is native(x11)
  is export
{ * }

sub XUngrabButton (Display $var0, realInt $var1, realInt $var2, Window $var3)
  returns realInt
  is native(x11)
  is export
{ * }

sub XUngrabKey (Display $var0, realInt $var1, realInt $var2, Window $var3)
  returns realInt
  is native(x11)
  is export
{ * }

sub XUngrabKeyboard (Display $var0, Time $var1)
  returns realInt
  is native(x11)
  is export
{ * }

sub XUngrabPointer (Display $var0, Time $var1)
  returns realInt
  is native(x11)
  is export
{ * }

sub XUngrabServer (Display $var0)
  returns realInt
  is native(x11)
  is export
{ * }

sub XUninstallColormap (Display $var0, Colormap $var1)
  returns realInt
  is native(x11)
  is export
{ * }

sub XUnloadFont (Display $var0, Font $var1)
  returns realInt
  is native(x11)
  is export
{ * }

sub XUnlockDisplay (Display $var0)
  is native(x11)
  is export
{ * }

sub XUnmapSubwindows (Display $var0, Window $var1)
  returns realInt
  is native(x11)
  is export
{ * }

sub XUnmapWindow (Display $var0, Window $var1)
  returns realInt
  is native(x11)
  is export
{ * }

sub XUnregisterIMInstantiateCallback (Display $var0, XrmHashBucket $var1, Str $var2, Str $var3, XIDProc $var4, XPointer $var5)
  returns Bool
  is native(x11)
  is export
{ * }

sub XUnsetICFocus (XIC $var0)
  is native(x11)
  is export
{ * }

# sub XVaCreateNestedList (realInt $var0,  $var1, ...)
#   returns XVaNestedList
#   is native(x11)
#   is export
# { * }

sub XVendorRelease (Display $var0)
  returns realInt
  is native(x11)
  is export
{ * }

sub XVisualIDFromVisual (Visual $var0)
  returns VisualID
  is native(x11)
  is export
{ * }

sub XWarpPointer (Display $var0, Window $var1, Window $var2, realInt $var3, realInt $var4, realInt $var5, realInt $var6, realInt $var7, realInt $var8)
  returns realInt
  is native(x11)
  is export
{ * }

sub XWhitePixel (Display $var0, realInt $var1)
  returns long
  is native(x11)
  is export
{ * }

sub XWhitePixelOfScreen (Screen $var0)
  returns long
  is native(x11)
  is export
{ * }

sub XWidthMMOfScreen (Screen $var0)
  returns realInt
  is native(x11)
  is export
{ * }

sub XWidthOfScreen (Screen $var0)
  returns realInt
  is native(x11)
  is export
{ * }

sub XWindowEvent (Display $var0, Window $var1, long $var2, XEvent $var3)
  returns realInt
  is native(x11)
  is export
{ * }

sub XWithdrawWindow (Display $var0, Window $var1, realInt $var2)
  returns Status
  is native(x11)
  is export
{ * }

sub XWriteBitmapFile (Display $var0, Str $var1, Pixmap $var2, realInt $var3, realInt $var4, realInt $var5, realInt $var6)
  returns realInt
  is native(x11)
  is export
{ * }

sub XmbDrawImageString (Display $var0, Drawable $var1, XFontSet $var2, GC $var3, realInt $var4, realInt $var5, Str $var6, realInt $var7)
  is native(x11)
  is export
{ * }

sub XmbDrawString (Display $var0, Drawable $var1, XFontSet $var2, GC $var3, realInt $var4, realInt $var5, Str $var6, realInt $var7)
  is native(x11)
  is export
{ * }

sub XmbDrawText (Display $var0, Drawable $var1, GC $var2, realInt $var3, realInt $var4, XmbTextItem $var5, realInt $var6)
  is native(x11)
  is export
{ * }

sub XmbLookupString (XIC $var0, XKeyPressedEvent $var1, Str $var2, realInt $var3, KeySym $var4, Status $var5)
  returns realInt
  is native(x11)
  is export
{ * }

sub XmbResetIC (XIC $var0)
  returns Str
  is native(x11)
  is export
{ * }

sub XmbTextEscapement (XFontSet $var0, Str $var1, realInt $var2)
  returns realInt
  is native(x11)
  is export
{ * }

sub XmbTextExtents (XFontSet $var0, Str $var1, realInt $var2, XRectangle $var3, XRectangle $var4)
  returns realInt
  is native(x11)
  is export
{ * }

sub XmbTextPerCharExtents (XFontSet $var0, Str $var1, realInt $var2, XRectangle $var3, XRectangle $var4, realInt $var5, realInt $var6 is rw, XRectangle $var7, XRectangle $var8)
  returns Status
  is native(x11)
  is export
{ * }

sub XrmInitialize (Pointer $var0)
  is native(x11)
  is export
{ * }

sub Xutf8DrawImageString (Display $var0, Drawable $var1, XFontSet $var2, GC $var3, realInt $var4, realInt $var5, Str $var6, realInt $var7)
  is native(x11)
  is export
{ * }

sub Xutf8DrawString (Display $var0, Drawable $var1, XFontSet $var2, GC $var3, realInt $var4, realInt $var5, Str $var6, realInt $var7)
  is native(x11)
  is export
{ * }

sub Xutf8DrawText (Display $var0, Drawable $var1, GC $var2, realInt $var3, realInt $var4, XmbTextItem $var5, realInt $var6)
  is native(x11)
  is export
{ * }

sub Xutf8LookupString (XIC $var0, XKeyPressedEvent $var1, Str $var2, realInt $var3, KeySym $var4, Status $var5)
  returns realInt
  is native(x11)
  is export
{ * }

sub Xutf8ResetIC (XIC $var0)
  returns Str
  is native(x11)
  is export
{ * }

sub Xutf8TextEscapement (XFontSet $var0, Str $var1, realInt $var2)
  returns realInt
  is native(x11)
  is export
{ * }

sub Xutf8TextExtents (XFontSet $var0, Str $var1, realInt $var2, XRectangle $var3, XRectangle $var4)
  returns realInt
  is native(x11)
  is export
{ * }

sub Xutf8TextPerCharExtents (XFontSet $var0, Str $var1, realInt $var2, XRectangle $var3, XRectangle $var4, realInt $var5, realInt $var6 is rw, XRectangle $var7, XRectangle $var8)
  returns Status
  is native(x11)
  is export
{ * }

sub XwcDrawImageString (Display $var0, Drawable $var1, XFontSet $var2, GC $var3, realInt $var4, realInt $var5, wchar_t $var6, realInt $var7)
  is native(x11)
  is export
{ * }

sub XwcDrawString (Display $var0, Drawable $var1, XFontSet $var2, GC $var3, realInt $var4, realInt $var5, wchar_t $var6, realInt $var7)
  is native(x11)
  is export
{ * }

sub XwcDrawText (Display $var0, Drawable $var1, GC $var2, realInt $var3, realInt $var4, XwcTextItem $var5, realInt $var6)
  is native(x11)
  is export
{ * }

sub XwcLookupString (XIC $var0, XKeyPressedEvent $var1, wchar_t $var2, realInt $var3, KeySym $var4, Status $var5)
  returns realInt
  is native(x11)
  is export
{ * }

sub XwcResetIC (XIC $var0)
  returns wchar_t
  is native(x11)
  is export
{ * }

sub XwcTextEscapement (XFontSet $var0, wchar_t $var1, realInt $var2)
  returns realInt
  is native(x11)
  is export
{ * }

sub XwcTextExtents (XFontSet $var0, wchar_t $var1, realInt $var2, XRectangle $var3, XRectangle $var4)
  returns realInt
  is native(x11)
  is export
{ * }

sub XwcTextPerCharExtents (XFontSet $var0, wchar_t $var1, realInt $var2, XRectangle $var3, XRectangle $var4, realInt $var5, realInt $var6 is rw, XRectangle $var7, XRectangle $var8)
  returns Status
  is native(x11)
  is export
{ * }

sub _Xmbtowc (wchar_t $var0, Str $var1, realInt $var2)
  returns realInt
  is native(x11)
  is export
{ * }

sub _Xwctomb (Str $var0, wchar_t $var1)
  returns realInt
  is native(x11)
  is export
{ * }
