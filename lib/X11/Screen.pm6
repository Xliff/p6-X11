use v6.c;

use Method::Also;

use X11::Raw::Definitions;
use X11::Raw::Structs;
use X11::Raw::Lib;

use X11::Display;

class X11::Screen {
  has Screen $!s;

  submethod BUILD (:$screen) {
    $!s = $screen;
  }

  method new (Screen $screen) {
    $screen ?? self.bless( :$screen ) !! Nil;
  }

  method X11::Raw::Structs::Screen
    is also<Screen>
  { $!s }

  # Simple methods
  method BlackPixel             { XBlackPixelOfScreen($!s) }

  method Cells                  { XCellsOfScreen($!s) }

  method DefaultColormap        { XDefaultColormapOfScreen($!s) }

  method DefaultDepth           { XDefaultDepthOfScreen($!s) }

  method DefaultGC              { XDefaultGCOfScreen($!s) }

  method DefaultVisual          { XDefaultVisualOfScreen($!s) }

  method DoesBackingStore       { XDoesBackingStore($!s) }

  method DoesSaveUnders         { XDoesSaveUnders($!s) }

  method EventMask              { XEventMaskOfScreen($!s) }

  method HeightMM               { XHeightMMOfScreen($!s) }

  method Height                 { XHeightOfScreen($!s) }

  method MaxCmaps               { XMaxCmapsOfScreen($!s) }

  method MinCmaps               { XMinCmapsOfScreen($!s) }

  method Planes                 { XPlanesOfScreen($!s) }

  method RootWindow             { XRootWindowOfScreen($!s) }

  method ScreenNumber           { XScreenNumberOfScreen($!s) }

  method ScreenResourceString   { XScreenResourceString($!s) }

  method WhitePixel             { XWhitePixelOfScreen($!s) }

  method WidthMM                { XWidthMMOfScreen($!s) }

  method Width                  { XWidthOfScreen($!s) }

  # Complex methods

  method Display (:$raw = False) {
    my $d = XDisplayOfScreen($!s);

    return Nil unless $d;
    return $d  if     $raw;

    X11::Display.new($d);
  }

  method Dimensions (:$mm = False) {
    $mm ?? ( self.WidthMM, self.HeightMM )
        !! ( self.Width,   self.Height   )
  }

}
