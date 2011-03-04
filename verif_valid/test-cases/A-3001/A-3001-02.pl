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
 chdir("data/A-3001");
 print `perl A-3001.pl $verbose`;
 die if $?;
 chdir("../..");

 @hl7_msgs = ("A-3001-02-oru");
 foreach $msg(@hl7_msgs) {
  print "$msg\n";
  my $x = "$MESA_TARGET/bin/send_hl7 localhost 20000 data/A-3001/$msg" . ".hl7";
  print "$x\n";
  print `$x`;
  die "Could not send HL7 message to localhost" if $?;
 }

 @patient = image_sharing::select_patient_by_mrn("rsnadb", "A-3001-02");

 print "Start patient data test\n";
 my %patientHash;
 @localPatient = ("pid", "A-3001-02", "Clark^Wilma^", "1980-12-16", "F");
 %patientHash = image_sharing::append_patient_hash_global(@patient, %patientHash);
 %patientHash = image_sharing::append_patient_hash_local (@localPatient, %patientHash);
 $pass = image_sharing::check_patient(%patientHash);

 die "Failed A-3001-02" if ($pass == 0);

 print "A-3001-02 pass\n";
