use v6.c;

use X11::Compat::Definitions;
use X11::Raw::Definitions;
use X11::Raw::Structs;
use X11::Raw::Xinerama;

use X11::Roles::TypedBuffer;

use MONKEY-TYPING;

class X11::Xinerama {
  has Display $!dpy;

  submethod BUILD (:$display) {
    $!dpy = $display;
  }

  method new (Display $display) {
    $display ?? self.bless( :$display ) !! Nil;
  }

  method IsActive  {
    XineramaIsActive($!dpy);
  }

  proto method QueryExtension (|)
  { * }

  multi method QueryExtension {
    samewith($, $, :all)
  }
  multi method QueryExtension (
    $event_base is rw,
    $error_base is rw,
    :$all       =  False
  ) {
    my ($evb, $erb) = 0 xx 2;

    my $s = XineramaQueryExtension($!dpy, $evb, $erb);
    ($event_base, $error_base) = ($evb, $erb);
    return $s unless $all;
    ($s, $event_base, $error_base)
  }

  method QueryScreens (:$raw = False) {
    my realInt $n = 0;
    my $tb = XineramaQueryScreens($!dpy, $n);

    $tb.say;
    $n.say;

    $tb = X11::Roles::TypedBuffer[XineramaScreenInfo].new($tb);
    #$tb.setSize($n);
    $tb.elems.say;
    return $tb if $raw;
    $tb.Array;
  }

  proto method QueryVersion (|)
  { * }

  multi method QueryVersion {
    samewith($, $);
  }
  multi method QueryVersion (
    $major_versionp is rw,
    $minor_versionp is rw
  ) {
    my realInt ($mav, $miv) = 0 xx 2;

    XineramaQueryVersion($!dpy, $mav, $miv);
    ($major_versionp, $minor_versionp) = ($mav, $miv);
  }

  method Version {
    self.QueryVersion;
  }

}

use X11::Display;

augment class X11::Display {
  method Xinerama {
    X11::Xinerama.new($!d);
  }
}
