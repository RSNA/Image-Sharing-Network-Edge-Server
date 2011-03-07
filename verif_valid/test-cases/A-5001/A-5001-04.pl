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
 chdir("data/A-5001");
 print `perl A-5001.pl $verbose`;
 die if $?;
 chdir("../..");

 @hl7_msgs = (
	"A-5001-04-1-orm", "A-5001-04-2-orm",
	"A-5001-04-3-orm", "A-5001-04-4-orm",
	"A-5001-04-5-orm",
	"A-5001-04-1-oru", "A-5001-04-2-oru",
	"A-5001-04-3-oru", "A-5001-04-4-oru",
	"A-5001-04-5-oru",
 );
 foreach $msg(@hl7_msgs) {
  print "$msg\n";
  my $x = "$MESA_TARGET/bin/send_hl7 localhost 20000 data/A-5001/$msg" . ".hl7";
  print "$x\n";
  print `$x`;
  die "Could not send HL7 message to localhost" if $?;
 }

 my $y =
 "The automated part of test A-5001-04 is complete.\n" .
 " The database is loaded with records. The next part of\n" .
 " the test process consists of manual steps described\n" .
 " in the test procedure.\n";

 print $y;
