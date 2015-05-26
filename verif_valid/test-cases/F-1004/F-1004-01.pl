#!/usr/bin/perl

use Env;
use DBI;
use lib "scripts";
require image_sharing;

sub send_DICOM {
 my ($ae, $host, $port) = @_;

 @image_sets = (
	".5001.1\tWalters^Edwin\tA-5001-04-1\tA-5001-04-1F",
	".5001.2\tOsgood^Walter\tA-5001-04-2\tA-5001-04-2F",
	".5001.3\tDewalt^Kim\tA-5001-04-3\tA-5001-04-3F",
	".5001.4\tDemarco^K\tA-5001-04-4\tA-5001-04-4F",
	".5001.5\tDemarco^K\tA-5001-04-4\tA-5001-04-5F"
 );

 foreach $im(@image_sets) {
  my($uidSuffix, $name, $id, $acc) = split("\t", $im);
  $uidSuffix = $uidSuffix . image_sharing::generate_date_time();
  $uidSuffix = $uidSuffix . ":" . $uidSuffix . ":" . $uidSuffix;
  my $inputFolder = "$MESA_TARGET/storage/modality/MR/MR1/MR1S2";
  image_sharing::cstore($inputFolder, $ae, $host, $port, $name, $id, $acc, $uidSuffix);
 }

}


## Main starts here
 image_sharing::check_environment();
 
 my $ae = "CTP";
 my $host = "localhost";
 my $port = "1081";


 my $verbose = "";
 $verbose = "1" if (scalar(@ARGV) > 0);

 send_DICOM($ae, $host, $port);

 my $y =
 "The automated part of test F-1004-01 is complete.\n" .
 " The database is loaded with records. The next part of\n" .
 " the test process consists of manual steps described\n" .
 " in the test procedure.\n";

 print $y;
