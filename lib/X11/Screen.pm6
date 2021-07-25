use v6.c;

use X11::Raw::Definitions;
use X11::Raw::Structs;

class X11::Screen {
  has Screen $!s;

  method BlackPixelOfScreen      { XBlackPixelOfScreen($!s) }

  method CellsOfScreen           { XCellsOfScreen($!s) }

  method DefaultColormapOfScreen { XDefaultColormapOfScreen($!s) }

  method DefaultDepthOfScreen    { XDefaultDepthOfScreen($!s) }

  method DefaultGCOfScreen       { XDefaultGCOfScreen($!s) }

  method DefaultVisualOfScreen   { XDefaultVisualOfScreen($!s) }

  method DisplayOfScreen         { XDisplayOfScreen($!s) }

  method DoesBackingStore        { XDoesBackingStore($!s) }

  method DoesSaveUnders          { XDoesSaveUnders($!s) }

  method EventMaskOfScreen       { XEventMaskOfScreen($!s) }

  method HeightMMOfScreen        { XHeightMMOfScreen($!s) }

  method HeightOfScreen          { XHeightOfScreen($!s) }

  method MaxCmapsOfScreen        { XMaxCmapsOfScreen($!s) }

  method MinCmapsOfScreen        { XMinCmapsOfScreen($!s) }

  method PlanesOfScreen          { XPlanesOfScreen($!s) }

  method RootWindowOfScreen      { XRootWindowOfScreen($!s) }

  method ScreenNumberOfScreen    { XScreenNumberOfScreen($!s) }

  method ScreenResourceString    { XScreenResourceString($!s) }

  method WhitePixelOfScreen      { XWhitePixelOfScreen($!s) }

  method WidthMMOfScreen         { XWidthMMOfScreen($!s) }

  method WidthOfScreen           { XWidthOfScreen($!s) }

}
