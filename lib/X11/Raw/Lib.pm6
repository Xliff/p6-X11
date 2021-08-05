use v6.c;

use NativeCall;

use X11::Compat::Definitions;
use X11::Raw::Definitions;
use X11::Raw::Structs;
use X11::Raw::Enums;

unit package X11::Raw::Lib;

### /usr/include/X11/Xlib.h

sub XAddToExtensionList (XExtData $var0, XExtData $var1)
  returns realInt
  is native(x11)
  is export
{ * }

sub XDefaultVisualOfScreen (Screen $var0)
  returns Visual
  is native(x11)
  is export
{ * }

# sub XCreateIC (XIM $var0,  $var1, ...)
#   returns XIC
#   is native(x11)
#   is export
# { * }

# sub XCreateOC (XOM $var0,  $var1, ...)
#   returns XOC
#   is native(x11)
#   is export
# { * }

sub XAllPlanes (Pointer $var0)
  returns long
  is native(x11)
  is export
{ * }

sub XBaseFontNameListOfFontSet (XFontSet $var0)
  returns Str
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

sub XDefaultColormapOfScreen (Screen $var0)
  returns Colormap
  is native(x11)
  is export
{ * }

sub XDefaultGCOfScreen (Screen $var0)
  returns GC
  is native(x11)
  is export
{ * }

sub XDeleteModifiermapEntry (
  XModifierKeymap $var0,
  realInt         $var1,
  KeyCode         $var2,
  realInt         $var3
)
  returns XModifierKeymap
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

sub XDirectionalDependentDrawing (XFontSet $var0)
  returns Bool
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

sub XEHeadOfExtensionList (XEDataObject $var0)
  returns CArray[CArray[XExtData]]
  is native(x11)
  is export
{ * }

sub XEventMaskOfScreen (Screen $var0)
  returns long
  is native(x11)
  is export
{ * }

sub XExtentsOfFontSet (XFontSet $var0)
  returns XFontSetExtents
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

sub XFontsOfFontSet (
  XFontSet                             $var0,
  CArray[CArray[Pointer[XFontStruct]]] $var1,
  Str                                  $var2
)
  returns realInt
  is native(x11)
  is export
{ * }

sub XFree (Pointer $var0)
  returns realInt
  is native(x11)
  is export
{ * }

sub XFreeExtensionList (CArray[Str] $var0)
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

sub XFreeModifiermap (XModifierKeymap $var0)
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

# sub XGetIMValues (XIM $var0,  $var1, ...)
#   returns Str
#   is native(x11)
#   is export
# { * }

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

# cw: wtf? -- Display $(*) (           Display*                 ,                XEvent*                        ,                XPointer                                     )
sub XIfEvent (Pointer)
  returns realInt
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

sub XInsertModifiermapEntry (
  XModifierKeymap $var0,
  realInt         $var1,
  KeyCode         $var2,
  realInt         $var3
)
  returns XModifierKeymap
  is native(x11)
  is export
{ * }

sub XKeysymToString (KeySym $var0)
  returns Str
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

sub XLookupKeysym (XKeyEvent $var0, realInt $var1)
  returns KeySym
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

sub XNewModifiermap (realInt $var0)
  returns XModifierKeymap
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

sub XParseGeometry (Str $var0, realInt $var1 is rw, realInt $var2 is rw, realInt $var3 is rw, realInt $var4 is rw)
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

sub XPlanesOfScreen (Screen $var0)
  returns realInt
  is native(x11)
  is export
{ * }

sub XReadBitmapFileData (Str $var0, realInt $var1 is rw, realInt $var2 is rw, CArray[Str] $var3, realInt $var4 is rw, realInt $var5 is rw)
  returns realInt
  is native(x11)
  is export
{ * }

sub XRefreshKeyboardMapping (XMappingEvent $var0)
  returns realInt
  is native(x11)
  is export
{ * }

sub XScreenNumberOfScreen (Screen $var0)
  returns realInt
  is native(x11)
  is export
{ * }

sub XScreenResourceString (Screen $var0)
  returns Str
  is native(x11)
  is export
{ * }

# cw: wtf? - Display $(*) (        Display*                )
sub XSetAfterFunction (Pointer)
  returns realInt
  is native(x11)
  is export
{ * }

sub XSetAuthorization (Str $var0, realInt $var1, Str $var2, realInt $var3)
  is native(x11)
  is export
{ * }

sub XSetErrorHandler (XErrorHandler $var0)
  returns XErrorHandler
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

sub XSetIOErrorHandler (XIOErrorHandler $var0)
  returns XIOErrorHandler
  is native(x11)
  is export
{ * }

sub XSetLocaleModifiers (Str $var0)
  returns Str
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

sub XTextWidth (XFontStruct $var0, Pointer $var1, realInt $var2)
  returns realInt
  is native(x11)
  is export
{ * }

sub XTextWidth16 (XFontStruct $var0, Pointer $var1, realInt $var2)
  returns realInt
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

sub XVisualIDFromVisual (Visual $var0)
  returns VisualID
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

sub XmbLookupString (
  XIC              $var0,
  XKeyPressedEvent $var1,
  Str              $var2,
  realInt          $var3,
  KeySym           $var4,
  Status           $var5
)
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
