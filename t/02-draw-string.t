use v6.c;

use X11::Raw::Types;
use X11::Raw::Keysyms;

use X11::Display;

sub MAIN (:$reverse = False) {
  my $display    = X11::Display.new;
  my $screen-num = $display.DefaultScreen;
  my $root       = $display.RootWindow($screen-num);

  my ($white, $black) = ( .WhitePixel($screen-num), .BlackPixel($screen-num) )
    given $display;

  my $win = $display.CreateSimpleWindow(
    $root,
    0,   0,
    512, 512,
    2,
    (my $fg = $reverse.not ?? $white !! $black),
    $reverse.not ?? $black !! $white
  );

  $display.MapWindow($win);
  $display.SelectInput($win, ExposureMask +| KeyPressMask);

  my ($gc, $) = $display.CreateGC($win, 0);
  my $string  = 'Hello! Nice to meet you!';

  END $display.CloseDisplay;

  loop {
    given (my $event = $display.NextEvent).type {
      when Expose {
        $display.SetForeground($gc, $fg);
        $display.DrawString($win, $gc, 10, 10, $string);
      }

      when KeyPress {
        say "KeyPress { $event.xkey.keycode }";

        exit if $event.xkey.keycode == $display.KeysymToKeycode(XK_Escape);
      }
    }
  }

}
