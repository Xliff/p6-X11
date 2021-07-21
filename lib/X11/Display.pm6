use v6.c;

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

  # 1/4 - cw: 7/19/2021

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

  # cw: ... 7/20/2021
  method GetCommand (Window $var1, Str $var2, gint $var3 is rw) {
    XGetCommand($!d, $var1, $var2, $var3 is rw);
  }

  method GetDefault (Str $var1, Str $var2) {
    XGetDefault($!d, $var1, $var2);
  }

  method GetErrorDatabaseText (Str $var1, Str $var2, Str $var3, Str $var4, gint $var5) {
    XGetErrorDatabaseText($!d, $var1, $var2, $var3, $var4, $var5);
  }

  method GetErrorText (gint $var1, Str $var2, gint $var3) {
    XGetErrorText($!d, $var1, $var2, $var3);
  }

  method GetEventData (XGenericEventCookie $var1) {
    XGetEventData($!d, $var1);
  }

  method GetFontPath (gint $var1 is rw) {
    XGetFontPath($!d, $var1 is rw);
  }

  method GetGCValues (GC $var1, long $var2, XGCValues $var3) {
    XGetGCValues($!d, $var1, $var2, $var3);
  }

  method GetGeometry (Drawable $var1, Window $var2, gint $var3 is rw, gint $var4 is rw, gint $var5 is rw, gint $var6 is rw, gint $var7 is rw, gint $var8 is rw) {
    XGetGeometry($!d, $var1, $var2, $var3 is rw, $var4 is rw, $var5 is rw, $var6 is rw, $var7 is rw, $var8 is rw);
  }

  method GetIconName (Window $var1, Str $var2) {
    XGetIconName($!d, $var1, $var2);
  }

  method GetImage (Drawable $var1, gint $var2, gint $var3, gint $var4, gint $var5, long $var6, gint $var7) {
    XGetImage($!d, $var1, $var2, $var3, $var4, $var5, $var6, $var7);
  }

  method GetInputFocus (Window $var1, gint $var2 is rw) {
    XGetInputFocus($!d, $var1, $var2 is rw);
  }

  method GetKeyboardControl (XKeyboardState $var1) {
    XGetKeyboardControl($!d, $var1);
  }

  method GetKeyboardMapping (gint $var1, KeyCode $var2, gint $var3, gint $var4 is rw) {
    XGetKeyboardMapping($!d, $var1, $var2, $var3, $var4 is rw);
  }

  method GetModifierMapping {
    XGetModifierMapping($!d);
  }

  method GetMotionEvents (Window $var1, Time $var2, Time $var3, gint $var4 is rw) {
    XGetMotionEvents($!d, $var1, $var2, $var3, $var4 is rw);
  }

  method GetPointerControl (gint $var1 is rw, gint $var2 is rw, gint $var3 is rw) {
    XGetPointerControl($!d, $var1 is rw, $var2 is rw, $var3 is rw);
  }

  method GetPointerMapping (Str $var1, gint $var2) {
    XGetPointerMapping($!d, $var1, $var2);
  }

  method GetScreenSaver (gint $var1 is rw, gint $var2 is rw, gint $var3 is rw, gint $var4 is rw) {
    XGetScreenSaver($!d, $var1 is rw, $var2 is rw, $var3 is rw, $var4 is rw);
  }

  method GetSelectionOwner (Atom $var1) {
    XGetSelectionOwner($!d, $var1);
  }

  method GetSubImage (Drawable $var1, gint $var2, gint $var3, gint $var4, gint $var5, long $var6, gint $var7, XImage $var8, gint $var9, gint $var10) {
    XGetSubImage($!d, $var1, $var2, $var3, $var4, $var5, $var6, $var7, $var8, $var9, $var10);
  }

  method GetTransientForHint (Window $var1, Window $var2) {
    XGetTransientForHint($!d, $var1, $var2);
  }

  method GetWMColormapWindows (Window $var1, Window $var2, gint $var3 is rw) {
    XGetWMColormapWindows($!d, $var1, $var2, $var3 is rw);
  }

  method GetWMProtocols (Window $var1, Atom $var2, gint $var3 is rw) {
    XGetWMProtocols($!d, $var1, $var2, $var3 is rw);
  }

  method GetWindowAttributes (Window $var1, XWindowAttributes $var2) {
    XGetWindowAttributes($!d, $var1, $var2);
  }

  method GetWindowProperty (Window $var1, Atom $var2, long $var3, long $var4, Bool $var5, Atom $var6, Atom $var7, gint $var8 is rw, long $var9, long $var10, Str $var11) {
    XGetWindowProperty($!d, $var1, $var2, $var3, $var4, $var5, $var6, $var7, $var8 is rw, $var9, $var10, $var11);
  }

  method GrabButton (gint $var1, gint $var2, Window $var3, Bool $var4, gint $var5, gint $var6, gint $var7, Window $var8, Cursor $var9) {
    XGrabButton($!d, $var1, $var2, $var3, $var4, $var5, $var6, $var7, $var8, $var9);
  }

  method GrabKey (gint $var1, gint $var2, Window $var3, Bool $var4, gint $var5, gint $var6) {
    XGrabKey($!d, $var1, $var2, $var3, $var4, $var5, $var6);
  }

  method GrabKeyboard (Window $var1, Bool $var2, gint $var3, gint $var4, Time $var5) {
    XGrabKeyboard($!d, $var1, $var2, $var3, $var4, $var5);
  }

  method GrabPointer (Window $var1, Bool $var2, gint $var3, gint $var4, gint $var5, Window $var6, Cursor $var7, Time $var8) {
    XGrabPointer($!d, $var1, $var2, $var3, $var4, $var5, $var6, $var7, $var8);
  }

  method GrabServer {
    XGrabServer($!d);
  }

  method IconifyWindow (Window $var1, gint $var2) {
    XIconifyWindow($!d, $var1, $var2);
  }

  method ImageByteOrder {
    XImageByteOrder($!d);
  }

  # 1/5

  method InitExtension (Str $var1) {
    XInitExtension($!d, $var1);
  }

  method InstallColormap (Colormap $var1) {
    XInstallColormap($!d, $var1);
  }

  method InternAtom (Str $var1, Bool $var2) {
    XInternAtom($!d, $var1, $var2);
  }

  method InternAtoms (Str $var1, gint $var2, Bool $var3, Atom $var4) {
    XInternAtoms($!d, $var1, $var2, $var3, $var4);
  }

  method InternalConnectionNumbers (gint $var1, gint $var2 is rw) {
    XInternalConnectionNumbers($!d, $var1, $var2 is rw);
  }

  method KeycodeToKeysym (gint $var1, KeyCode $var2, gint $var3) {
    XKeycodeToKeysym($!d, $var1, $var2, $var3);
  }

  method KeysymToKeycode (KeySym $var1) {
    XKeysymToKeycode($!d, $var1);
  }

  method KillClient (XID $var1) {
    XKillClient($!d, $var1);
  }

  method LastKnownRequestProcessed {
    XLastKnownRequestProcessed($!d);
  }

  method ListDepths (gint $var1, gint $var2 is rw) {
    XListDepths($!d, $var1, $var2 is rw);
  }

  method ListExtensions (gint $var1 is rw) {
    XListExtensions($!d, $var1 is rw);
  }

  method ListFonts (Str $var1, gint $var2, gint $var3 is rw) {
    XListFonts($!d, $var1, $var2, $var3 is rw);
  }

  method ListFontsWithInfo (Str $var1, gint $var2, gint $var3 is rw, XFontStruct $var4) {
    XListFontsWithInfo($!d, $var1, $var2, $var3 is rw, $var4);
  }

  method ListHosts (gint $var1 is rw, Bool $var2) {
    XListHosts($!d, $var1 is rw, $var2);
  }

  method ListInstalledColormaps (Window $var1, gint $var2 is rw) {
    XListInstalledColormaps($!d, $var1, $var2 is rw);
  }

  method ListPixmapFormats (gint $var1 is rw) {
    XListPixmapFormats($!d, $var1 is rw);
  }

  method ListProperties (Window $var1, gint $var2 is rw) {
    XListProperties($!d, $var1, $var2 is rw);
  }

  method LoadFont (Str $var1) {
    XLoadFont($!d, $var1);
  }

  method LockDisplay {
    XLockDisplay($!d);
  }

  method LookupColor (Colormap $var1, Str $var2, XColor $var3, XColor $var4) {
    XLookupColor($!d, $var1, $var2, $var3, $var4);
  }

  method LowerWindow (Window $var1) {
    XLowerWindow($!d, $var1);
  }

  method MapRaised (Window $var1) {
    XMapRaised($!d, $var1);
  }

  method MapSubwindows (Window $var1) {
    XMapSubwindows($!d, $var1);
  }

  method MapWindow (Window $var1) {
    XMapWindow($!d, $var1);
  }

  method MaskEvent (long $var1, XEvent $var2) {
    XMaskEvent($!d, $var1, $var2);
  }

  method MaxRequestSize {
    XMaxRequestSize($!d);
  }

  method MoveResizeWindow (Window $var1, gint $var2, gint $var3, gint $var4, gint $var5) {
    XMoveResizeWindow($!d, $var1, $var2, $var3, $var4, $var5);
  }

  method MoveWindow (Window $var1, gint $var2, gint $var3) {
    XMoveWindow($!d, $var1, $var2, $var3);
  }

  method NextEvent (XEvent $var1) {
    XNextEvent($!d, $var1);
  }

  method NextRequest {
    XNextRequest($!d);
  }

  method NoOp {
    XNoOp($!d);
  }

  method OpenIM (_XrmHashBucketRec $var1, Str $var2, Str $var3) {
    XOpenIM($!d, $var1, $var2, $var3);
  }

  method OpenOM (_XrmHashBucketRec $var1, Str $var2, Str $var3) {
    XOpenOM($!d, $var1, $var2, $var3);
  }

  method ParseColor (Colormap $var1, Str $var2, XColor $var3) {
    XParseColor($!d, $var1, $var2, $var3);
  }

  method PeekEvent (XEvent $var1) {
    XPeekEvent($!d, $var1);
  }

  method Pending {
    XPending($!d);
  }

  method ProcessInternalConnection (gint $var1) {
    XProcessInternalConnection($!d, $var1);
  }

  # 2 / 5

  method ProtocolRevision {
    XProtocolRevision($!d);
  }

  method ProtocolVersion {
    XProtocolVersion($!d);
  }

  method PutBackEvent (XEvent $var1) {
    XPutBackEvent($!d, $var1);
  }

  method PutImage (Drawable $var1, GC $var2, XImage $var3, gint $var4, gint $var5, gint $var6, gint $var7, gint $var8, gint $var9) {
    XPutImage($!d, $var1, $var2, $var3, $var4, $var5, $var6, $var7, $var8, $var9);
  }

  method QLength {
    XQLength($!d);
  }

  method QueryBestCursor (Drawable $var1, gint $var2, gint $var3, gint $var4 is rw, gint $var5 is rw) {
    XQueryBestCursor($!d, $var1, $var2, $var3, $var4 is rw, $var5 is rw);
  }

  method QueryBestSize (gint $var1, Drawable $var2, gint $var3, gint $var4, gint $var5 is rw, gint $var6 is rw) {
    XQueryBestSize($!d, $var1, $var2, $var3, $var4, $var5 is rw, $var6 is rw);
  }

  method QueryBestStipple (Drawable $var1, gint $var2, gint $var3, gint $var4 is rw, gint $var5 is rw) {
    XQueryBestStipple($!d, $var1, $var2, $var3, $var4 is rw, $var5 is rw);
  }

  method QueryBestTile (Drawable $var1, gint $var2, gint $var3, gint $var4 is rw, gint $var5 is rw) {
    XQueryBestTile($!d, $var1, $var2, $var3, $var4 is rw, $var5 is rw);
  }

  method QueryColor (Colormap $var1, XColor $var2) {
    XQueryColor($!d, $var1, $var2);
  }

  method QueryColors (Colormap $var1, XColor $var2, gint $var3) {
    XQueryColors($!d, $var1, $var2, $var3);
  }

  method QueryExtension (Str $var1, gint $var2 is rw, gint $var3 is rw, gint $var4 is rw) {
    XQueryExtension($!d, $var1, $var2 is rw, $var3 is rw, $var4 is rw);
  }

  method QueryFont (XID $var1) {
    XQueryFont($!d, $var1);
  }

  method QueryKeymap (Str $var1) {
    XQueryKeymap($!d, $var1);
  }

  method QueryPointer (Window $var1, Window $var2, Window $var3, gint $var4 is rw, gint $var5 is rw, gint $var6 is rw, gint $var7 is rw, gint $var8 is rw) {
    XQueryPointer($!d, $var1, $var2, $var3, $var4 is rw, $var5 is rw, $var6 is rw, $var7 is rw, $var8 is rw);
  }

  method QueryTextExtents (XID $var1, Str $var2, gint $var3, gint $var4 is rw, gint $var5 is rw, gint $var6 is rw, XCharStruct $var7) {
    XQueryTextExtents($!d, $var1, $var2, $var3, $var4 is rw, $var5 is rw, $var6 is rw, $var7);
  }

  method QueryTextExtents16 (XID $var1, XChar2b $var2, gint $var3, gint $var4 is rw, gint $var5 is rw, gint $var6 is rw, XCharStruct $var7) {
    XQueryTextExtents16($!d, $var1, $var2, $var3, $var4 is rw, $var5 is rw, $var6 is rw, $var7);
  }

  method QueryTree (Window $var1, Window $var2, Window $var3, Window $var4, gint $var5 is rw) {
    XQueryTree($!d, $var1, $var2, $var3, $var4, $var5 is rw);
  }

  method RaiseWindow (Window $var1) {
    XRaiseWindow($!d, $var1);
  }

  method ReadBitmapFile (Drawable $var1, Str $var2, gint $var3 is rw, gint $var4 is rw, Pixmap $var5, gint $var6 is rw, gint $var7 is rw) {
    XReadBitmapFile($!d, $var1, $var2, $var3 is rw, $var4 is rw, $var5, $var6 is rw, $var7 is rw);
  }

  method RebindKeysym (KeySym $var1, KeySym $var2, gint $var3, Str $var4, gint $var5) {
    XRebindKeysym($!d, $var1, $var2, $var3, $var4, $var5);
  }

  method RecolorCursor (Cursor $var1, XColor $var2, XColor $var3) {
    XRecolorCursor($!d, $var1, $var2, $var3);
  }

  method ReconfigureWMWindow (Window $var1, gint $var2, gint $var3, XWindowChanges $var4) {
    XReconfigureWMWindow($!d, $var1, $var2, $var3, $var4);
  }

  method RegisterIMInstantiateCallback (_XrmHashBucketRec $var1, Str $var2, Str $var3, XIDProc $var4, XPointer $var5) {
    XRegisterIMInstantiateCallback($!d, $var1, $var2, $var3, $var4, $var5);
  }

  method RemoveConnectionWatch (XConnectionWatchProc $var1, XPointer $var2) {
    XRemoveConnectionWatch($!d, $var1, $var2);
  }

  method RemoveFromSaveSet (Window $var1) {
    XRemoveFromSaveSet($!d, $var1);
  }

  method RemoveHost (XHostAddress $var1) {
    XRemoveHost($!d, $var1);
  }

  method RemoveHosts (XHostAddress $var1, gint $var2) {
    XRemoveHosts($!d, $var1, $var2);
  }

  method ReparentWindow (Window $var1, Window $var2, gint $var3, gint $var4) {
    XReparentWindow($!d, $var1, $var2, $var3, $var4);
  }

  method ResetScreenSaver {
    XResetScreenSaver($!d);
  }

  method ResizeWindow (Window $var1, gint $var2, gint $var3) {
    XResizeWindow($!d, $var1, $var2, $var3);
  }

  method ResourceManagerString {
    XResourceManagerString($!d);
  }

  method RestackWindows (Window $var1, gint $var2) {
    XRestackWindows($!d, $var1, $var2);
  }

  method RootWindow (gint $var1) {
    XRootWindow($!d, $var1);
  }

  method RotateBuffers (gint $var1) {
    XRotateBuffers($!d, $var1);
  }

  method RotateWindowProperties (Window $var1, Atom $var2, gint $var3, gint $var4) {
    XRotateWindowProperties($!d, $var1, $var2, $var3, $var4);
  }

  method ScreenCount {
    XScreenCount($!d);
  }

  # 3 / 6

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

  # 4 / 5
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
