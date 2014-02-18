#!/usr/bin/perl

use Env;
use DBI;
use lib "scripts";
require image_sharing;

sub build_HL7 {
 chdir("data/A-5006");
 print `perl A-5006.pl $verbose`;
 die if $?;
 chdir("../..");
}

sub send_HL7 {
 @hl7_msgs = (
 # Elm
	"A-5006-yy-1-orm", "A-5006-yy-1-oru",
 # Beech
	"A-5006-yy-2-orm", "A-5006-yy-2-oru",
 # Pine
	"A-5006-yy-3-orm", "A-5006-yy-3-complete",
 # Redwood
	"A-5006-yy-4-orm", "A-5006-yy-4-complete",
 );
 foreach $msg(@hl7_msgs) {
  print "$msg\n";
  my $x = "$main::MESA_TARGET/bin/send_hl7 localhost 20000 data/A-5006/$msg" . ".hl7";
  print "$x\n";
  print `$x`;
  die "Could not send HL7 message to localhost" if $?;
 }
}

sub send_DICOM {
 my ($ae, $host, $port) = @_;

 @image_sets = (
	".999.11\tTurner^Will\tA-5006-yy-1\tA-5006-yy-1F",
	".999.21\tWarner^Robert\tA-5006-yy-2\tA-5006-yy-2F",
	".999.31\tCoolidge^Sarah\tA-5006-yy-3\tA-5006-yy-3F",
	".999.41\tMango^Karen\tA-5006-yy-4\tA-5006-yy-4F",
 );

 foreach $im(@image_sets) {
  my($uidSuffix, $name, $id, $acc) = split("\t", $im);
  $uidSuffix = $uidSuffix . image_sharing::generate_date_time();
  $uidSuffix = $uidSuffix . ":" . $uidSuffix . ":" . $uidSuffix;
  my $inputFolder = "$MESA_TARGET/storage/modality/MR/MR6/MR6S1";
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
 "The automated part of test A-5006-01 is complete.\n" .
 " The database is loaded with records. The next part of\n" .
 " the test process consists of manual steps described\n" .
 " in the test procedure.\n";

 print $y;
