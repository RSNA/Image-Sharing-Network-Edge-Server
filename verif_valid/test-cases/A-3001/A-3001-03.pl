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

 @hl7_msgs = ("A-3001-03-orm");
 foreach $msg(@hl7_msgs) {
  print "$msg\n";
  my $x = "$MESA_TARGET/bin/send_hl7 localhost 20000 data/A-3001/$msg" . ".hl7";
  print "$x\n";
  print `$x`;
  die "Could not send HL7 message to localhost" if $?;
 }

 $testMRN = "A-3001-03";
 @patient = image_sharing::select_patient_by_mrn("rsnadb", $testMRN);
 if (scalar(@patient) < 5) {
  $x = scalar(@patient);
  if ($x == 0) {
   print "No patient record returned for MRN: $testMRN\n";
  } else {
   print "Row for patient with MRN: $testMRN has only $x columns.\n";
   print " We expected at least 5\n";
  }
  die "Failed A-3001-03";
 }

 print "Start patient data test\n";
 my %patientHash;
 @localPatient = ("pid", $testMRN, "Clark^Ward^", "1985-11-05", "M");
 %patientHash = image_sharing::append_patient_hash_global(@patient, %patientHash);
 %patientHash = image_sharing::append_patient_hash_local (@localPatient, %patientHash);
 $pass = image_sharing::check_patient(%patientHash);

 die "Failed A-3001-03" if ($pass == 0);

 print "A-3001-03 pass\n";
