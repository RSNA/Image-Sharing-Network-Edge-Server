#!/usr/bin/perl

use Env;
use DBI;
use lib "scripts";
require image_sharing;

## Main starts here
 image_sharing::check_environment();
 image_sharing::clear_db("rsnadb");

 chdir("data/A-3001");
 print `perl A-3001.pl`;
 die if $?;
 chdir("../..");

 @hl7_msgs = ("A-3001-01-orm");
 foreach $msg(@hl7_msgs) {
  print "$msg\n";
  my $x = "$MESA_TARGET/bin/send_hl7 localhost 20000 data/A-3001/$msg" . ".hl7";
  print "$x\n";
  print `$x`;
  die "Could not send HL7 message to localhost" if $?;
 }

 @patient = image_sharing::select_patient_by_mrn("rsnadb", "A-3001-01");

 my %patientHash;
 @localPatient = ("pid", "A-3001-01", "Clark^Wayne^", "1980-12-14", "M");
 %patientHash = image_sharing::append_patient_hash_global(@patient, %patientHash);
 %patientHash = image_sharing::append_patient_hash_local (@localPatient, %patientHash);
 $pass = image_sharing::check_patient(%patientHash);

 die "Failed A-3001-01" if ($pass == 0);

 print "A-3001-01 pass\n";
