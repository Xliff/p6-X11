use v6.c;

use NativeCall;

use NativeHelpers::Blob;

use X11::Raw::Definitions;

unit package X11::Raw::Subs;

# Cribbed from https://github.com/CurtTilmes/perl6-dbmysql/blob/master/lib/DB/MySQL/Native.pm6
sub malloc         (size_t --> Pointer)                    is export is native { * }
sub realloc        (Pointer, size_t --> Pointer)           is export is native { * }
sub calloc         (size_t, size_t --> Pointer)            is export is native { * }
sub memcpy         (Pointer, Pointer, size_t --> Pointer)  is export is native { * }
sub memcmp         (Pointer, Pointer, size_t --> int32)    is export is native { * }
sub memset         (Pointer, int32, size_t)                is export is native { * }
sub dup2           (int32, int32 --> int32)                is export is native { * }
sub isatty         (int32 --> int32)                       is export is native { * }
# Needed for minimal I18n
sub setlocale      (int32, Str --> Str)                    is export is native { * }

sub native-open    (Str, int32, int32 $m = 0)
  is export
  is symbol('open')
  is native
{ * }

# So as not to collide with the CORE sub.
sub native-close   (int32 --> int32)
  is export
  is symbol('close')
  is native
{ * }

our proto sub free (|) is export { * }
multi sub free (Pointer)                           is export is native { * }

# Cribbed from https://stackoverflow.com/questions/1281686/determine-size-of-dynamically-allocated-memory-in-c
sub malloc_usable_size (Pointer --> size_t)        is export is native { * }

# Implement memcpy_pattern. Take pattern and write pattern.^elem bytes to successive areas in dest.

sub getEndian is export {
  ( $*KERNEL.endian == BigEndian, $*KERNEL.endian == LittleEndian );
}

sub cast($cast-to, $obj) is export {
  nativecast($cast-to, $obj);
}

sub real-resolve-uint64($v) is export {
  $v +& 0xffffffffffffffff;
}

sub p ($p) is export {
  cast(Pointer, $p);
}

# Moved from p6-GStreamer
sub nolf ($s) is export {
  $s.subst("\n", ' ', :g);
}

sub lf ($s) is export {
  $s.subst("\r\n", "\n", :g);
}

sub crlf ($s) is export {
  $s.subst("\n", "\r\n", :g);
}

proto sub intRange (|) is export
{ * }

multi sub intRange ($bits, $signed = False) {
  intRange(:$bits, :$signed);
}
multi sub intRange (:$bits, :$signed = False) {
  $signed ??
    2 ** $bits *-1 .. 2 ** $bits -1
    !!
    0 .. 2 ** $bits
}

# cw: Coerces the value of $a to a value within $r.
sub clamp($a, Range() $r) is export {
  max( $r.min, min($a, $r.max) )
}

# This should be in CORE!
sub separate (Str() $s, Int() $p) is export {
  die '$p outside of string range!' unless $p ~~ 0 .. $s.chars;
  ( $s.substr(0, $p), $s.substr($p, *) )
}

sub createReturnArray (\T) is export {
  my \at = T.REPR eq 'CStruct' ?? Pointer[T] !! T;
  (my $a = CArray[at].new)[0] = at;
  $a;
}

sub resolveNativeType (\T) is export {
  say "Resolving { T.^name } to its Raku equivalent...";
  do given T {
    when num32 | num64     { Num }

    when int8  | uint8  |
         int16 | uint16 |
         int32 | uint32 |
         int64 | uint64
                           { Int }

    when str               { Str }

    default                {
      given T.REPR {
        when 'CArray'                { CArray }
        when 'CStruct' | 'CPointer'  { T }
      }
    }
  }
}

sub checkForType(\T, $v is copy) is export {
  if T !=== Nil {
    if T !~~ $v.WHAT {
      my $resolved-name = resolveNativeType(T).^name;
      $resolved-name ~= "[{ T.of.^name }]" if $resolved-name eq 'CArray';
      if $v.^lookup($resolved-name) -> $m {
        say "Using coercer at { T.^name }.$resolved-name...";
        $v = $m($v);
      }
      # Note reversal of usual comparison. This is due to the fact that
      # nativecall types must be compatible with the value, not the
      # other way around. In a;; other cases, T and $v should have
      # the same type value.
      die "Value does not support { $v.^name } variables. Will only accept {
        T.^name }!" unless T ~~ $v.WHAT;
    }
  }
  $v;
}

sub ArrayToCArray(\T, @a) is export {
  enum Handling <P NP>;
  my $handling;
  my $ca = (do given (T.REPR // '') {
    when 'P6opaque' {
      when T ~~ Str                      { $handling = P;  CArray[T]          }

      proceed
    }

    when 'CPointer' | 'P6str'  |
         'P6num'    | 'P6int'            { $handling = P;  CArray[T]          }
    when 'CStruct'  | 'CUnion'           { $handling = NP; CArray[Pointer[T]] }

    default {
      "ArrayToCArray does not know how to handle a REPR of '$_' for type {
       T.^name }"
    }
  }).new;
  for ^@a.elems {
    my $typed = checkForType(T, @a[$_]);

    $ca[$_] = $handling eq P ?? $typed !! cast(Pointer[T], $typed)
  }
  $ca;
}

multi sub CStringArrayToArray(CArray[Str] $sa, Int(Cool) $len) is export {
  CArrayToArray($sa, $len);
}
multi sub CStringArrayToArray (CArray[Str] $sa) is export {
  CArrayToArray($sa)
}

multi sub CArrayToArray(CArray $ca) is export {
  return Nil unless $ca;
  my ($i, @a) = (0);
  while $ca[$i] {
    @a.push: $ca[$i++];
  }
  @a;
}
multi sub CArrayToArray(CArray $ca, Int(Cool) $len) is export {
  return Nil unless $ca;
  my @a;
  @a[$_] = $ca[$_] for ^$len;
  @a;
}

sub get_flags($t, $s, $j = ', ') is export {
  $t.enums
    .map({ $s +& .value ?? .key !! '' })
    .grep(* ne '')
    .join($j);
}

#| ppr(*@a) - Potential Pointer Return. Handles values, potentially pointers,
#|            that are wrapped in a CArray. If value is a Pointer type AND
#|            a CStruct, then that value will be dereferenced.
sub ppr (*@a) is export {
  @a .= map({
    if $_ ~~ (CArray, Pointer).any {
      if .[0].defined {
        if .[0].REPR.chars.not {
          .[0]
        } else {
          ( my $p = .[0] ).defined
            ?? ( .[0] !~~ (CArray, Pointer).any
                 ?? .[0]
                 !! (
                      .[0].of.REPR eq 'CStruct'
                        ?? .[0].deref
                        !! .[0]
                    )
               )
            !! Nil;
        }
      } else {
        Nil;
      }
    }
    else { $_ }
  });
  @a.elems == 1 ?? @a[0] !! @a;
}

sub return-with-all ($v) is export {
  $v[0] ?? ( $v.elems == 1 ?? $v !! $v.skip(1) )
        !! Nil
}

# The assumption here is "Transfer: Full"
sub propReturnObject ($oo, $raw, \P, $C? is raw, :$ref = False) is export {
  my $o = $oo;
  return Nil unless $o;

  $o = cast(P, $o);
  return $o if $raw || $C === Nil;

  $C.new($o, :$ref);
}
our &returnObject is export := &propReturnObject;

sub subarray ($a, $o) is export {
  my $b = nativecast(Pointer[$a.of], $a);
  nativecast(CArray[$a.of], $b.add($o) );
}

sub nativeSized (\T, *%options) is export {
  given T {
    when int8  | uint8                   { 1 }
    when int16 | uint16                  { 2 }
    when int32 | uint32                  { 4 }
    when int64 | uint64                  { 8 }
    when num32                           { 4 }
    when num64                           { 8 }
    when Str                             { $*KERNEL.bits div 8 }
    when Int   | Num                     { %options<double> ?? 32 !! 64 }
    when .REPR eq <CStruct CPointer>.any { $*KERNEL.bits div 8 }

    default {
      # cw: Really need to start typing these!!
      die "Do not have type sizing rules for { T.^name }!";
    }
  }
}

sub toPointer (
  $value,
  :$signed   = False,
  :$double   = False,
  :$direct   = False,
  :$encoding = 'utf8',
  :$typed
)
  is export
{
  # Properly handle non-Str Cool data.
  return $value if $value ~~ Pointer;
  return ($typed !=== Nil ?? $typed !! Nil) unless $value.defined;
  my ($ov, $use-arr, \t, $v) = ( checkForType($typed, $value), False );
  if $ov ~~ Int && $direct {
    $v = Pointer.new($ov);
  } else {
    given $ov {
      # For all implementor-based classes
      when .^lookup('p').so { $ov .= p }

      when Rat { $ov .= Num; proceed }
      when Int {
        $use-arr = True;
        when $signed.so { t := $double ?? CArray[int64] !!  CArray[int32]  }
        default         { t := $double ?? CArray[uint64] !! CArray[uint32] }
      }
      when Rat | Num {
        $use-arr = True;
        t := $double ?? CArray[num64] !!  CArray[num32]
      }

      # Str
      default {
        $ov = ~$ov unless $ov ~~ Str;
        # Better to use CArray[uint8] as it is less volatile than Str;
        my $ca = CArray[uint8].new( $ov.encode($encoding) );
        $ov = pointer-to($ca);
      }
    }
    if $use-arr {
      $v    = t.new;
      $v[0] = $ov;
    } else {
      $v = $ov;
    }
    $v = cast(Pointer, $v) unless $v ~~ Pointer;
  }
  $v
}

# Add Role to redefine name of method (guifa++)
sub buildAccessors (\O) is export {

  #»»»»»»»»»»»»»»»»»»»»
  # cw: Any postprocessing based on attr.WHY.trailing will have
  #     to be done RIGHT HERE!
  #»»»»»»»»»»»»»»»»»»»»

  # cw: The proxy block is the only thing that needs to change, so this
  # can and should be simplified!
	my $proxy-maker = sub ($typedBuffer = False, $typeStr = Nil, $size-attribute = '') {
    $typeBuffer ??
      sub ($n, \attr) {
        my $m = method :: is rw {
          Proxy.new(
            FETCH => method (:$raw = False, :$buffer = False) {
              my $p = attr.get_value(self);
              return $p if $raw && $buffer;
              my $tb = X11::Roles::TypedBuffer[ ::($typeStr) ].new($p);
              $tb.setSize( ::($size-attribute) ) if $size-attribute;
              return $tb if $raw;
              $tb.Array;
            },
            STORE => -> $, \v { attr.set_value(self, v) }
          );
        }
        $m.set_name($n);
        $m;
      }
      !!
      sub ($n, \attr) {
        my $m = method :: is rw {
          Proxy.new(
            FETCH => -> $,    { my $p = attr.get_value(self);
                                ($p does GLib::Roles::Pointers)
                                  if $p ~~ (Pointer, CArray).any;
                                $p },
            STORE => -> $, \v { attr.set_value(self, v) }
          );
        }
        $m.set_name($n);
        $m;
      }
}


	for O.^attributes.kv -> $k, \a {
		my $full-name = a.name;
    my ($, $attr-name) = $full-name.&separate(2);
		next if a.has_accessor;

    my $proxy;
    if a.WHY.trailing -> $t {
      my ($ops, $desc) = $t.split(' - ');
      for $ops.split(' ') {
        my ($op, $params) = .split(':');
        $params .= split(/\,/;
        say "O: { $op} } / P: { $params }";

        given $op {
          when 'tb' {
            $proxy = $proxy-maker( True, $params[0], $params[1] // '' )
          }
          default {
          }
        }
      }
    }

		print "  Adding { $attr-name } to { O.^name }..." if $DEBUG;
    my $proxy = $proxy-maker(
		O.^add_method(
			$attr-name,
			$proxy($attr-name, a)    #= $proxy() returns Method
		);
		say 'done' if $DEBUG;
	}
}
