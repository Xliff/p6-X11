use v6.c;

use X11::Raw::Definitions;
use X11::Raw::Structs;

class X11::Screen {
  has Screen $!s;

  method BlackPixel             { XBlackPixelOfScreen($!s) }

  method Cells                  { XCellsOfScreen($!s) }

  method DefaultColormap        { XDefaultColormapOfScreen($!s) }

  method DefaultDepth           { XDefaultDepthOfScreen($!s) }

  method DefaultGC              { XDefaultGCOfScreen($!s) }

  method DefaultVisual          { XDefaultVisualOfScreen($!s) }

  method Display                { XDisplayOfScreen($!s) }

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

}
