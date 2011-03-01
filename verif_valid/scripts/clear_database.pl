#!/usr/bin/perl

use Env;

sub check_environment {
 @ folders = ( "scripts", "db" );
 foreach $f(@folders) {
  if (!(-e $f)) { die "Are you in the proper folder: did not find <$f>"; }
 }

 if (! $MESA_TARGET) { die "MESA_TARGET undefined"; }

 if (! (-e "$MESA_TARGET/bin")) { die "Is MESA properly installed in $MESA_TARGET? Missing bin folder."; }
}


## Main starts here
 check_environment();

 my $dbName = "rsnadb";
 if (scalar(@ARGV) > 0) {
  $dbName = $ARGV[0];
 }

 my $x = "psql $dbName < db/clear_db.sql";
 print "$x\n";
 print `$x`;

 die "Database clear failed" if $?;
