use v6.c;

use X11::Raw::Types;

use X11::Display;

given (my $d = X11::Display.OpenDisplay) {
  die "Cannot open display!" unless $_;

  my $s = .DefaultScreen;
  my $w = .CreateSimpleWindow(
    .RootWindow($s),
    10,  10,
    100, 100,
    1,
    .BlackPixel($s),
    .WhitePixel($s)
  );
  .SelectInput($w, ExposureMask +| KeyPressMask);
  .MapWindow($w);

  loop {
    my $e = .NextEvent;
    if $e.type == Expose {
      .FillRectangle($w, .DefaultGC($s), 20, 20, 10, 10);
      .DrawString($w, .DefaultGC($s), 10, 50, 'Hello, World!');
    } elsif $e.type == KeyPress {
      last;
    }
  }

  .CloseDisplay
}
