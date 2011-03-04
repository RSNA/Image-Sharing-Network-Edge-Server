use Env;
use DBI;

package image_sharing;

require Exporter;
@ISA = qw(Exporter);

# We do not wish to export any subroutines.
@EXPORT = qw(
);

sub check_environment {
 @ folders = ( "scripts", "db" );
 foreach $f(@folders) {
  if (!(-e $f)) { die "Are you in the proper folder: did not find <$f>"; }
 }

 if (! $main::MESA_TARGET) { die "MESA_TARGET undefined"; }

 if (! (-e "$MESA_TARGET/bin")) { die "Is MESA properly installed in $MESA_TARGET? Missing bin folder."; }

 if (! $main::DCM4CHE_HOME) { die "DCM4CHE_HOME undefined"; }

 if (! (-e "$DCM4CHE_HOME/bin")) { die "Is DCM4CHE properly installed in $DCM4CHE_HOME? Missing bin folder."; }

}

sub compute_file_lengths {
 my $folderName = shift;

 @allFiles = <$folderName/*>;

 $total = 0;
 foreach $f(@allFiles) {
  $fileSize = -s "$f";
#  print "$f $fileSize\n";
  $total += $fileSize;
 }
 return $total;
}

sub generate_date_time {
  ($sec,$min,$hour,$mday,$mon,$year) = localtime(time);
  $year += 1900; $mon++;
  $mon  = "0" . $mon  if ($mon  < 9);
  $mday = "0" . $mday if ($mday < 9);
  $hour = "0" . $hour if ($hour < 9);
  $min  = "0" . $min  if ($min  < 9);
  $sec  = "0" . $sec  if ($sec  < 9);

  my $t = $year . $mon . $mday . $hour . $min . $sec;
  return $t;
}


sub construct_hl7_orm_or_oru {
 my $output = shift;
 my $template = shift;
 my $standardFields = shift;

 my %h = @_;

 $name = $h{"NAME"};
 $patientID = $h{"PATID"};
 $accessionNumber = $h{"ACCESSION_NUMBER"};

 my $tmpFile = "/tmp/hl7_var.txt";
 open TMP, ">$tmpFile"       or die "Could not open temporary file: $tmpFile";
 open STD, "<$standardFields" or die "Could not open standard fields: $standardFields";

 while ($k = <STD>) {
  print TMP "$k";
 }
 print TMP "\$PATIENT_ID\$ = $patientID\n";
 print TMP "\$PATIENT_NAME\$ = $name\n";
 print TMP "\$SEX\$ = $h{'SEX'}\n";
 print TMP "\$DATE_TIME_BIRTH\$ = $h{'DATE_TIME_BIRTH'}\n";
 print TMP "\$PATIENT_ADDRESS\$ = $h{'PATIENT_ADDRESS'}\n";
 print TMP "\$PATIENT_ACCOUNT_NUM\$ = $h{'PATIENT_ID'}\n";
 print TMP "\$PLACER_ORDER_NUMBER\$ = $h{'PLACER_ORDER_NUMBER'}\n";
 print TMP "\$FILLER_ORDER_NUMBER\$ = $h{'FILLER_ORDER_NUMBER'}\n";
 print TMP "\$ACCESSION_NUMBER\$ = $h{'ACCESSION_NUMBER'}\n";
 print TMP "\$VISIT_NUMBER\$ = $h{'VISIT_NUMBER'}\n";
 print TMP "\$DATE_TIME\$ = $h{'DATE_TIME'}\n";
 print TMP "\$STUDY_INSTANCE_UID\$ = 1.2.3.4." . $h{'DATE_TIME'} . "\n";
 print TMP "\$ORDER_EFFECTIVE_DATE\$ = $h{'DATE_TIME'}\n";
 print TMP "\$REQUESTED_PROCEDURE_ID\$ = $h{'REQUESTED_PROCEDURE_ID'}\n";
 print TMP "\$SCHEDULED_PROCEDURE_STEP_ID\$ = $h{'SCHEDULED_PROCEDURE_STEP_ID'}\n";
 print TMP "\$Z\$ = $h{'Z'}\n";
 print TMP "\$Z\$ = $h{'Z'}\n";
 close STD;

 my $tmpTwo = "/tmp/hl7_orm.txt";
 my $x = "perl $main::MESA_TARGET/bin/tpl_to_txt.pl $tmpFile $template $tmpTwo";

 my $y = "$main::MESA_TARGET/bin/txt_to_hl7 -d ihe -b $main::MESA_TARGET/runtime < $tmpTwo > $output";

 `$x`;
 die "Could not execute: $x" if $?;

 `$y`;
 die "Could not execute: $y" if $?;
}

sub xmit_hl7 {
  my $hostName = $_[0];
  my $port = $_[1];

  my $maxIndex = scalar(@_);
  my $idx = 2;
  for ($idx = 2; $idx < $maxIndex; $idx++) {
    my $x = "$main::MESA_TARGET/bin/send_hl7 localhost 20000 $_[$idx]";
    `$x`;
    die "Could not execute: $x" if $?;
  }
}

sub get_max_exam_id {
 my ($dbName) = @_;

  my $dsn = "dbi:Pg:dbname=$dbName";
  my $dbh = DBI->connect($dsn);
  my $str = "select max(exam_id) from exams;";

  my $sth = $dbh->prepare($str);
  $sth->execute();
  my @row = $sth->fetchrow_array;
  if (scalar(@row) != 1) {
    my $x = scalar(@row);
    die "In get_max_exam_id, wrong number of columns returned. We expected 1 and received: $x";
  } else {
    $sth->fetchrow_array;
  }
  $dbh->disconnect();
  return $row[0];
}

sub get_max_job_set_id {
 my ($dbName) = @_;

  my $dsn = "dbi:Pg:dbname=$dbName";
  my $dbh = DBI->connect($dsn);
  my $str = "select max(job_set_id) from job_sets;";

  my $sth = $dbh->prepare($str);
  $sth->execute();
  my @row = $sth->fetchrow_array;
  if (scalar(@row) != 1) {
    my $x = scalar(@row);
    die "In get_max_job_set_id, wrong number of columns returned. We expected 1 and received: $x";
  } else {
    $sth->fetchrow_array;
  }
  $dbh->disconnect();
  return $row[0];
}

sub get_max_job_id {
 my ($dbName) = @_;

  my $dsn = "dbi:Pg:dbname=$dbName";
  my $dbh = DBI->connect($dsn);
  my $str = "select max(job_id) from jobs;";

  my $sth = $dbh->prepare($str);
  $sth->execute();
  my @row = $sth->fetchrow_array;
  if (scalar(@row) != 1) {
    my $x = scalar(@row);
    die "In get_max_job_id, wrong number of columns returned. We expected 1 and received: $x";
  } else {
    $sth->fetchrow_array;
  }
  $dbh->disconnect();
  return $row[0];
}

sub get_min_job_id {
 my ($dbName) = @_;

  my $dsn = "dbi:Pg:dbname=$dbName";
  my $dbh = DBI->connect($dsn);
  my $str = "select min(job_id) from jobs;";

  my $sth = $dbh->prepare($str);
  $sth->execute();
  my @row = $sth->fetchrow_array;
  if (scalar(@row) != 1) {
    my $x = scalar(@row);
    die "In get_min_job_id, wrong number of columns returned. We expected 1 and received: $x";
  } else {
    $sth->fetchrow_array;
  }
  $dbh->disconnect();
  return $row[0];
}

sub get_max_job_id_from_transactions {
 my ($dbName) = @_;

  my $dsn = "dbi:Pg:dbname=$dbName";
  my $dbh = DBI->connect($dsn);
  my $str = "select max(job_id) from transactions;";

  my $sth = $dbh->prepare($str);
  $sth->execute();
  my @row = $sth->fetchrow_array;
  if (scalar(@row) != 1) {
    my $x = scalar(@row);
    die "In get_max_job_id_from_transactions, wrong number of columns returned. We expected 1 and received: $x";
  } else {
    $sth->fetchrow_array;
  }
  $dbh->disconnect();
  return $row[0];
}

sub get_min_job_id_from_transactions {
 my ($dbName) = @_;

  my $dsn = "dbi:Pg:dbname=$dbName";
  my $dbh = DBI->connect($dsn);
  my $str = "select min(job_id) from transactions;";

  my $sth = $dbh->prepare($str);
  $sth->execute();
  my @row = $sth->fetchrow_array;
  if (scalar(@row) != 1) {
    my $x = scalar(@row);
    die "In get_min_job_id_from_transactions, wrong number of columns returned. We expected 1 and received: $x";
  } else {
    $sth->fetchrow_array;
  }
  $dbh->disconnect();
  return $row[0];
}

sub get_max_pat_id {
 my ($dbName) = @_;

  my $dsn = "dbi:Pg:dbname=$dbName";
  my $dbh = DBI->connect($dsn);
  my $str = "select max(patient_id) from patients;";

  my $sth = $dbh->prepare($str);
  $sth->execute();
  my @row = $sth->fetchrow_array;
  if (scalar(@row) != 1) {
    my $x = scalar(@row);
    die "In get_max_pat_id, wrong number of columns returned. We expected 1 and received: $x";
  } else {
    $sth->fetchrow_array;
  }
  $dbh->disconnect();
  return $row[0];
}

sub insert_new_job_set {
 my ($dbName, $patIndex, $userID, $singleUseID) = @_;

  my $dsn = "dbi:Pg:dbname=$dbName";
  my $dbh = DBI->connect($dsn);
  my $str = "insert into job_sets(patient_id, user_id,single_use_patient_id) values " .
	"($patIndex, $userID, '$singleUseID');";

  my $sth = $dbh->prepare($str);
  $sth->execute();
  $dbh->disconnect();
}

sub insert_new_job {
 my ($dbName, $jobSetID, $examID) = @_;

  my $dsn = "dbi:Pg:dbname=$dbName";
  my $dbh = DBI->connect($dsn);
  my $str = "insert into jobs(job_set_id,exam_id) values " .
	"($jobSetID, '$examID');";

  my $sth = $dbh->prepare($str);
  $sth->execute();
  $dbh->disconnect();
}

sub insert_new_transaction {
 my ($dbName, $jobID, $statusCode, $comments) = @_;

  my $dsn = "dbi:Pg:dbname=$dbName";
  my $dbh = DBI->connect($dsn);
  my $str = "insert into transactions(job_id,status_code,comments) values " .
	"($jobID, $statusCode, '$comments');";

  my $sth = $dbh->prepare($str);
  $sth->execute();
  $dbh->disconnect();
}

sub select_patient {
 my ($dbName, $mrn) = @_;

  my $dsn = "dbi:Pg:dbname=$dbName";
  my $dbh = DBI->connect($dsn);
  my $str = "select patient_id, mrn, patient_name, dob, sex from patients where mrn = '$mrn'";

  my $sth = $dbh->prepare($str);
  $sth->execute();
  my @row = $sth->fetchrow_array;
  if (scalar(@row) != 5) {
    my $x = scalar(@row);
    die "In select_patient, wrong number of columns returned. We expected 1 and received: $x";
  } else {
    $sth->fetchrow_array;
  }
  $dbh->disconnect();
  return @row;
}

sub get_status_date_pairs_from_transactions {
 my ($dbName, $jobID) = @_;

  my $dsn = "dbi:Pg:dbname=$dbName";
  my $dbh = DBI->connect($dsn);
  my $str = "select status_code, modified_date from transactions where job_id = $jobID;";
  my %h;

  my $sth = $dbh->prepare($str);
  $sth->execute();
  @row = $sth->fetchrow_array;
  while (scalar(@row) == 2) {
   $h{$row[0]} = $row[1];
   @row = $sth->fetchrow_array;
  }
  $dbh->disconnect();
  return %h;
}

sub get_status_comment_pairs_from_transactions {
 my ($dbName, $jobID) = @_;

  my $dsn = "dbi:Pg:dbname=$dbName";
  my $dbh = DBI->connect($dsn);
  my $str = "select status_code, comments from transactions where job_id = $jobID;";
  my %h;

  my $sth = $dbh->prepare($str);
  $sth->execute();
  @row = $sth->fetchrow_array;
  while (scalar(@row) == 2) {
   $h{$row[0]} = $row[1];
   @row = $sth->fetchrow_array;
  }
  $dbh->disconnect();
  return %h;
}

sub clear_db {
  my ($dbName) = @_;

  my $dsn = "dbi:Pg:dbname=$dbName";
  my $dbh = DBI->connect($dsn);
  die "Could not connect" if $?;

  @tableNames = ( "hipaa_audit_accession_numbers",
	"hipaa_audit_mrns", "transactions", "jobs",
	"job_sets", "reports", "exams", "patients");

  foreach $t(@tableNames) {
    my $str = "delete from $t;";
    my $sth = $dbh->prepare($str);
    $sth->execute();
    die "Could not execute $str" if $?;
  }
  $dbh->disconnect();
}
 
1;
