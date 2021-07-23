use v6.c;

use X11::Raw::Definitions;
use X11::Raw::Subs;
use X11::Raw::Lib;

class X11::Display {
  has Display $!d;

  submethod BUILD (:$display) {
    $!d = $display;
  }

  method new (Display $display) {
    $display ?? self.bless( :$display ) !! Nil;
  }

  method ActivateScreenSaver {
    XActivateScreenSaver($!d);
  }

  method AddConnectionWatch (XConnectionWatchProc $var1, XPointer $var2) {
    XAddConnectionWatch($!d, $var1, $var2);
  }

  method AddExtension {
    XAddExtension($!d);
  }

  method AddHost (XHostAddress() $var1) {
    XAddHost($!d, $var1);
  }

  method AddHosts (XHostAddress() $var1, Int() $var2) {
    my gint $v2 = $var2;

    XAddHosts($!d, $var1, $v2);
  }

  method AddToSaveSet (Int() $var1) {
    my Window $v1 = $var1;

    XAddToSaveSet($!d, $v1);
  }

  method AllocColor (Colormap() $var1, XColor() $var2) {
    XAllocColor($!d, $var1, $var2);
  }

  method AllocColorCells (
    Colormap() $var1,
    Int()      $var2,
    Int()      $var3,
    Int()      $var4,
    Int()      $var5,
    Int()      $var6
  ) {
    my Boolean $v2     = $var2.so.Int;
    my long ($v3, $v5) = ($var3, $var5);
    my gint ($v4, $v6) = ($var4, $var6);

    XAllocColorCells($!d, $var1, $v2, $v3, $v4, $v5, $v6);
  }

  method AllocColorPlanes (
    Colormap() $var1,
    Int()      $var2,
    Int()      $var3,
    Int()      $var4,
    Int()      $var5,
    Int()      $var6,
    Int()      $var7,
    Int()      $var8,
    Int()      $var9,
    Int()      $var10
  ) {
    my Boolean $v2 = $var2.so.Int;
    my long ($v3, $v8, $v9, $v10) = ($var3, $var8, $var9, $var10);
    my gint ($v4, $v5, $v6, $v7)  = ($var4, $var5, $var6, $var7);

    XAllocColorPlanes($!d, $var1, $v2, $v3, $v4, $v5, $v6, $v7, $v8, $v9, $v10);
  }

  method AllocNamedColor (
    Colormap() $var1,
    Str()      $var2,
    XColor()   $var3,
    XColor()   $var4
  ) {
    XAllocNamedColor($!d, $var1, $v2, $var3, $var4);
  }

  method AllowEvents (Int() $var1, Int() $var2) {
    my gint $v1 = $var1;
    my Time $v2 = $var2;

    XAllowEvents($!d, $v1, $v2);
  }

  method AutoRepeatOff {
    XAutoRepeatOff($!d);
  }

  method AutoRepeatOn {
    XAutoRepeatOn($!d);
  }

  method Bell (Int() $var1) {
    my gint $v1 = $var1;

    XBell($!d, $v1);
  }

  method BitmapBitOrder {
    XBitmapBitOrder($!d);
  }

  method BitmapPad {
    XBitmapPad($!d);
  }

  method BitmapUnit {
    XBitmapUnit($!d);
  }

  method BlackPixel (Int() $var1) {
    my gint $v1 = $var1;

    XBlackPixel($!d, $v1);
  }

  method ChangeActivePointerGrab (Int() $var1, Int() $var2, Int() $var3) {
    my gint   $v1 = $var1;
    my Cursor $v2 = $var2;
    my Time   $v3 = $var3;

    XChangeActivePointerGrab($!d, $v1, $v2, $v3);
  }

  method ChangeGC (GC() $var1, Int() $var2, XGCValues() $var3) {
    my long $v2 = $var2;

    XChangeGC($!d, $var1, $v2, $var3);
  }

  method ChangeKeyboardControl (Int() $var1, XKeyboardControl $var2) {
    my long $v1 = $var1;

    XChangeKeyboardControl($!d, $v1, $var2);
  }

  method ChangeKeyboardMapping (
    Int() $var1,
    Int() $var2,
    Int() $var3,
    Int() $var4
  ) {
    my gint ($v1, $v2, $v4) = ($var1, $var2, $var4);
    my KeySym $v3           = $var3;

    XChangeKeyboardMapping($!d, $v1, $v2, $v3, $v4);
  }

  method ChangePointerControl (
    Int() $var1,
    Int() $var2,
    Int() $var3,
    Int() $var4,
    Int() $var5
  ) {
    my Boolean ($v1, $v2)      = ($var1, $var2);
    my gint    ($v3, $v4, $v5) = ($var3, $var4, $var5);

    XChangePointerControl($!d, $v1, $v2, $v3, $v4, $v5);
  }

  method ChangeProperty (
    Int() $var1,
    Int() $var2,
    Int() $var3,
    Int() $var4,
    Int() $var5,
    Str() $var6,
    Int() $var7
  ) {
    my Window $v1           = $var1;
    my Atom ($v2, $v3)      = ($var2, $var3);
    my gint ($v4, $v5, $v7) = ($var4, $var5, $var7);

    XChangeProperty($!d, $v1, $v2, $v3, $v4, $v5, $v6, $v7);
  }

  method ChangeSaveSet (Window $var1, gint $var2) {
    my Window $v1 = $var1;
    my gint   $v2 = $var2;

    XChangeSaveSet($!d, $v1, $v2);
  }

  method ChangeWindowAttributes (
    Int() $var1,
    Int() $var2,
    Int() $var3
  ) {
    my Window               $v1 = $var1;
    my long                 $v2 = $var2;
    my XSetWindowAttributes $v3 = $var3;

    XChangeWindowAttributes($!d, $v1, $v2, $v3);
  }

  method CheckMaskEvent (Int() $var1, XEvent() $var2) {
    my long $v1 = $var1;

    XCheckMaskEvent($!d, $v1, $var2);
  }

  method CheckTypedEvent (Int() $var1, XEvent() $var2) {
    my gint $v1 = $var1;

    XCheckTypedEvent($!d, $v1, $var2);
  }

  method CheckTypedWindowEvent (Int() $var1, Int() $var2, XEvent() $var3) {
    my Window $v1 = $var1;
    my gint   $v2 = $var2;

    XCheckTypedWindowEvent($!d, $v1, $v2, $var3);
  }

  method CheckWindowEvent (Int() $var1, Int() $var2, XEvent() $var3) {
    my Window $v1 = $var1;
    my long   $v2 = $var2;

    XCheckWindowEvent($!d, $v1, $v2, $var3);
  }

  method CirculateSubwindows (Int() $var1, Int() $var2) {
    my Window $v1 = $var1;
    my gint   $v2 = $var2;

    XCirculateSubwindows($!d, $v1, $v2);
  }

  method CirculateSubwindowsDown (Int() $var1) {
    my Window $v1 = $var1;

    XCirculateSubwindowsDown($!d, $v1);
  }

  method CirculateSubwindowsUp (Int() $var1) {
    my Window $v1 = $var1;

    XCirculateSubwindowsUp($!d, $v1);
  }

  method ClearArea (
    Int() $var1,
    Int() $var2,
    Int() $var3,
    Int() $var4,
    Int() $var5,
    Int() $var6
  ) {
    my Window $v1                 = $var1;
    my gint  ($v2, $v3, $v4, $v5) = ($var2, $var3, $var4, $var5);

    XClearArea($!d, $v1, $v2, $v3, $v4, $v5, $v6);
  }

  method ClearWindow (Int() $var1) {
    my Window $v1 = $var1;

    XClearWindow($!d, $var1);
  }

  method CloseDisplay {
    XCloseDisplay($!d);
  }

  method ConfigureWindow (Int() $var1, Int() $var2, XWindowChanges() $var3) {
    my Window $v1 = $var1;
    my gint   $v2 = $var2

    XConfigureWindow($!d, $v1, $v2, $var3);
  }

  method ConnectionNumber {
    XConnectionNumber($!d);
  }

  method ConvertSelection (
    Int() $var1,
    Int() $var2,
    Int() $var3,
    Int() $var4,
    Int() $var5
  ) {
    my Atom   ($v1, $v2, $v3) = ($var1, $var2, $var3);
    my Window $v4             = $var4;
    my Time   $v5             = $var5;

    XConvertSelection($!d, $v1, $v2, $v3, $v4, $v5);
  }

  method CopyArea (
    Int() $var1,
    Int() $var2,
    GC()  $var3,
    Int() $var4,
    Int() $var5,
    Int() $var6,
    Int() $var7,
    Int() $var8,
    Int() $var9
  ) {
    my Drawable ($v1, $v2) = ($var1, $var2);
    my gint ($v4, $v5, $v6, $v7, $v8, $v9) = (
      $var4,
      $var5,
      $var6,
      $var7,
      $var8,
      $var9
    );

    XCopyArea($!d, $v1, $v2, $var3, $v4, $v5, $v6, $v7, $v8, $v9);
  }

  method CopyColormapAndFree (Colormap() $var1) {
    XCopyColormapAndFree($!d, $var1);
  }

  method CopyGC (GC() $var1, Int() $var2, GC() $var3) {
    my long $v2 = $var2;

    XCopyGC($!d, $var1, $v2, $var3);
  }

  method CopyPlane (
    Int() $var1,
    Int() $var2,
    GC()  $var3,
    Int() $var4,
    Int() $var5,
    Int() $var6,
    Int() $var7,
    Int() $var8,
    Int() $var9,
    Int() $var10
  ) {
    my Drawable ($v1, $v2) = ($var1, $var2);
    my gint ($v4, $v5, $v6, $v7, $v8, $v9) = (
      $var4,
      $var5,
      $var6,
      $var7,
      $var8,
      $var9
    );
    my long $v10 = $var10;

    XCopyPlane($!d, $v1, $v2, $var3, $v4, $v5, $v6, $v7, $v8, $v9, $v10);
  }

  method CreateBitmapFromData (
    Int() $var1,
    Str() $var2,
    Int() $var3,
    Int() $var4
  ) {
    my Drawable $v1 = $var1;
    my gint ($v3, $v4) = ($var3, $var4);

    XCreateBitmapFromData($!d, $v1, $var2, $v3, $v4);
  }

  method CreateColormap (Int() $var1, Visual() $var2, Int() $var3) {
    my Window $v1 = $var1;
    my gint   $v3 = $var3;

    XCreateColormap($!d, $v1, $var2, $v3);
  }

  method CreateFontCursor (Int() $var1) {
    my gint $v1 = $var1;

    XCreateFontCursor($!d, $v1);
  }

  proto method CreateFontSet (|)
  { * }

  multi method CreateFontSet (Str() $var1) {
    (my $var2 = CArray[CArray[Str]].new)[0] = CArray[Str];
    (my $var4 = CArray[Str].new) = Str;
    samewith($var1, $var2, $, $var4, :all)
  }
  multi method CreateFontSet (
    Str()               $var1,
    CArray[CArray[Str]] $var2,
                        $var3  is rw,
    CArray[Str]         $var4,
                        :$all  = False
  ) {
    my gint $v3 = 0;

    my $r = XCreateFontSet($!d, $var1, $var2, $v3, $var4);
    $var3 = $v3;
    return $r unless $all;
    (
      $r,
      CStringArrayToArray( ppr($var2) ),
      $var3,
      CStringArray($var4)
    );
  }

  method CreateGC (
    Int()       $var1,
    Int()       $var2,
    XGCValues() $var3
  ) {
    my Drawable $v1 = $var1;
    my long     $v2 = $var2;

    XCreateGC($!d, $v1, $v2, $var3);
  }

  method CreateGlyphCursor (
    Font()   $var1,
    Font()   $var2,
    Int()    $var3,
    Int()    $var4,
    XColor() $var5,
    XColor() $var6
  ) {
    my gint ($v3, $v4) = ($var3, $var4);

    XCreateGlyphCursor($!d, $var1, $var2, $v3, $v4, $var5, $var6);
  }

  method CreateImage (
    Visual() $var1,
    Int() $var2,
    Int() $var3,
    Int() $var4,
    Str() $var5,
    Int() $var6,
    Int() $var7,
    Int() $var8,
    Int() $var9
  ) {
    my gint ($v2, $v3, $v4, $v6, $v7, $v8, $v9) = (
      $var2,
      $var3,
      $var4,
      $var6,
      $var7,
      $var8,
      $var9
    );

    XCreateImage($!d, $var1, $v2, $v3, $v4, $var5, $v6, $v7, $v8, $v9);
  }

  method CreatePixmap (Int() $var1, Int() $var2, Int() $var3, Int() $var4) {
    my Drawable $v1             = $var1;
    my gint     ($v2, $v3, $v4) = ($var2, $var3, $var4);

    XCreatePixmap($!d, $v1, $v2, $v3, $v4);
  }

  method CreatePixmapCursor (
    Int()    $var1,
    Int()    $var2,
    XColor() $var3,
    XColor() $var4,
    Int()    $var5,
    Int()    $var6
  ) {
    my Pixmap ($v1, $v2) = ($var2, $var2);
    my gint   ($v5, $v6) = ($var5, $var6);

    XCreatePixmapCursor($!d, $v1, $v2, $var3, $var4, $v5, $v6);
  }

  method CreatePixmapFromBitmapData (
    Int() $var1,
    Str() $var2,
    Int() $var3,
    Int() $var4,
    Int() $var5,
    Int() $var6,
    Int() $var7
  ) {
    my Drawable $v1             = $var1;
    my gint     ($v3, $v4, $v7) = ($var3, $var4, $var7);
    my long     ($v5, $v6)      = ($var5, $var6);

    XCreatePixmapFromBitmapData($!d, $v1, $var2, $v3, $v4, $v5, $va, $v7);
  }

  method CreateSimpleWindow (
    Int() $var1,
    Int() $var2,
    Int() $var3,
    Int() $var4,
    Int() $var5,
    Int() $var6,
    Int() $var7,
    Int() $var8
  ) {
    my Window $v1                       = $var1
    my gint   ($v2, $v3, $v4, $v5, $v6) = ($var2, $var3, $var4, $var5, $var6);
    my long   ($v7, $v8)                = ($var7, $var8);

    XCreateSimpleWindow($!d, $v1, $v2, $v3, $v4, $v5, $v6, $v7, $v8);
  }

  method CreateWindow (
    Int()    $var1,
    Int()    $var2,
    Int()    $var3,
    Int()    $var4,
    Int()    $var5,
    Int()    $var6,
    Int()    $var7,
    Int()    $var8,
    Visual() $var9,
    Int()    $var10,
    Int()    $var11
  ) {
    my Window               $v1  = $var1;
    my long                 $v10 = $var10;
    my XSetWindowAttributes $v11 = $var11;

    my gint ($v2, $v3, $v4, $v5, $v6, $v7, $v8) = (
      $var2,
      $var3,
      $var4,
      $var5,
      $var6,
      $var7,
      $var8
    );

    XCreateWindow(
      $!d,
      $v1,
      $v2,
      $v3,
      $v4,
      $v5,
      $v6,
      $v7,
      $v8,
      $var9,
      $va10,
      $v11
    );
  }

  method DefaultColormap (Int() $var1) {
    my gint $v1 = $var1;

    XDefaultColormap($!d, $v1);
  }

  method DefaultDepth (Int() $var1) {
    my gint $v1 = $var1;

    XDefaultDepth($!d, $v1);
  }

  method DefaultGC (Int() $var1) {
    my gint $v1 = $var1;

    XDefaultGC($!d, $v1);
  }

  method DefaultRootWindow {
    XDefaultRootWindow($!d);
  }

  method DefaultScreen {
    XDefaultScreen($!d);
  }

  method DefaultScreenOfDisplay {
    XDefaultScreenOfDisplay($!d);
  }

  method DefaultVisual (Int() $var1) {
    my gint $v1 = $var1;

    XDefaultVisual($!d, $v1);
  }

  method DefineCursor (Int() $var1, Int() $var2) {
    my Window $v1 = $var1;
    my Cursor $v2 = $var2;

    XDefineCursor($!d, $v1, $v2);
  }

  method DeleteProperty (Int() $var1, Int() $var2) {
    my Window $v1 = $var1;
    my Atom   $v2 = $var2;


    XDeleteProperty($!d, $v1, $v2);
  }

  method DestroySubwindows (Int() $var1) {
    my Window $v1 = $var1;

    XDestroySubwindows($!d, $v1);
  }

  method DestroyWindow (Int() $var1) {
    my Window $v1 = $var1;

    XDestroyWindow($!d, $v1);
  }

  method DisableAccessControl {
    XDisableAccessControl($!d);
  }

  method DisplayCells (Int() $var1) {
    my gint $v1 = $var1;

    XDisplayCells($!d, $v1);
  }

  method DisplayHeight (Int() $var1) {
    my gint $v1 = $var1;

    XDisplayHeight($!d, $v1);
  }

  method DisplayHeightMM (Int() $var1) {
    my gint $v1 = $var1;

    XDisplayHeightMM($!d, $v1);
  }

  proto method DisplayKeycodes (|)
  { * }

  method DisplayKeycodes {
    samewith($, $);
  }
  method DisplayKeycodes ($var1 is rw, $var2 is rw) {
    my gint ($v1, $v1) = 0 xx 2;

    XDisplayKeycodes($!d, $v1, $v2);
    ($var1, $var2) = ($v1, $v2);
  }

  method DisplayMotionBufferSize {
    XDisplayMotionBufferSize($!d);
  }

  method DisplayPlanes (Int() $var1) {
    my gint $v1 = $var1;

    XDisplayPlanes($!d, $v1);
  }

  method DisplayString {
    XDisplayString($!d);
  }

  method DisplayWidth (Int() $var1) {
    my gint $v1 = $var1;

    XDisplayWidth($!d, $v1);
  }

  method DisplayWidthMM (Int() $var1) {
    my gint $v1 = $var1;

    XDisplayWidthMM($!d, $v1);
  }

  method DrawArc (
    Int() $var1,
    GC()  $var2,
    Int() $var3,
    Int() $var4,
    Int() $var5,
    Int() $var6,
    Int() $var7,
    Int() $var8
  ) {
    my Drawable $var1 = $v1;

    XDrawArc($!d, $v1, $var2, $var3, $var4, $var5, $var6, $var7, $var8);
  }

  method DrawArcs (Int() $var1, GC() $var2, XArc() $var3, Int() $var4) {
    my Drawable $var1 = $v1;

    XDrawArcs($!d, $v1, $var2, $var3, $var4);
  }

  method DrawImageString (
    Int() $var1,
    GC()  $var2,
    Int() $var3,
    Int() $var4,
    Str() $var5,
    Int() $var6
  ) {
    my Drawable $var1           = $v1;
    my gint     ($v3, $v4, $v6) = ($var3, $var4, $var6);

    XDrawImageString($!d, $v1, $var2, $v3, $v4, $var5, $v6);
  }

  method DrawImageString16 (
    Int()     $var1,
    GC()      $var2,
    Int()     $var3,
    Int()     $var4,
    XChar2b() $var5,
    Int()     $var6
  ) {
    my Drawable $var1 = $v1;
    my gint     ($v3, $v4, $v6) = ($var3, $var4, $var6);

    XDrawImageString16($!d, $v1, $var2, $v3, $v4, $var5, $v6);
  }

  method DrawLine (
    Int() $var1,
    GC()  $var2,
    Int() $var3,
    Int() $var4,
    Int() $var5,
    Int() $var6
  ) {
    my Drawable $var1 = $v1;
    my gint     ($v3, $v4, $v5, $v6) = ($var3, $var4, $var5, $var6);

    XDrawLine($!d, $v1, $var2, $v3, $v4, $v5, $v6);
  }

  method DrawLines (
    Int()  $var1,
    GC()   $var2,
    XPoint $var3,
    Int()  $var4,
    Int()  $var5
  ) {
    my Drawable $var1 = $v1;
    my gint     ($v4, $v5) = ($var4, $var5);

    XDrawLines($!d, $v1, $var2, $var3, $v4, $v5);
  }

  method DrawPoint (
    Int() $var1,
    GC()  $var2,
    Int() $var3,
    Int() $var4
  ) {
    my Drawable $var1 = $v1;
    my gint     ($v3, $v4) = ($var3, $var4);

    XDrawPoint($!d, $v1, $var2, $v3, $v4);
  }

  method DrawPoints (
    Int()  $var1,
    GC()   $var2,
    XPoint $var3,
    Int()  $var4,
    Int()  $var5
  ) {
    my Drawable $var1 = $v1;
    my gint     ($v4, $v5) = ($var4, $var5);

    XDrawPoints($!d, $v1, $var2, $var3, $v4, $v5);
  }

  method DrawRectangle (
    Int() $var1,
    GC()  $var2,
    Int() $var3,
    Int() $var4,
    Int() $var5,
    Int() $var6
  ) {
    my Drawable $var1 = $v1;
    my gint     ($v3, $v4, $v5, $v6) = ($var3, $var4, $var5, $var6);

    XDrawRectangle($!d, $v1, $var2, $v3, $v4, $v5, $v6);
  }

  method DrawRectangles (
    Int()      $var1,
    GC()       $var2,
    XRectangle $var3,
    Int()      $var4
  ) {
    my Drawable $var1 = $v1;
    my gint     $v4   = $var4;

    XDrawRectangles($!d, $v1, $var2, $var3, $v4);
  }

  method DrawSegments (
    Int()    $var1,
    GC()     $var2,
    XSegment $var3,
    Int()    $var4
  ) {
    my Drawable $var1 = $v1;
    my gint     $v4   = $var4;

    XDrawSegments($!d, $v1, $var2, $var3, $var4);
  }

  method DrawString (
    Int() $var1,
    GC() $var2,
    Int() $var3,
    Int() $var4,
    Str $var5,
    Int() $var6
  ) {
    my Drawable $var1 = $v1;

    XDrawString($!d, $v1, $var2, $var3, $var4, $var5, $var6);
  }

  method DrawString16 (
    Int()   $var1,
    GC()    $var2,
    Int()   $var3,
    Int()   $var4,
    XChar2b $var5,
    Int()   $var6
  ) {
    my Drawable $var1 = $v1;
    my gint     ($v3, $v4, $v6) = ($var3, $var4, $var6);

    XDrawString16($!d, $v1, $var2, $v3, $v4, $var5, $v6);
  }

  method DrawText (
    Int()     $var1,
    GC()      $var2,
    Int()     $var3,
    Int()     $var4,
    XTextItem $var5,
    Int()     $var6
  ) {
    my Drawable $var1 = $v1;Int()
    my gint     ($v3, $v4, $v6) = ($var3, $var4, $var6);

    XDrawText($!d, $v1, $var2, $v3, $v4, $var5, $v6);
  }

  method DrawText16 (
    Int()       $var1,
    GC()        $var2,
    Int()       $var3,
    Int()       $var4,
    XTextItem16 $var5,
    Int()       $var6
  ) {
    my Drawable $var1 = $v1;
    my gint     ($v3, $v4, $v6) = ($var3, $var4, $var6);

    XDrawText16($!d, $v1, $var2, $v3, $v4, $var5, $v6);
  }

  method EnableAccessControl {
    XEnableAccessControl($!d);
  }

  method EventsQueued (Int() $var1) {
    my gint $v1 = $var1;

    XEventsQueued($!d, $v1);
  }

  method ExtendedMaxRequestSize {
    XExtendedMaxRequestSize($!d);
  }

  method FetchBuffer ($var1 is rw, Int() $var2) {
    my gint ($v1, $v2) = (0, $var2);

    my $r = XFetchBuffer($!d, $v1, $v2);
    $var1 = $v1;
    $r;
  }

  method FetchBytes ($var1 is rw) {
    my gint $v1 = 0;

    my $r = XFetchBytes($!d, $v1);
    $var1 = $v1;
    $r;
  }

  method FetchName (Int() $var1, Str() $var2) {
    my Window $v1 = $var1;

    XFetchName($!d, $v1, $var2);
  }

  method FillArc (
    Int() $var1,
    GC()  $var2,
    Int() $var3,
    Int() $var4,
    Int() $var5,
    Int() $var6,
    Int() $var7,
    Int() $var8
  ) {
    my Drawable $v1                            = $var1;
    my gint     ($v3, $v4, $v5, $v6, $v7, $v8) = (
      $var3,
      $var4,
      $var5,
      $var6,
      $var7,
      $var8
    );

    XFillArc($!d, $v1, $v2, $v3, $v4, $v5, $v6, $v7, $v8);
  }

  method FillArcs (Int() $var1, GC() $var2, XArc() $var3, Int() $var4) {
    my Drawable $v1  = $var1;
    my gint     $v4, = $var4;

    XFillArcs($!d, $v1, $var2, $var3, $v4);
  }

  method FillPolygon (
    Drawable() $var1,
    GC()       $var2,
    XPoint()   $var3,
    Int()      $var4,
    Int()      $var5,
    Int()      $var6
  ) {
    my gint ($v4, $v5, $v6) = ($var4, $var5, $var6);

    XFillPolygon($!d, $var1, $var2, $var3, $v4, $v5, $v6);
  }

  method FillRectangle (
    Drawable() $var1,
    GC()       $var2,
    Int()      $var3,
    Int()      $var4,
    Int()      $var5,
    Int()      $var6
  ) {
    my gint ($v3, $v4, $v5, $v6) = ($var3, $var4, $var5, $var6);

    XFillRectangle($!d, $var1, $var2, $v3, $v4, $v5, $v6);
  }

  method FillRectangles (
    Drawable()   $var1,
    GC()         $var2,
    XRectangle() $var3,
    Int()        $var4
  ) {
    my Drawable $v1 = $var1;
    my gint     $v4 = $var4;

    XFillRectangles($!d, $v1, $var2, $var3, $v4);
  }

  method Flush {
    XFlush($!d);
  }

  method FlushGC (GC() $var1) {
    XFlushGC($!d, $var1);
  }

  method ForceScreenSaver (Int() $var1) {
    my gint $v1 = $var1;
    XForceScreenSaver($!d, $var1);
  }

  method FreeColormap (Int() $var1) {
    XFreeColormap($!d, $var1);
  }

  method FreeColors (Int() $var1, Int() $var2, Int() $var3, Int() $var4) {
    my Colormap $v1        = $var1;
    my long     ($v2, $v4) = ($var2, $var4);
    my gint     $v3        = $var3;

    XFreeColors($!d, $v1, $v2, $v3, $v4);
  }

  method FreeCursor (Int() $var1) {
    my Cursor $v1 = $var1;

    XFreeCursor($!d, $v1);
  }

  method FreeEventData (XGenericEventCookie() $var1) {
    XFreeEventData($!d, $var1);
  }

  method FreeFont (XFontStruct() $var1) {
    XFreeFont($!d, $var1);
  }

  method FreeFontSet (XFontSet() $var1) {
    XFreeFontSet($!d, $var1);
  }

  method FreeGC (GC() $var1) {
    XFreeGC($!d, $var1);
  }

  method FreePixmap (Int() $var1) {
    my Pixmap $v1 = $var1;

    XFreePixmap($!d, $v1);
  }

  proto method Geometry (|)
  { * }

  method Geometry (
    Int() $var1,
    Str() $var2,
    Str() $var3,
    Int() $var4,
    Int() $var5,
    Int() $var6,
    Int() $var7,
    Int() $var8
  ) {
    samewith(
      $var1,
      $var2,
      $var3,
      $var4,
      $var5,
      $var6,
      $var7,
      $var8,
      $,
      $,
      $,
      $
    );
  }
  method Geometry (
    Int() $var1,
    Str() $var2,
    Str() $var3,
    Int() $var4,
    Int() $var5,
    Int() $var6,
    Int() $var7,
    Int() $var8,
    Int() $var9  is rw,
    Int() $var10 is rw,
    Int() $var11 is rw,
    Int() $var12 is rw
  ) {
    my gint ($v1, $v4, $v5, $v6, $v7, $v8, $v9, $v10, $v11, $v12) = (
      $var1,
      $var4,
      $var5,
      $var6,
      $var7,
      $var8,
      0 xx 4
    ).flat;

    XGeometry(
      $!d,
      $v1,
      $v2,
      $v3,
      $v4,
      $v5,
      $v6,
      $v7,
      $v8,
      $v9,
      $v10,
      $v11,
      $v12
    );
    ($var9, $var10, $var11, $var12) = ($v9, $v10, $v11, $v12);
  }

  method GetAtomName (Int() $var1) {
    my Atom $v1 = $var1;

    CStringArrayToArray( XGetAtomName($!d, $v1) );
  }

  proto method GetAtomNames (|)
  { * }

  method GetAtomNames (@atoms)
    (my CArray[Str] $names .= new)[0] = Str;

    samewith( ArrayToCArray(Atom, @atoms), @atoms.elems, $names) );
    CStringArrayToArray($names);
  }
  method GetAtomNames (
    CArray[Atom] $var1,
    Int()        $var2,
    CArray[Str]  $var3,
  ) {
    XGetAtomNames($!d, $var1, $var2, $var3);
  }

  # cw: Aaieee! 7/20/2021 ↓↓↓

  proto method GetCommand (|)
  { * }

  multi method GetCommand (Int() $var1, Str() $var2) {
    samewith($var1, $var2, :all);
  }
  multi method GetCommand (
    Int() $var1,
    Str() $var2,
          $var3 is rw,
          :$all =  False
  ) {
    my Window $v1 = $var1;
    my gint   $v3 = $var3;

    my $s = XGetCommand($!d, $v1, $var2, $v3);
    $var3 = $v3;
    return $s unless $all;
    ($s, $var3);
  }

  method GetDefault (Str() $var1, Str() $var2) {
    XGetDefault($!d, $var1, $var2);
  }

  method GetErrorDatabaseText (
    Str() $var1,
    Str() $var2,
    Str() $var3,
    Str() $var4,
    Int() $var5
  ) {
    my gint $v5 = $var5;

    XGetErrorDatabaseText($!d, $v1, $v2, $v3, $v4, $v5);
  }

  method GetErrorText (Int() $var1, Str() $var2, Int() $var3) {
    my gint ($v1, $v3) = ($var1, $var3);

    XGetErrorText($!d, $v1, $var2, $v3);
  }

  method GetEventData (XGenericEventCookie() $var1) {
    XGetEventData($!d, $var1);
  }

  proto method GetFontPath (|)
  { * }

  method GetFontPath {
    samewith($);
  }
  method GetFontPath ($var1 is rw) {
    my gint $v1 = 0;

    my $r = XGetFontPath($!d, $v1);
    CStringArrayToArray($r, $var1 = $v1);
  }

  proto method GetFontPath (|)
  { * }

  multi method GetFontPath (GC() $var1, Int() $var2) {
    my XGCValues $gcv .= new;

    samewith($var1, $var2, $gcv, :all);
  }
  multi method GetGCValues (
    GC()        $var1,
    Int()       $var2,
    XGCValues() $var3,
                :$all  = False
  ) {
    my long $v2 = $var2;

    my $r = XGetGCValues($!d, $var1, $v2, $var3);
    return $r unless $all;
    ($r, $var3);
  }

  proto method GetGeometry (|)
  { * }

  multi method GetGeometry (Int() $var1, Int() $var2) {
    samewith($var1, $var2, $, $, $, $, $, $);
  }
  multi method GetGeometry (
    Int() $var1,
    Int() $var2,
          $var3 is rw,
          $var4 is rw,
          $var5 is rw,
          $var6 is rw,
          $var7 is rw,
          $var8 is rw
  ) {
    my gint ($v3, $v4, $v5, $v6, $v7, $v8) =  0 xx 6;

    my Drawable $v1 = $var1;
    my Window   $v2 = $var2;
    XGetGeometry($!d, $var1, $var2, $v3, $v4, $v5, $v6, $v7, $v8);
    ($var3 ,$var4 ,$var5 ,$var6 ,$var7 ,$var8) = ($v3, $v4, $v5, $v6, $v7, $v8);

  }

  proto method XGetIconName (|)
  { * }

  multi method XGetIconName (Int() $var1) {
    (my $cr = (CArray[Str].new)[0] = 0;
    samewith($var1, $var2, :all);
  }
  multi method XGetIconName (Int() $var1, CArray[Str] $var2, :$all = False) {
    my Window $v1 = $var1;
    my        $s  = XGetIconName($!d, $var1, $var2);

    return $s unless $all;
    ( $s, ppr($var2) );
  }

  method GetImage (
    Int() $var1,
    Int() $var2,
    Int() $var3,
    Int() $var4,
    Int() $var5,
    Int() $var6,
    Int() $var7
  ) {
    my Drawable $v1 = $var1;
    my long     $v6 = $var6

    my gint ($v2, $v3, $v4, $v5, $v7) = ($var2, $var3, $var4, $var5, $var7);

    XGetImage($!d, $v1, $v2, $v3, $v4, $v5, $v6, $v7);
  }

  proto method GetInputFocus (|)
  { * }

  multi method GetInputFocus (Int() $var1) {
    samewith($, $, :all);
  }
  multi method GetInputFocus (Int() $var1, $var2 is rw, :$all = False) {
    my Window $v1 = $var1;
    my gint   $v2 = 0;

    my $s = XGetInputFocus($!d, $v1, $v2);
    $var2 = $v2;
    return $s unless $raw;
    ($s, $var2);
  }

  proto method GetKeyboardControl (|)
  { * }

  multi method GetKeyboardControl {
    my $ks = XKeyboardState.nw;

    samewith($ks);
  }
  multi method GetKeyboardControl (XKeyboardState() $var1) {
    XGetKeyboardControl($!d, $var1);
    $var1;
  }

  proto method GetKeyboardMapping (|)
  { * }

  method GetKeyboardMapping (
    Int() $var1,
    Int() $var2,
    Int() $var3,
  ) {
    samewith($var1, $var2, $var3, $);
  }
  method GetKeyboardMapping (
    Int() $var1,
    Int() $var2,
    Int() $var3,
          $var4  is rw
  ) {
    my gint    ($v1, $v3, $v4) = ($var1, $var3, 0);
    my KeyCode $v2             = $var2;

    XGetKeyboardMapping($!d, $v1, $v2, $v3, $v4);
    $var4 = $v4;
  }

  method GetModifierMapping {
    XGetModifierMapping($!d);
  }

  proto method GetMotionEvents (|)
  { * }

  multi method GetMotionEvents (Int() $var1, Int() $var2, Int() $var3) {
    samewith($var1, $var2, $var3, $, :all);
  }
  multi method GetMotionEvents (
    Int() $var1,
    Int() $var2,
    Int() $var3,
          $var4  is rw
          :$all  =  False
  ) {
    my Window $v1        = $var1;
    my Time   ($v2, $v3) = ($var2, $var3);
    my gint   $v4        = 0;

    my $xtc = GetMotionEvents($!d, $v1, $v2, $v3, $v4);
    $var4 = $v4;
    return $xtc unless $all;
    ($xtc, $v4);
  }

  proto method GetPointerControl (|)
  { * }

  multi method GetPointerControl {
    samewith($, $, $);
  }
  multi method GetPointerControl (
    $var1 is rw,
    $var2 is rw,
    $var3 is rw
  ) {
    my gint ($v1, $v2, $v3) = 0 xx 3;

    XGetPointerControl($!d, $v1, $v2, $v3);
    ($var1, $var2, $var3) = ($v1, $v2, $v3);
  }

  method GetPointerMapping (Str() $var1, Int() $var2) {
    my gint $v2 = $var2;

    XGetPointerMapping($!d, $var1, $var2);
  }

  proto method GetScreenSaver (|)
  { * }

  multi method GetScreenSaver {
    samewith($, $, $, $);
  }
  multi method GetScreenSaver (
    $var1 is rw,
    $var2 is rw,
    $var3 is rw,
    $var4 is rw
  ) {
    my gint ($v1, $v2, $v3, $v4) = 0 xx 4;

    XGetScreenSaver($!d, $v1, $v2, $v3, $v4);
    ($var1, $var2, $var3, $var4) = ($v1, $v2, $v3, $v4);
  }

  method GetSelectionOwner (Int() $var1) {
    my Atom $v1 = $var1;

    XGetSelectionOwner($!d, $v1);
  }

  method GetSubImage (
    Int()    $var1,
    Int()    $var2,
    Int()    $var3,
    Int()    $var4,
    Int()    $var5,
    Int()    $var6,
    Int()    $var7,
    XImage() $var8,
    Int()    $var9,
    Int()    $var10
  ) {
    my Drawable $v1 = $var1;
    my long     $v6 = $var6;

    my gint ($v2, $v3, $v4, $v5, $v7, $v9, $v10) = (
      $var2,
      $var3,
      $var4,
      $var5,
      $var7,
      $var9,
      $var10
    );

    XGetSubImage($!d, $v1, $v2, $v3, $v4, $v5, $v6, $v7, $v8, $v9, $v10);
  }

  method GetTransientForHint (Int() $var1, Int() $var2) {
    my Window ($v1, $v2) = ($var1, $var2);

    XGetTransientForHint($!d, $v1, $v2);
  }

  proto method GetWMColormapWindows (|)
  { * }

  multi method GetWMColormapWindows (Int() $var1) {
    (my $rw = CArray[Window].new)[0] = Window;

    samewith($var1, $rw, $, :all);
  }
  multi method GetWMColormapWindows (
    Int()          $var1,
    CArray[Window] $var2,
                   $var3 is rw
                   :$all =  False
  ) {
    my Window $v1 = $var1;
    my gint   $v3 = 0;

    my $s = XGetWMColormapWindows($!d, $v1, $var2, $v3);
    $var3 = $v3;
    return $s unless $all;
    ( $s, CArrayToArray($var2, $var3) )
  }

  proto method GetWMProtocols (|)
  { * }

  multi method GetWMProtocols (Int() $var1) {
    (my $rw = CArray[Atom].new)[0] = Window;

    samewith($var1, $rw, $, :all);
  }
  multi method GetWMProtocols (Int() $var1, CArray[Atom] $var2, $var3 is rw) {
    my Window $v1 = $var1;
    my gint   $v3 = 0;

    my $s = XGetWMProtocols($!d, $var1, $var2, $v3);
    $var3 = $v3;
    return $s unless $all;
    ( $s, CArrayToArray($var2, $var3) )
  }

  proto method GetWindowAttributes (|)
  { * }

  multi method GetWindowAttributes (Int() $var1) {
    my $wa = XWindowAttributes.new;

    samewith($var1, $wa, :all);
  }
  multi method GetWindowAttributes (
    Int()               $var1,
    XWindowAttributes() $var2,
                        :$all  = False
  ) {
    my Window            $v1 = $var1;

    my $s = XGetWindowAttributes($!d, $v1, $var2);
    return $s unless $all;
    ($s, $var2);
  }

  proto method GetWindowProperty (|)
  { * }

  method GetWindowProperty (
    Int()        $var1,
    Int()        $var2,
    Int()        $var3,
    Int()        $var4,
    Int()        $var5,
    Int()        $var6,
                 :$pointer = False,
                 :$carray  = False
  ) {
    (my $p = CArray[Str].new)[0] = Str;

    my @returns = samewith(
      $var1,
      $var2,
      $var3,
      $var4,
      $var5,
      $var6,
      $,
      $,
      $,
      $,
      $p,
      :all
    );

    return @returns if $pointer;

    @returns.tail = do given @returns[2] {
      when 8   { @returns.tail }
      when 16  { cast(CArray[short], @returns.tail) }
      when 32  { cast(CArray[num32], @returns.tail) }

      default {
        die "Invalid format value { @returns[2] } given to {
             ''} .GetWindowProperty! Must be 8, 16, or 32!";
      }
    }

    return @returns if $carray;

    @returns.tail = CArrayToArray( @returns.tail, @returns[3] );
    @returns;
  }
  method GetWindowProperty (
    Int() $var1,
    Int() $var2,
    Int() $var3,
    Int() $var4,
    Int() $var5,
    Int() $var6,
          $var7   is rw,
          $var8   is rw,
          $var9   is rw,
          $var10  is rw,
          $var11  is rw,
          :$all   =  False
  ) {
    my Window $v1                   = $var1;
    my Atom   ($v2, $v6, $v7)       = ($var2, $var6, 0);
    my long   ($v3, $v4, $v9, $v10) = ($var3, $var4, 0, 0);
    my gint   $v8                   = 0;

    (my CArray[uint8] $v11 = .new;)[0] = uint8;

    my $retVal = $XGetWindowProperty(
      $!d,
      $v1,
      $v2,
      $v3,
      $v4,
      $v5,
      $v6,
      $v7,
      $v8,
      $v9,
      $v10,
      $v11
    );
    ($var7, $var8, $var9, $var10, $var11) = ($v7, $v8, $v9, $v10, $v11);
    return $retVal unless $all;
    ($retVal, $var7, $var8, $var9, $var10, $var11);
  }

  method GrabButton (
    Int() $var1,
    Int() $var2,
    Int() $var3,
    Int() $var4,
    Int() $var5,
    Int() $var6,
    Int() $var7,
    Int() $var8,
    Int() $var9
  ) {
    my gint   ($v1, $v2, $v5, $v6, $v7) = ($var1, $var2, $var5, $var6, $var7);
    my Window ($v3, $v8)                = ($var3, $var8);
    my Boolean $v4                      = $var4.so.Int;
    my Cursor  $v9                      = $var9;

    XGrabButton($!d, $v1, $v2, $v3, $v4, $v5, $v6, $v7, $v8, $v9);
  }

  method GrabKey (
    Int() $var1,
    Int() $var2,
    Int() $var3,
    Int() $var4,
    Int() $var5,
    Int() $var6
  ) {
    my gint    ($v1, $v2, $v5, $v6) = ($var1, $var2, $var5, $var6)
    my Window  $v3                  = $var3;
    my Boolean $v4                  = $v4.so.Int

    XGrabKey($!d, $v1, $v2, $v3, $v4, $v5, $v6);
  }

  method GrabKeyboard (
    Int() $var1,
    Int() $var2,
    Int() $var3,
    Int() $var4,
    Int() $var5
  ) {
    my Window  $v1        = $var1;
    my Boolean $v2        = $var2.so.Int;
    my gint    ($v3, $v4) = ($var3, $var4);
    my Time    $v5        = $var5;

    XGrabKeyboard($!d, $v1, $v2, $v3, $v4, $v5);
  }

  method GrabPointer (
    Int() $var1,
    Int() $var2,
    Int() $var3,
    Int() $var4,
    Int() $var5,
    Int() $var6,
    Int() $var7,
    Int() $var8
  ) {
    my Window  ($v1, $v6)      = ($var1, $var6);
    my Boolean $v2             = $var2.so.Int;
    my Time    $v8             = $var8;
    my gint    ($v3, $v4 ,$v5) = ($var3, $var4, $var5);

    XGrabPointer($!d, $v1, $v2, $v3, $v4, $v5, $v6, $v7, $v8);
  }

  method GrabServer {
    XGrabServer($!d);
  }

  method IconifyWindow (Int() $var1, Int() $var2) {
    my Window $v1 = $var1;
    my gint   $v2 = $var2;

    XIconifyWindow($!d, $v1, $v2);
  }

  # cw: Don't forget! 7/20/2021 ↑↑↑

  method ImageByteOrder {
    XImageByteOrder($!d);
  }

  method InitExtension (Str() $var1) {
    XInitExtension($!d, $var1);
  }

  method InstallColormap (Int() $var1) {
    my Colormap $v1 = $var1;

    XInstallColormap($!d, $v1);
  }

  method InternAtom (Str() $var1, Int() $var2) {
    my Boolean $v2 = $var2.so.int;

    XInternAtom($!d, $var1, $v2);
  }

  method InternAtoms (Str $var1, Int() $var2, Int() $var3, Int() $var4) {
    my gint     $v2 = $var2;
    my Boolean  $v3 = $var3.so.int;
    my Atom     $v4 = $var4;

    XInternAtoms($!d, $v1, $v2, $v3, $v4);
  }

  proto method InternalConnectionNumbers (|)
  { * }

  multi method InternalConnectionNumbers {
    (my $fds = CArray[realInt])[0] = realInt;
    my  $c   = 0;

    samewith($fds, $c);
    CArrayToArray($fds, $c);
  }
  multi method InternalConnectionNumbers (CArray[realInt] $var1, $var2 is rw) {
    my gint ($v1, $v2) = ($var1, 0);

    XInternalConnectionNumbers($!d, $v1, $v2);
  }

  method KeycodeToKeysym (Int() $var1, Int() $var2, Int() $var3) {
    my gint    ($v1, $v3) = ($var1, $var3);
    my KeyCode $v2        = $var2;

    XKeycodeToKeysym($!d, $v1, $v2, $v3);
  }

  method KeysymToKeycode (Int() $var1) {
    my KeySym $v1 = $var1;

    XKeysymToKeycode($!d, $v1);
  }

  method KillClient (Int() $var1) {
    my XID $v1 = $var1;

    XKillClient($!d, $v1);
  }

  method LastKnownRequestProcessed {
    XLastKnownRequestProcessed($!d);
  }

  proto method ListDepths (|)
  { * }

  multi method ListDepths (Int() $var1) {
    samewith($var1, $);
  }
  multi method ListDepths (Int() $var1, $var2 is rw) {
    my gint    ($v1, $v2) = ($var1, 0);

    XListDepths($!d, $v1, $v2);
  }

  proto method ListExtensions (|)
  { * }

  multi method ListExtensions {
    samewith($);
  }
  multi method ListExtensions ($var1 is rw) {
    my gint $v1 = 0;
    my      $e  = XListExtensions($!d, $v1);

    CStringArrayToArray($e, $var1 = $v1)
  }

  proto method ListFonts (|)
  { * }

  method ListFonts (Str() $var1, Int() $var2 = 9999) {
    samewith($var1, $var2, $);
  }
  method ListFonts (Str() $var1, Int() $var2, $var3 is rw) {
    my gint ($v2, $v3) = ($var2, 0);

    my $fn = XListFonts($!d, $var1, $v2, $v3);
    CStringArrayToArray($fn, $var3 = $v3);
  }

  method ListFontsWithInfo (
    Str()         $var1,
    Int()         $var2,
                  $var3  is rw,
    XFontStruct() $var4
  ) {
    my gint ($v2, $v3) = ($var2, 0);

    my $fn = XListFontsWithInfo($!d, $var1, $v2, $v3, $var4);
    CStringArrayToArray($fn, $var3 = $v3);
  }

  proto method ListHosts (|)
  { * }

  multi method ListHosts {
    samewith($, $);
  }
  multi method ListHosts (Int() $var1 is rw, Int() $var2 is rw, :$raw = False) {
    my gint    $v1 = 0;
    my Boolean $v2 = 0;

    my $hl = XListHosts($!d, $v1, $v2);
    ($var1, $var2) = ($v1, $v2.so);
    return $hl if $raw;
    $hl = X11::Roles::TypedBuffer[XHostAddress].new($hl, $var1);
    $hl.Array
  }

  proto method ListInstalledColormaps (|)
  { * }

  method ListInstalledColormaps (Int() $var1) {
    samewith($var1, $);
  }
  method ListInstalledColormaps (Int() $var1, $var2 is rw, :$raw = False) {
    my Window $v1 = $var1;
    my gint   $v2 = 0;

    my $a = XListInstalledColormaps($!d, $v1, $v2);
    $var2 = $v2;
    return $a if $raw;
    CArrayToArray($a, $var2);
  }

  proto method ListPixmapFormats (|)
  { * }

  multi method ListPixmapFormats {
    samewith($);
  }
  multi method ListPixmapFormats ($var1 is rw, :$raw = False) {
    my gint $v1 = 0;

    my $pf = XListPixmapFormats($!d, $v1);
    $var1 = $v1;
    return $pf if $raw;
    $pf = X11::Raw::TypedBuffer[XPixmapFormatValues].new($pf, size => $var1);
    $pf.Array;
  }

  proto method ListProperties (|)
  { * }

  method ListProperties (Int() $var1) {
    samewith($var1, $);
  }
  method ListProperties (Int() $var1, $var2 is rw, :$raw = False) {
    my Window $v1 = $var1;
    my gint   $v2 = 0;

    my $pl = XListProperties($!d, $var1, $v2);
    $var2 = $v2;
    return $pl if $raw;
    $pl = X11::Roles::TypedBuffer.new($pl, size => $var2);
    $pl.Array;
  }

  method LoadFont (Str() $var1) {
    XLoadFont($!d, $var1);
  }

  method LockDisplay {
    XLockDisplay($!d);
  }

  method LookupColor (Int() $var1, Str() $var2, XColor() $var3, XColor $var4) {
    my Colormap $v1 = $var1;

    XLookupColor($!d, $v1, $var2, $var3, $var4);
  }

  method LowerWindow (Int() $var1) {
    my Window $v1 = $var1;

    XLowerWindow($!d, $v1);
  }

  method MapRaised (Int() $var1) {
    my Window $v1 = $var1;

    XMapRaised($!d, $var1);
  }

  method MapSubwindows (Int() $var1) {
    my Window $v1 = $var1;

    XMapSubwindows($!d, $var1);
  }

  method MapWindow (Int() $var1) {
    my Window $v1 = $var1;

    XMapWindow($!d, $var1);
  }

  proto method MaskEvent (|)
  { * }

  multi method MaskEvent (Int() $var1) {
    my $xe = XEvent.new;

    samewith($var1, $xe);
    $xe;
  }
  multi method MaskEvent (Int() $var1, XEvent $var2) {
    my long $v1 = $var2;

    XMaskEvent($!d, $var1, $var2);
  }

  method MaxRequestSize {
    XMaxRequestSize($!d);
  }

  method MoveResizeWindow (
    Int() $var1,
    Int() $var2,
    Int() $var3,
    Int() $var4,
    Int() $var5
  ) {
    my Window $v1                  = $var1;
    my gint   ($v2, $v3, $v4, $v5) = ($var2, $var3, $var4, $var5);

    XMoveResizeWindow($!d, $v1, $v2, $v3, $v4, $v5);
  }

  method MoveWindow (Int() $var1, Int() $var2, Int() $var3) {
    my Window $v1      = $var1;
    my gint ($v2, $v3) = ($var2, $var3);

    XMoveWindow($!d, $v1, $v2, $v3);
  }

  proto method NextEvent (|)
  { * }

  multi method NextEvent {
    my $xe = XEvent.new;

    samewith($xe);
    $xe;
  }
  multi method NextEvent (XEvent() $var1) {
    XNextEvent($!d, $var1);
  }

  method NextRequest {
    XNextRequest($!d);
  }

  method NoOp {
    XNoOp($!d);
  }

  method OpenIM (XrmHashBucket() $var1, Str() $var2, Str() $var3) {
    XOpenIM($!d, $var1, $var2, $var3);
  }

  method OpenOM (XrmHashBucket() $var1, Str() $var2, Str() $var3) {
    XOpenOM($!d, $var1, $var2, $var3);
  }

  proto method ParseColor (|)
  { * }

  multi method ParseColor (Int() $var1, Str $var2) {
    my Colormap $v1 = $var1;

    my $xc = XColor.new;
    samewith($v1, $xc);
    $xc
  }
  multi method ParseColor (Int() $var1, Str $var2, XColor() $var3) {
    my Coolormap $v1 = $var1;

    XParseColor($!d, $var1, $var2, $var3);
  }

  proto method PeekEvent (|)
  { * }

  multi method PeekEvent {
    my $xe = XEvent.new;

    samewith($xe);
    $xe;
  }
  multi method PeekEvent (XEvent() $var1) {
    XPeekEvent($!d, $var1);
  }

  method Pending {
    XPending($!d);
  }

  method ProcessInternalConnection (Int() $var1) {
    my gint $v1 = $var1;

    XProcessInternalConnection($!d, $v1);
  }

  # 2 / 5

  method ProtocolRevision {
    XProtocolRevision($!d);
  }

  method ProtocolVersion {
    XProtocolVersion($!d);
  }

  method PutBackEvent (XEvent() $var1) {
    XPutBackEvent($!d, $var1);
  }

  method PutImage (
    Int() $var1,
    GC()  $var2,
    Int() $var3,
    Int() $var4,
    Int() $var5,
    Int() $var6,
    Int() $var7,
    Int() $var8,
    Int() $var9
  ) {
    my Drawable $v1 = $var1;
    my Image    $v3 = $var3;
    my gint ($var4, $var5, $var6, $var7, $var8, $var9) =
      ($v4, $v5, $v6, $v7, $v8, $v9);

    XPutImage($!d, $v1, $var2, $v3, $v4, $v5, $v6, $v7, $v8, $v9);
  }

  method QLength {
    XQLength($!d);
  }

  method QueryBestCursor (
    Int() $var1,
    Int() $var2,
    Int() $var3,
          $var4 is rw,
          $var5 is rw
  ) {
    my Display $v2                   = $var2;
    my gint    ($var3, $var4  $var5) = ($v3, 0, 0);

    XQueryBestCursor($!d, $var1, $v2, $v3, $v4, $v5);
  }

  method QueryBestSize (
    Int() $var1,
    Int() $var2,
    Int() $var3,
    Int() $var4,
          $var5 is rw,
          $var6 is rw
  ) {
    my Drawable $v2                  = $var2;
    my gint     ($v3, $v4, $v5, $v6) = ($var3, $var4, 0, 0);

    XQueryBestSize($!d, $v1, $v2, $v3, $v4, $v5, $v6);
  }

  method QueryBestStipple (
    Int() $var1,
    Int() $var2,
    Int() $var3,
          $var4 is rw,
          $var5 is rw
  ) {
    my Drawable $v1                   = $var1;
    my gint      ($v2, $v3, $v4, $v5) = ($var2, $var3, 0, 0);

    XQueryBestStipple($!d, $v1, $v2, $v3, $v4, $v5);
  }

  method QueryBestTile (
    Int() $var1,
    Int() $var2,
    Int() $var3,
          $var4 is rw,
          $var5 is rw
  ) {
    my Drawable $v1                  = $var1;
    my gint     ($v2, $v3, $v4, $v5) = ($var2, $var3, 0, 0);

    XQueryBestTile($!d, $v1, $v2, $v3, $v4, $v5);
  }

  method QueryColor (Int() $var1, XColor() $var2) {
    my Colormap $v1 = $var1;

    XQueryColor($!d, $v1, $var2);
  }

  method QueryColors (Int() $var1, XColor() $var2, Int() $var3) {
    my Colormap $v1 = $var1;
    my gint     $v3 = $var3;

    XQueryColors($!d, $v1, $var2, $v3);
  }

  method QueryExtension (
    Str() $var1,
          $var2 is rw,
          $var3 is rw,
          $var4 is rw
  ) {
    my gint ($v2, $v3, $v4) = 0 xx 3;

    XQueryExtension($!d, $var1, $v2, $v3, $v4);
    ($var2, $var3, $var4) = ($v2, $v3, $v4);
  }

  method QueryFont (Int() $var1) {
    my XID $v1 = $var1;

    XQueryFont($!d, $v1);
  }

  method QueryKeymap (Str() $var1) {
    XQueryKeymap($!d, $var1);
  }

  method QueryPointer (
    Int() $var1,
    Int() $var2,
    Int() $var3,
          $var4  is rw,
          $var5  is rw,
          $var6  is rw,
          $var7  is rw,
          $var8  is rw
  ) {
    my Window ($v1, $v2, $v3) = ($var, $var2, $var3);
    my gint   ($var4, $var5, $var6, $var7, $var8) = 0 xx 5;

    XQueryPointer($!d, $var1, $var2, $var3, $v4, $v5, $v6, $v7, $v8);
    ($var4, $var5, $var6, $var7, $var8) = ($v4, $v5, $v6, $v7, $v8);
  }

  proto method QueryTextExtents (|)
  { * }

  multi method QueryTextExtents (
    Int()         $var1,
    Str()         $var2,
    Int()         $var3
  ) {
    my XCharStruct $var7 .= new;

    samewith($var1, $var2, $var3, $, $, $, $var7);
  }
  multi method QueryTextExtents (
    Int()         $var1,
    Str()         $var2,
    Int()         $var3,
                  $var4  is rw,
                  $var5  is rw,
                  $var6  is rw,
    XCharStruct() $var7
  ) {
    my XID  $v1                          = $var1;
    my gint ($var3, $var4, $var5, $var6) = ($v3, 0, 0, 0);

    XQueryTextExtents($!d, $var1, $var2, $var3, $var4, $var5, $var6, $var7);
    ($var4, $var5, $var6) = ($v4, $v5, $v6);
  }

  proto method QueryTextExtents16 (|)
  { * }

  multi method QueryTextExtents16 (
    Int()     $var1,
    XChar2b() $var2,
    Int()     $var3
  ) {
    my XCharStruct $var7 .= new;

    samewith($var1, $var2, $var3, $, $, $, $var7);
  }
  multi method QueryTextExtents16 (
    Int()         $var1,
    XChar2b()     $var2,
    Int()         $var3,
                  $var4 is rw,
                  $var5 is rw,
                  $var6 is rw,
    XCharStruct() $var7
  ) {
    my XID $v1 = $var1;
    my gint ($v3, $v4, $v5, $v6) = ($var3, 0, 0, 0);

    XQueryTextExtents16($!d, $v1, $v2, $v3, $v4, $v5, $v6, $v7);
    ($var4, $var5, $var6) = ($v4, $v5, $v6);
  }

  proto method QueryTree (|)
  { * }

  multi method QueryTree (
    Int() $var1,
    Int() $var2,
    Int() $var3,
    Int() $var4,
  ) {
    samewith( cast(Pointer[Pointer[Window]], $var1), $var2, $var3, $var4);
  }
  multi method QueryTree (
    Pointer[Pointer[Window]] $var1,
    Int()                    $var2,
    Int()                    $var3,
    Int()                    $var4,
                             $var5 is rw
  ) {
    my Window ($v2, $v3, $v4) = ($var2, $var3, $var4);
    my gint   $v5             = 0;

    XQueryTree($!d, $var1, $v2, $v3, $v4, $v5);
    $var5 = $v5;
  }

  method RaiseWindow (Window() $var1) {
    my Window $var1 = $v1;

    XRaiseWindow($!d, $v1);
  }

  proto method ReadBitmapFile (|)
  { * }

  multi method ReadBitmapFile (
    Drawable $var1,
    Str      $var2
  ) {
    samewith($var1, $var2, $, $, $, $, $);
  }
  multi method ReadBitmapFile (
    Int() $var1,
    Str() $var2,
          $var3 is rw,
          $var4 is rw,
          $var5 is rw, # Pixmap
          $var6 is rw,
          $var7 is rw
  ) {
    my Drawable $v1 = $var1;
    my gint ($v3, $v4, $v5, $v6, $v7) = ($var3, $var4, $var5, $var6, $var7);

    XReadBitmapFile($!d, $v1, $v2, $v3, $v4, $v5, $v6, $v7);
    ($var3, $var4, $var5, $var6, $var7) = ($v3, $v4, $v5, $v6, $v7);
  }

  method RebindKeysym (
    Int() $var1,
    Int() $var2,
    Int() $var3,
    Str() $var4,
    Int() $var5
  ) {
    my KeySym ($v1, $v2) = ($var1, $var2);
    my gint   ($v3, $v5) = ($var3, $var5);

    XRebindKeysym($!d, $v1, $v2, $v3, $var4, $v5);
  }

  method RecolorCursor (Cursor $var1, XColor() $var2, XColor() $var3) {
    my Cursor $v1 = $var1;

    XRecolorCursor($!d, $v1, $var2, $var3);
  }

  method ReconfigureWMWindow (
    Int()          $var1,
    Int()          $var2,
    Int()          $var3,
    XWindowChanges $var4 = XWindowChanges.new
  ) {
    my Window $v1        = $var1;
    my gint   ($v2, $v4) = ($var2, $var3);

    XReconfigureWMWindow($!d, $var1, $var2, $var3, $var4);
  }

  method RegisterIMInstantiateCallback (
    XrmHashBucket() $var1,
    Str()           $var2,
    Str()           $var3,
                    &var4,
    XPointer        $var5  = XPointer
  ) {
    XRegisterIMInstantiateCallback($!d, $var1, $var2, $var3, &var4, $var5);
  }

  method RemoveConnectionWatch (&var1, XPointer $var2 = XPointer) {
    XRemoveConnectionWatch($!d, &var1, $var2);
  }

  method RemoveFromSaveSet (Int() $var1) {
    my Window $v1 = $var1;

    XRemoveFromSaveSet($!d, $v1);
  }

  method RemoveHost (XHostAddress() $var1) {
    XRemoveHost($!d, $var1);
  }


  proto method RemoveHosts (|)
  { * }

  multi method RemoveHosts (@hosts) {
    samewith(
      X11::Roles::TypedBuffer[XHostAddress].new(@hosts).p,
      @hosts.elems
    );
  }
  multi method RemoveHosts (Pointer $var1, Int() $var2) {
    my gint $v2 = $var2;

    XRemoveHosts($!d, $var1, $var2);
  }

  method ReparentWindow (Int() $var1, Int() $var2, Int() $var3, Int() $var4) {
    my Window ($v1, $v2) = ($var1, $var2);
    my gint   ($v3, $v4) = ($var3, $var4);

    XReparentWindow($!d, $v1, $v2, $v3, $v4);
  }

  method ResetScreenSaver {
    XResetScreenSaver($!d);
  }

  method ResizeWindow (Int() $var1, Int() $var2, Int() $var3) {
    my Window $v1        = $var1;
    my gint   ($v2, $v3) = ($var2, $var3);

    XResizeWindow($!d, $v1, $v2, $v3);
  }

  method ResourceManagerString {
    XResourceManagerString($!d);
  }

  proto method RestackWindows(|)
  { * }

  multi method RestackWindows (@windows) {
    samewith( ArrayToCArray(Window, @windows), @windows.elems );
  }
  multi method RestackWindows (CArray[Window] $var1, Int() $var2) {
    my Window $v1 = $var1;
    my gint   $v2 = $var2;

    XRestackWindows($!d, $v1, $v2);
  }

  method RootWindow (Int() $var1) {
    my gint $v1 = $var1;

    XRootWindow($!d, $v1);
  }

  method RotateBuffers (Int() $var1) {
    my gint $v1 = $var1;

    XRotateBuffers($!d, $var1);
  }

  proto method RotateWindowProperties (|)
  { * }

  multi method RotateWindowProperties (
    Int()        $var1,
                 @properties,
    Int()        $var4
  ) {
    samewith($var1, ArrayToCArray(Atom, @properties), @properties.elems, $var4);
  }
  multi method RotateWindowProperties (
    Int()        $var1,
    CArray[Atom] $var2,
    Int()        $var3,
    Int()        $var4
  ) {
    my Window $v1        = $var1;
    my gint   ($v3, $v4) = ($var3, $var4);

    XRotateWindowProperties($!d, $v1, $var2, $v3, $v4);
  }

  method ScreenCount {
    XScreenCount($!d);
  }

  # 4 / 8

  method ScreenOfDisplay (gint $var1) {
    XScreenOfDisplay($!d, $var1);
  }

  method SelectInput (Window $var1, long $var2) {
    XSelectInput($!d, $var1, $var2);
  }

  method SendEvent (Window $var1, Bool $var2, long $var3, XEvent $var4) {
    XSendEvent($!d, $var1, $var2, $var3, $var4);
  }

  method ServerVendor {
    XServerVendor($!d);
  }

  method SetAccessControl (gint $var1) {
    XSetAccessControl($!d, $var1);
  }

  method SetArcMode (GC $var1, gint $var2) {
    XSetArcMode($!d, $var1, $var2);
  }

  method SetBackground (GC $var1, long $var2) {
    XSetBackground($!d, $var1, $var2);
  }

  method SetClipMask (GC $var1, Pixmap $var2) {
    XSetClipMask($!d, $var1, $var2);
  }

  method SetClipOrigin (GC $var1, gint $var2, gint $var3) {
    XSetClipOrigin($!d, $var1, $var2, $var3);
  }

  method SetClipRectangles (GC $var1, gint $var2, gint $var3, XRectangle $var4, gint $var5, gint $var6) {
    XSetClipRectangles($!d, $var1, $var2, $var3, $var4, $var5, $var6);
  }

  method SetCloseDownMode (gint $var1) {
    XSetCloseDownMode($!d, $var1);
  }

  method SetCommand (Window $var1, Str $var2, gint $var3) {
    XSetCommand($!d, $var1, $var2, $var3);
  }

  method SetDashes (GC $var1, gint $var2, Str $var3, gint $var4) {
    XSetDashes($!d, $var1, $var2, $var3, $var4);
  }

  # 9 / 16

  method SetFillRule (GC $var1, gint $var2) {
    XSetFillRule($!d, $var1, $var2);
  }

  method SetFillStyle (GC $var1, gint $var2) {
    XSetFillStyle($!d, $var1, $var2);
  }

  method SetFont (GC $var1, Font $var2) {
    XSetFont($!d, $var1, $var2);
  }

  method SetFontPath (Str $var1, gint $var2) {
    XSetFontPath($!d, $var1, $var2);
  }

  method SetForeground (GC $var1, long $var2) {
    XSetForeground($!d, $var1, $var2);
  }

  method SetFunction (GC $var1, gint $var2) {
    XSetFunction($!d, $var1, $var2);
  }

  method SetGraphicsExposures (GC $var1, Bool $var2) {
    XSetGraphicsExposures($!d, $var1, $var2);
  }

  method SetIOErrorExitHandler (XIOErrorExitHandler $var1, Pointer $var2) {
    XSetIOErrorExitHandler($!d, $var1, $var2);
  }

  method SetIconName (Window $var1, Str $var2) {
    XSetIconName($!d, $var1, $var2);
  }

  method SetInputFocus (Window $var1, gint $var2, Time $var3) {
    XSetInputFocus($!d, $var1, $var2, $var3);
  }

  method SetLineAttributes (GC $var1, gint $var2, gint $var3, gint $var4, gint $var5) {
    XSetLineAttributes($!d, $var1, $var2, $var3, $var4, $var5);
  }

  method SetModifierMapping (XModifierKeymap $var1) {
    XSetModifierMapping($!d, $var1);
  }

  # 5 / 8

  method SetPlaneMask (GC $var1, long $var2) {
    XSetPlaneMask($!d, $var1, $var2);
  }

  method SetPointerMapping (Str $var1, gint $var2) {
    XSetPointerMapping($!d, $var1, $var2);
  }

  method SetScreenSaver (gint $var1, gint $var2, gint $var3, gint $var4) {
    XSetScreenSaver($!d, $var1, $var2, $var3, $var4);
  }

  method SetSelectionOwner (Atom $var1, Window $var2, Time $var3) {
    XSetSelectionOwner($!d, $var1, $var2, $var3);
  }

  method SetState (GC $var1, long $var2, long $var3, gint $var4, long $var5) {
    XSetState($!d, $var1, $var2, $var3, $var4, $var5);
  }

  method SetStipple (GC $var1, Pixmap $var2) {
    XSetStipple($!d, $var1, $var2);
  }

  method SetSubwindowMode (GC $var1, gint $var2) {
    XSetSubwindowMode($!d, $var1, $var2);
  }

  method SetTSOrigin (GC $var1, gint $var2, gint $var3) {
    XSetTSOrigin($!d, $var1, $var2, $var3);
  }

  method SetTile (GC $var1, Pixmap $var2) {
    XSetTile($!d, $var1, $var2);
  }

  method SetTransientForHint (Window $var1, Window $var2) {
    XSetTransientForHint($!d, $var1, $var2);
  }

  method SetWMColormapWindows (Window $var1, Window $var2, gint $var3) {
    XSetWMColormapWindows($!d, $var1, $var2, $var3);
  }

  method SetWMProtocols (Window $var1, Atom $var2, gint $var3) {
    XSetWMProtocols($!d, $var1, $var2, $var3);
  }

  # 11 / 16

  method SetWindowBackground (Window $var1, long $var2) {
    XSetWindowBackground($!d, $var1, $var2);
  }

  method SetWindowBackgroundPixmap (Window $var1, Pixmap $var2) {
    XSetWindowBackgroundPixmap($!d, $var1, $var2);
  }

  method SetWindowBorder (Window $var1, long $var2) {
    XSetWindowBorder($!d, $var1, $var2);
  }

  method SetWindowBorderPixmap (Window $var1, Pixmap $var2) {
    XSetWindowBorderPixmap($!d, $var1, $var2);
  }

  method SetWindowBorderWidth (Window $var1, gint $var2) {
    XSetWindowBorderWidth($!d, $var1, $var2);
  }

  method SetWindowColormap (Window $var1, Colormap $var2) {
    XSetWindowColormap($!d, $var1, $var2);
  }

  method StoreBuffer (Str $var1, gint $var2, gint $var3) {
    XStoreBuffer($!d, $var1, $var2, $var3);
  }

  method StoreBytes (Str $var1, gint $var2) {
    XStoreBytes($!d, $var1, $var2);
  }

  method StoreColor (Colormap $var1, XColor $var2) {
    XStoreColor($!d, $var1, $var2);
  }

  method StoreColors (Colormap $var1, XColor $var2, gint $var3) {
    XStoreColors($!d, $var1, $var2, $var3);
  }

  method StoreName (Window $var1, Str $var2) {
    XStoreName($!d, $var1, $var2);
  }

  method StoreNamedColor (Colormap $var1, Str $var2, long $var3, gint $var4) {
    XStoreNamedColor($!d, $var1, $var2, $var3, $var4);
  }

  # 6 / 8

  method Sync (Bool $var1) {
    XSync($!d, $var1);
  }

  method Synchronize (Bool $var1) {
    XSynchronize($!d, $var1);
  }

  method TranslateCoordinates (Window $var1, Window $var2, gint $var3, gint $var4, gint $var5 is rw, gint $var6 is rw, Window $var7) {
    XTranslateCoordinates($!d, $var1, $var2, $var3, $var4, $var5 is rw, $var6 is rw, $var7);
  }

  method UndefineCursor (Window $var1) {
    XUndefineCursor($!d, $var1);
  }

  method UngrabButton (gint $var1, gint $var2, Window $var3) {
    XUngrabButton($!d, $var1, $var2, $var3);
  }

  method UngrabKey (gint $var1, gint $var2, Window $var3) {
    XUngrabKey($!d, $var1, $var2, $var3);
  }

  method UngrabKeyboard (Time $var1) {
    XUngrabKeyboard($!d, $var1);
  }

  method UngrabPointer (Time $var1) {
    XUngrabPointer($!d, $var1);
  }

  method UngrabServer {
    XUngrabServer($!d);
  }

  method UninstallColormap (Colormap $var1) {
    XUninstallColormap($!d, $var1);
  }

  method UnloadFont (Font $var1) {
    XUnloadFont($!d, $var1);
  }

  method UnlockDisplay {
    XUnlockDisplay($!d);
  }

  # (14 - 1) / 16

  method UnmapSubwindows (Window $var1) {
    XUnmapSubwindows($!d, $var1);
  }

  method UnmapWindow (Window $var1) {
    XUnmapWindow($!d, $var1);
  }

  method UnregisterIMInstantiateCallback (_XrmHashBucketRec $var1, Str $var2, Str $var3, XIDProc $var4, XPointer $var5) {
    XUnregisterIMInstantiateCallback($!d, $var1, $var2, $var3, $var4, $var5);
  }

  method VendorRelease {
    XVendorRelease($!d);
  }

  method WarpPointer (Window $var1, Window $var2, gint $var3, gint $var4, gint $var5, gint $var6, gint $var7, gint $var8) {
    XWarpPointer($!d, $var1, $var2, $var3, $var4, $var5, $var6, $var7, $var8);
  }

  method WhitePixel (gint $var1) {
    XWhitePixel($!d, $var1);
  }

  method WindowEvent (Window $var1, long $var2, XEvent $var3) {
    XWindowEvent($!d, $var1, $var2, $var3);
  }

  method WithdrawWindow (Window $var1, gint $var2) {
    XWithdrawWindow($!d, $var1, $var2);
  }

  method WriteBitmapFile (Str $var1, Pixmap $var2, gint $var3, gint $var4, gint $var5, gint $var6) {
    XWriteBitmapFile($!d, $var1, $var2, $var3, $var4, $var5, $var6);
  }

  method mbDrawImageString (Drawable $var1, XFontSet $var2, GC $var3, gint $var4, gint $var5, Str $var6, gint $var7) {
    XmbDrawImageString($!d, $var1, $var2, $var3, $var4, $var5, $var6, $var7);
  }

  method mbDrawString (Drawable $var1, XFontSet $var2, GC $var3, gint $var4, gint $var5, Str $var6, gint $var7) {
    XmbDrawString($!d, $var1, $var2, $var3, $var4, $var5, $var6, $var7);
  }

  method mbDrawText (Drawable $var1, GC $var2, gint $var3, gint $var4, XmbTextItem $var5, gint $var6) {
    XmbDrawText($!d, $var1, $var2, $var3, $var4, $var5, $var6);
  }

  method utf8DrawImageString (Drawable $var1, XFontSet $var2, GC $var3, gint $var4, gint $var5, Str $var6, gint $var7) {
    Xutf8DrawImageString($!d, $var1, $var2, $var3, $var4, $var5, $var6, $var7);
  }

  # 7 / 8

  method utf8DrawString (Drawable $var1, XFontSet $var2, GC $var3, gint $var4, gint $var5, Str $var6, gint $var7) {
    Xutf8DrawString($!d, $var1, $var2, $var3, $var4, $var5, $var6, $var7);
  }

  method utf8DrawText (Drawable $var1, GC $var2, gint $var3, gint $var4, XmbTextItem $var5, gint $var6) {
    Xutf8DrawText($!d, $var1, $var2, $var3, $var4, $var5, $var6);
  }

  method wcDrawImageString (Drawable $var1, XFontSet $var2, GC $var3, gint $var4, gint $var5, wchar_t $var6, gint $var7) {
    XwcDrawImageString($!d, $var1, $var2, $var3, $var4, $var5, $var6, $var7);
  }

  method wcDrawString (Drawable $var1, XFontSet $var2, GC $var3, gint $var4, gint $var5, wchar_t $var6, gint $var7) {
    XwcDrawString($!d, $var1, $var2, $var3, $var4, $var5, $var6, $var7);
  }

  method wcDrawText (Drawable $var1, GC $var2, gint $var3, gint $var4, XwcTextItem $var5, gint $var6) {
    XwcDrawText($!d, $var1, $var2, $var3, $var4, $var5, $var6);
  }

}
