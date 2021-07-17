#!/usr/bin/env raku

use X11::Raw::Definitions;

my $max-name-size = 0;
my @lines = gather for qx«find /usr/include/X11 -name \*.h -exec grep -Hn '#define' {} \\;».lines {
  my ($name, $val) = .split(/ \s /)[1, 2];

  next unless $name && $val;

  $max-name-size .= &max($name.chars);

  next if $name.contains('(' | ')');

  next unless $val ~~ / [
    <[ 0..9a..fA..F ]>+ [ 'L' | ')' ]?
    |
    \"
  ] $/;

  $val ~~ s/L$//;
  #$val ~~ s/ '(' (<-[\)]>+) ')'/$0/;

  $val ~~ s/ '<<' / +< /;

  if $val ~~ / '(' (\w+) ')'/ {
    my $type = try ::($ = "$0");
    my $int = try $0.Str.Int;
    unless  $type !=:= Failure | $int !=:= Failure {
      $*ERR.say: "Skipping undefined type: '$0' for $name";
      next;
    }
  }

  take (
    'constant',
     $name.fmt("%-{$max-name-size}s"),
    'is export',
    '=',
    $val
  );
}

for @lines {
  my @a = .Array;
  @a[1] .= fmt("%-{ $max-name-size}s");
  @a[* - 2] = ':=' if @a.tail ~~ /^ <[ A..Za..z ]>+ $/ | @a[* - 1].starts-with('CARD');

  my $val := @a.tail;
  $val .= substr(1, *) if $val.starts-with('(') && $val.ends-with(')').not;
  say @a.join(" ") ~ ';'
}
