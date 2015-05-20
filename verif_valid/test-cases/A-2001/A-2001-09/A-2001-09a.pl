#!/usr/bin/perl

use Env;
use DBI;
use lib "scripts";
require image_sharing;

## Main starts here
 image_sharing::check_environment();
 image_sharing::clear_db("rsnadb");

 my $verbose = "";
 $verbose = "1" if (scalar(@ARGV) > 0);

 $schemaVersion= image_sharing::select_schema_version("rsnadb");
 print "$schemaVersion\n";
 if (!($schemaVersion eq "3.2.0")) {
  print "Test A-2001-09(a) fails.\n";
  print "Schema version is expected to be 3.2.0, not $schemaVersion.\n";
  exit(1);
 } else {
  print "Test passes: proper schema version detected: $schemaVersion\n";
  print "Go check the actual schema defintions (part b)\n";
 }


