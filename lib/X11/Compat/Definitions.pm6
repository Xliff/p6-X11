use v6.c;

use NativeCall;

unit package X11::Compat::Definitions;

constant FcChar8   is export := uint8;
constant FcChar16  is export := uint16;
constant FcChar32  is export := uint;
constant FcBool    is export := int;
constant FcCharSet is export := Pointer;
constant FcPattern is export := Pointer;
