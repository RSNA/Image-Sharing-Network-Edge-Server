#!/usr/bin/perl

use Env;
use DBI;
use lib "scripts";
require image_sharing;

sub build_HL7 {
 chdir("data/A-5005");
 print `perl A-5005.pl $verbose`;
 die if $?;
 chdir("../..");
}

sub send_HL7 {
 @hl7_msgs = (
 # Washington
	"A-5005-04-1-orm",
 # Lincoln
	"A-5005-04-2a-orm",
	"A-5005-04-2b-orm", "A-5005-04-2b-cancel",
 # Grant
	"A-5005-04-3a-orm",
	"A-5005-04-3b-orm", "A-5005-04-3b-cancel",
	"A-5005-04-3c-orm", "A-5005-04-3c-cancel",
 # Johnson
	"A-5005-04-4-orm", "A-5005-04-4-cancel",
 );
 foreach $msg(@hl7_msgs) {
  print "$msg\n";
  my $x = "$main::MESA_TARGET/bin/send_hl7 localhost 20000 data/A-5005/$msg" . ".hl7";
  print "$x\n";
  print `$x`;
  die "Could not send HL7 message to localhost" if $?;
 }
}

sub send_DICOM {
 my ($ae, $host, $port) = @_;

 @image_sets = (
	".999.1\tWashington^Mary\tA-5005-04-1\tA-5005-04-1F",
	".999.2\tLincoln^Mary\tA-5005-04-2\tA-5005-04-2F",
	".999.3\tGrant^Julia\tA-5005-04-3\tA-5005-04-3F"
 );

 foreach $im(@image_sets) {
  my($uidSuffix, $name, $id, $acc) = split("\t", $im);
  $uidSuffix = $uidSuffix . image_sharing::generate_date_time();
  $uidSuffix = $uidSuffix . ":" . $uidSuffix . ":" . $uidSuffix;
  my $inputFolder = "$MESA_TARGET/storage/modality/CR/CR1/CR1S1";
  image_sharing::cstore($inputFolder, $ae, $host, $port, $name, $id, $acc, $uidSuffix);
 }

}


## Main starts here
 image_sharing::check_environment();
 image_sharing::clear_db("rsnadb");

 my $ae = "DCM4CHEE";
 my $host = "10.242.100.999";
 my $port = "11112";
 die "Set host to real value, not $host.\nSearch for $host in this script and repair it.\n  " if ($host eq "10.242.100.999");

 my $verbose = "";
 $verbose = "1" if (scalar(@ARGV) > 0);
 build_HL7();
 send_HL7();

 send_DICOM($ae, $host, $port);

 my $y =
 "The automated part of test A-5005-04 is complete.\n" .
 " The database is loaded with records. The next part of\n" .
 " the test process consists of manual steps described\n" .
 " in the test procedure.\n";

 print $y;
