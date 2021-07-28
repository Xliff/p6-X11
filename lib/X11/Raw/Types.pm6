use v6.c;

use NativeCall;

use X11::Raw::Exports;

my constant forced = 0;

unit package X11::Raw::Types;

need X11::Compat::Definitions;
need X11::Raw::Definitions;
need X11::Raw::Enums;
need X11::Raw::Structs;

BEGIN {
  x11-re-export($_) for |@x11-exports;
}
