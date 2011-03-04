#!/usr/bin/perl

use Env;
use DBI;
use lib "scripts";
require xx;

sub select_x {
 my ($dbName, $mrn) = @_;

  my $dsn = "dbi:Pg:dbname=$dbName";
  my $dbh = DBI->connect($dsn);
  my $str = "select patient_id, mrn, patient_name, dob, sex from patients where mrn = '$mrn'";

  my $sth = $dbh->prepare($str);
  $sth->execute();
  my @row = $sth->fetchrow_array;
  if (scalar(@row) != 5) {
  } else {
    $sth->fetchrow_array;
  }
  $dbh->disconnect();
  return @row;
}

sub fillVariables {
 ($gMRN, $gPatientName, $gDOB, $gSex) = @_;
}

sub checkPatient {
 if (scalar(@_) != 5) {
  print "checkPatient: not enough columns returned from database\n";
  return;
 }

 my $pass = 1;
 my ($id, $mrn, $patientName, $dob, $sex) = @_;

 if ($mrn ne $gMRN) {
  print "Wrong MRN: $gMRN / $mrn \n";
  $pass = 0; }
 else {
  print "MRN: $mrn\n";
 }

 if ($patientName ne $gPatientName) {
  print "Wrong patient name: $gPatientName / $patientName\n";
  $pass = 0;
 }

 if ($dob ne $gDOB) {
  print "Wrong DOB: $gDOB / $dob \n";
  $pass = 0;
 }

 if ($sex ne $gSex) {
  print "Wrong sex: $gSex / $sex \n";
  $pass = 0;
 }
 return $pass;
}

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

 @patient = select_x("rsnadb", "A-3001-01");
 fillVariables("A-3001-01", "Clark^Wayne^", "1980-12-14", "M");
 my $pass = checkPatient(@patient);

 die "Failed A-3001-01" if ($pass == 0);
