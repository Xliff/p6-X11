use v6.c;

use NativeCall;

use NativeHelpers::Blob;

use X11::Raw::Types;
use X11::Raw::Lib;

class X11::Fonts {
  has XFontStruct $!f;

  submethod BUILD (:$font) {
    $!f = $font;
  }

  method new (XFontStruct $font) {
    $font ?? self.bless( :$font ) !! Nil;
  }

  proto method GetFontProperty (|)
  { * }

  multi method GetFontProperty (Int() $var1) {
    samewith($var1, $, :all);
  }
  multi method GetFontProperty (Int() $var1, $var2 is rw, :$all = False) {
    my Atom $v1 = $var1;
    my long $v2 = 0;

    my $rv = so XGetFontProperty($!f, $v1, $v2);
    $var2 = $v2;
    return $rv unless $all;
    ($rv, $var2);
  }

  proto method TextExtents(|)
  { * }

  multi method TextExtents(
    Str() $var1,
          :$encoding = 'utf8'
  ) {
    my $blob = $var1.encode(:$encoding);

    my XCharStruct $or .= new;

    samewith(pointer-to($blob), $blob.bytes, $, $, $, $or);
  }
  multi method TextExtents(
    Pointer       $var1,
    Int()         $var2,
                  $var3 is rw,
                  $var4 is rw,
                  $var5 is rw,
    XCharStruct() $var6
  ) {
    my realInt ($v2, $v3, $v4, $v5) = ($var2, 0, 0, 0);

    XTextExtents($!f, $var1, $v2, $v3, $v4, $v5, $var6);
    ($var3, $var4, $var5) = ($v3, $v4, $v5);
    ($var3, $var4, $var5, $var6);
  }

  proto method TextExtents16 (|)
  { * }

  multi method TextExtents16 (
    Str() $var1,
          :$encoding = 'utf16'
  ) {
    my $blob = $var1.encode(:$encoding);

    my XCharStruct $or .= new;

    samewith(pointer-to($blob), $blob.bytes, $, $, $, $or);
  }
  multi method TextExtents16 (
    Pointer       $var1,
    Int()         $var2,
                  $var3 is rw,
                  $var4 is rw,
                  $var5 is rw,
    XCharStruct() $var6
  ) {
    my realInt ($v2, $v3, $v4, $v5) = ($var2, 0, 0, 0);

    XTextExtents16($!f, $var1, $v2, $v3, $v4, $v5, $var6);
    ($var3, $var4, $var5) = ($v3, $v4, $v5);
    ($var3, $var4, $var5, $var6);
  }


  proto method TextWidth (|)
  { * }

  multi method TextWidth (Str() $var1, :$encoding = 'utf8') {
    my $blob = $var1.encode(:$encoding);

    samewith(pointer-to($blob), $blob.bytes);
  }
  multi method TextWidth (Pointer $var1, Int() $var2) {
    my realInt $v2 = $var2;

    XTextWidth($!f, $var1, $v2)
  }

  proto method TextWidth16 (|)
  { * }

  multi method TextWidth16 (Str() $var1, :$encoding = 'utf16') {
    my $blob = $var1.encode(:$encoding);

    samewith(pointer-to($blob), $blob.bytes);
  }
  multi method TextWidth16 (Pointer $var1, Int() $var2) {
    my realInt $v2 = $var2;

    XTextWidth16($!f, $var1, $v2)
  }

}
