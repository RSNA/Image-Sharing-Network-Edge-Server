#!/usr/bin/perl

use DBI;

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

 my ($id, $mrn, $patientName, $dob, $sex) = @_;
 if ($mrn ne $gMRN)
	{ print "Wrong MRN: $gMRN / $mrn \n"; } else { print "MRN: $mrn\n"; }

 if ($patientName ne $gPatientName)
	{ print "Wrong patient name: $gPatientName / $patientName\n"; }

 if ($dob ne $gDOB)
	{ print "Wrong DOB: $gDOB / $dob \n"; }

 if ($sex ne $gSex)
	{ print "Wrong sex: $gSex / $sex \n"; }
}

@p74321 = select_x("rsnadb", "74321");
fillVariables("74321", "Clark^Wayne^", "1980-12-14", "M");
checkPatient(@p74321);

@pBC66321 = select_x("rsnadb", "BC66321");
fillVariables("BC66321", "Clark^William^", "1980-12-14", "M");
checkPatient(@pBC66321);

