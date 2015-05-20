#!/usr/bin/perl

use Env;
use DBI;
use lib "scripts";
require image_sharing;

sub send_DICOM {
 my ($ae, $host, $port) = @_;

 @image_sets = (
	".4001.22\tEvidence^One\tA-4001-22\tA-4001-22F",
 );

 foreach $im(@image_sets) {
  my($uidSuffix, $name, $id, $acc) = split("\t", $im);
  $uidSuffix = $uidSuffix . image_sharing::generate_date_time();
  $uidSuffix = $uidSuffix . ":" . $uidSuffix . ":" . $uidSuffix;
  my $inputFolder = "/opt/test-data/evidence_documents";
  image_sharing::cstore($inputFolder, $ae, $host, $port, $name, $id, $acc, $uidSuffix);
 }

}


## Main starts here
 image_sharing::check_environment();
 image_sharing::clear_db("rsnadb");
 
 my $ae = "DCM4CHEE";
 my $host = "10.242.100.79";
 my $port = "11112";
 die "Set host to real value, not $host.\nSearch for $host in this script and repair it.\n  " if ($host eq "10.242.100.999");


 my $verbose = "";
 $verbose = "1" if (scalar(@ARGV) > 0);
 chdir("data/A-4001");
 print `perl A-4001.pl $verbose`;
 die if $?;
 chdir("../..");

 @hl7_msgs = (
	"A-4001-22-orm", "A-4001-22-oru", 
 );
 foreach $msg(@hl7_msgs) {
  print "$msg\n";
  my $x = "$MESA_TARGET/bin/send_hl7 localhost 20000 data/A-4001/$msg" . ".hl7";
  print "$x\n";
  print `$x`;
  die "Could not send HL7 message to localhost" if $?;
 }

 send_DICOM($ae, $host, $port);

 my $y =
 "The prep part of test A-4001-22 is complete.\n" .
 " The database is loaded with order records. The next part of\n" .
 " the test process will send images to the system.\n";

 print $y;
