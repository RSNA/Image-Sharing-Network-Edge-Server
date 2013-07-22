#!/usr/bin/perl

use Env;
use DBI;
use lib "scripts";
require image_sharing;

## Main starts here
 image_sharing::check_environment();

# This is copy/paste from 2005-05-04, but we do not clear the databases here.
# We are just sending the reports later.
# image_sharing::clear_db("rsnadb");

 my $verbose = "";
 $verbose = "1" if (scalar(@ARGV) > 0);
 chdir("data/A-5005");
 print `perl A-5005.pl $verbose`;
 die if $?;
 chdir("../..");

 @hl7_msgs = (
# Washington
	"A-5005-04-1-oru",
# Lincoln
# Grant
	"A-5005-04-3a-oru",
# Johnson
 );
 foreach $msg(@hl7_msgs) {
  print "$msg\n";
  my $x = "$MESA_TARGET/bin/send_hl7 localhost 20000 data/A-5005/$msg" . ".hl7";
  print "$x\n";
  print `$x`;
  die "Could not send HL7 message to localhost" if $?;
 }

 my $y =
 "The automated part of test A-5005-04 is complete.\n" .
 " The database is loaded with records. The next part of\n" .
 " the test process consists of manual steps described\n" .
 " in the test procedure.\n";

 print $y;
