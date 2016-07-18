use v6;
use Test;

my $bindir = $?FILE.IO.parent.parent.child('bin');
ok (shell "$bindir/p6doc -n Type::Str > /dev/null"), "p6doc";
ok (shell "PERL6LIB=. $bindir/p6doc -n Type::Str > /dev/null"), "p6doc with PERL6LIB";

done-testing;
