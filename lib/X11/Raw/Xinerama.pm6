use v6.c;

use NativeCall;

use X11::Compat::Definitions;
use X11::Raw::Definitions;
use X11::Raw::Structs;

constant Xinerama is export = 'Xinerama',v1;

class XineramaScreenInfo is repr<CStruct> is export {
  has int32 $.screen_number;
  has short $.x_org;
  has short $.y_org;
  has short $.width;
  has short $.height;
}

### /usr/include/X11/extensions/Xinerama.h

sub XineramaIsActive (Display $dpy)
  returns Bool
  is native(Xinerama)
  is export
{ * }

sub XineramaQueryExtension (Display $dpy, realInt $event_base is rw, realInt $error_base is rw)
  returns Bool
  is native(Xinerama)
  is export
{ * }

sub XineramaQueryScreens (Display $dpy, realInt $number is rw)
  returns Pointer
  is native(Xinerama)
  is export
{ * }
#= tb:XineramaScreenInfo

sub XineramaQueryVersion (Display $dpy, realInt $major_versionp is rw, realInt $minor_versionp is rw)
  returns Status
  is native(Xinerama)
  is export
{ * }
