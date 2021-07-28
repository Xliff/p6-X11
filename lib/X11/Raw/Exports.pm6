use v6.c;

use CompUnit::Util :re-export;

our %exported;

sub x11-re-export ($compunit) is export {
  return if %exported{$compunit}:exists;

  re-export-everything($compunit);
  %exported{$compunit} = True;
}

our @x11-exports is export = <
  X11::Compat::Definitions
  X11::Raw::Definitions
  X11::Raw::Enums
  X11::Raw::Structs
>;
