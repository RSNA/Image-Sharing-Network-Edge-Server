#!/usr/bin/perl

use Env;
use DBI;
use lib "scripts";
require image_sharing;

## Main starts here
 image_sharing::check_environment();

 @patientList = image_sharing::select_patients_no_consent ("rsnadb");

 my $x = scalar(@patientList);
 print "Patients no consent: $x\n";
 foreach $patient(@patientList) {
  print " $patient\n";
 }

