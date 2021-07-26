use v6.c;

use NativeCall;

unit package X11::Compat::Definitions;

constant realInt  is export := #$*KERNEL.bits == 64 ?? int64 !!
                               int32;

constant realUInt is export := #$*KERNEL.bits == 64 ?? uint64 !!
                               uint32;

constant FcChar8   is export := uint8;
constant FcChar16  is export := uint16;
constant FcChar32  is export := uint;
constant FcBool    is export := int;
constant FcCharSet is export := Pointer;
constant FcPattern is export := Pointer;

constant FT_UInt   is export := realUInt;

class SizedCArray is CArray is export does Positional {
  has               $!size;

  # Delegate everything but 'elems'
  has CArray[uint8] $!native handles *.grep({ ( .name // '' ) ne 'elems' });

  method size is rw {
    Proxy.new:
      FETCH => -> $     { $!size },
      STORE => -> $, \s { $!size = s }
  }

  method AT-POS (\k) {
    $!native[k];
  }

  method elems { $!size.defined ?? $!size !! nextsame }

  submethod BUILD ( :$!native, :$!size ) { }

  method new ($native, $size) {
    self.bless( :$native, :$size );
  }

}
