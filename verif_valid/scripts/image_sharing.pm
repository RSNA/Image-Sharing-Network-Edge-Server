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

sub remove_folder {
 my $folder = shift;

 if (-e $folder) {
  $x = "rm -r $folder";
  `$x`;
  die "Could not remove folder: $folder" if $?;
 }
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

# # #
# DICOM functions
# # #

sub default_DICOM_params {
 return("RSNA-ISN", "localhost", 4104);
}

sub extract_DICOM_attributes {
  my $path = shift;

  my %attributeHash;
  @tags = ("0002 0010", "0008 0018", "0008 0050", "0010 0010", "0010 0020", "0020 000D", "0020 000E");
  foreach $t(@tags) {
    my $x = "/opt/mesa/bin/dcm_print_element $t $path";
    my $y = `$x`; chomp $y;
    $attributeHash{$t} = $y;
  }
  return %attributeHash;
}

sub check_dicom_rcvr
{
  my ($ae, $dcmHost, $port) = @_;

  my $x = "$main::DCM4CHE_HOME/bin/dcmecho $ae" . "@" . "$dcmHost:$port";
  `$x`;
  if ($?) {
    print "DICOM Connection failed: $x\n\n";
    print `$x`;
    die "\n\n";
  }
}

sub cstore
{
  my ($folder, $ae, $dcmHost, $port, $name, $patID, $accessionNumber, $uidSuffix) = @_;
  my $studyTime = "120000";
  my $x = "$main::DCM4CHE_HOME/bin/dcmsnd $ae" . "@" . "$dcmHost:$port $folder";
  $x .= " -ts1 ";
  $x .= " -set 00100010='$name'";
  $x .= " -set 00100020=$patID";
  $x .= " -set 00080050=$accessionNumber";
  $x .= " -set 00080030=$studyTime";
  $x .= " -setuid $uidSuffix" if ($uidSuffix ne "");

  print "$x\n";
  print `$x`;
  die "Could not execute $x" if $?;
}

sub cstore_EVRLE
{
  my ($folder, $ae, $dcmHost, $port, $name, $patID, $accessionNumber, $uidSuffix) = @_;
  my $studyTime = "120000";

  my $x = "/opt/mesa/bin/send_image -X 1.2.840.10008.1.2.1 -c $ae $dcmHost $port $folder";

  `$x`;
  die "Could not execute $x" if $?;
}


# # #
# Database functions
# # #

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

sub get_job_sets_by_pid {
 my ($dbName, $pid) = @_;

  my $dsn = "dbi:Pg:dbname=$dbName";
  my $dbh = DBI->connect($dsn);
  my $str = "select job_set_id, email_address, delay_in_hrs, single_use_patient_id from job_sets where patient_id = '$pid';";

  my @jobSets; my $idx = 0;
  my $sth = $dbh->prepare($str);
  $sth->execute();
  my @row = $sth->fetchrow_array;
  while (scalar(@row) == 4) {
    $jobSets[$idx+0] = $row[0];
    $jobSets[$idx+1] = $row[1];
    $jobSets[$idx+2] = $row[2];
    $jobSets[$idx+3] = $row[3];
    $idx += 4;
    @row = $sth->fetchrow_array;
  }
  $dbh->disconnect();
  return @jobSets;
}

sub get_jobs_by_job_set_id {
 my ($dbName, $jobSetID) = @_;

  my $dsn = "dbi:Pg:dbname=$dbName";
  my $dbh = DBI->connect($dsn);
  my $str = "select job_id, exam_id, report_id, document_id from jobs where job_set_id = $jobSetID;";

  my @jobs; my $idx = 0;
  my $sth = $dbh->prepare($str);
  $sth->execute();
  my @row = $sth->fetchrow_array;
  while (scalar(@row) == 4) {
    $jobs[$idx+0] = $row[0];
    $jobs[$idx+1] = $row[1];
    $jobs[$idx+2] = $row[2];
    $jobs[$idx+3] = $row[3];
    $idx += 4;
    @row = $sth->fetchrow_array;
  }
  $dbh->disconnect();
  return @jobs;
}

sub get_transactions_by_job_id {
 my ($dbName, $jobID) = @_;

  my $dsn = "dbi:Pg:dbname=$dbName";
  my $dbh = DBI->connect($dsn);
  my $str = "select transaction_id, status_code, comments, modified_date from transactions where job_id = $jobID;";

  my @transactions; my $idx = 0;
  my $sth = $dbh->prepare($str);
  $sth->execute();
  my @row = $sth->fetchrow_array;
  while (scalar(@row) == 4) {
    $transactions[$idx+0] = $row[0];
    $transactions[$idx+1] = $row[1];
    $transactions[$idx+2] = $row[2];
    $transactions[$idx+3] = $row[3];
    $idx += 4;
    @row = $sth->fetchrow_array;
  }
  return @transactions;
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
    @tmp = $sth->fetchrow_array;
  }
  $dbh->disconnect();
  return @row;
}

sub select_patients_no_consent {
 my ($dbName) = @_;

  my $dsn = "dbi:Pg:dbname=$dbName";
  my $dbh = DBI->connect($dsn);
  my $str = "select patient_id, mrn, patient_name, dob, sex from patients where consent_timestamp is null";

  my @rtnPatients;
  my $sth = $dbh->prepare($str);
  $sth->execute();
  my @row = $sth->fetchrow_array;
  my $idx = 0;
  while (scalar(@row) == 5) {
    my $x = $row[1];
    my $y = $row[2];
    my $z = $row[3];
    $rtnPatients[$idx] = $x . " : " . $z . " : " . $y; $idx++;
    @row = $sth->fetchrow_array;
  }
  $dbh->disconnect();
  return @rtnPatients;
}

sub select_patients_with_consent {
 my ($dbName) = @_;

  my $dsn = "dbi:Pg:dbname=$dbName";
  my $dbh = DBI->connect($dsn);
  my $str = "select patient_id, mrn, patient_name, dob, sex, consent_timestamp from patients where consent_timestamp is not null";

  my @rtnPatients;
  my $sth = $dbh->prepare($str);
  $sth->execute();
  my @row = $sth->fetchrow_array;
  my $idx = 0;
  while (scalar(@row) == 6) {
    my $w = $row[1];
    my $x = $row[2];
    my $y = $row[3];
    my $z = $row[5];
    $rtnPatients[$idx] = $z . " : " . $w . " : " . $y . " : " . $x; $idx++;
    @row = $sth->fetchrow_array;
  }
  $dbh->disconnect();
  return @rtnPatients;
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

sub select_patient_by_mrn {
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

sub select_exam_by_patient_id {
 my ($dbName, $pid) = @_;

  my $dsn = "dbi:Pg:dbname=$dbName";
  my $dbh = DBI->connect($dsn);
  my $str = "select exam_id, accession_number, exam_description, modified_date from exams where patient_id = '$pid'";

  my $sth = $dbh->prepare($str);
  $sth->execute();
  my @row = $sth->fetchrow_array;
  if (scalar(@row) != 4) {
  } else {
    $sth->fetchrow_array;
  }
  $dbh->disconnect();
  return @row;
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

sub append_patient_hash_global {
 my $gPID = shift;
 my $gMRN = shift;
 my $gPatientName = shift;
 my $gDOB = shift;
 my $gSex = shift;

 my %h = @_;

 $h{"G_PID"}          = $gPID;
 $h{"G_MRN"}          = $gMRN;
 $h{"G_PATIENT_NAME"} = $gPatientName;
 $h{"G_DOB"}          = $gDOB;
 $h{"G_SEX"}          = $gSex;

 return %h;
}

sub append_patient_hash_local {
 my $lPID = shift;
 my $lMRN = shift;
 my $lPatientName = shift;
 my $lDOB = shift;
 my $lSex = shift;

 my %h = @_;

 $h{"L_PID"}          = $lPID;
 $h{"L_MRN"}          = $lMRN;
 $h{"L_PATIENT_NAME"} = $lPatientName;
 $h{"L_DOB"}          = $lDOB;
 $h{"L_SEX"}          = $lSex;

 return %h;
}

sub check_patient {
 my %h = @_;

 my $pass = 1;

 if ($h{"G_MRN"} ne $h{"L_MRN"}) {
  $g = $h{"G_MRN"}; $l = $h{"L_MRN"};
  print "Global MRN <$g> does not match local MRN <$l>\n";
  $pass = 0;
 }

 if ($h{"G_PATIENT_NAME"} ne $h{"L_PATIENT_NAME"}) {
  $g = $h{"G_PATIENT_NAME"}; $l = $h{"L_PATIENT_NAME"};
  print "Global PATIENT_NAME <$g> does not match local PATIENT_NAME <$l>\n";
  $pass = 0;
 }

 if ($h{"G_DOB"} ne $h{"L_DOB"}) {
  $g = $h{"G_DOB"}; $l = $h{"L_DOB"};
  print "Global DOB <$g> does not match local DOB <$l>\n";
  $pass = 0;
 }

 if ($h{"G_SEX"} ne $h{"L_SEX"}) {
  $g = $h{"G_SEX"}; $l = $h{"L_SEX"};
  print "Global SEX <$g> does not match local SEX <$l>\n";
  $pass = 0;
 }

 return $pass;
}

sub append_exam_hash_global {
 my $gExamID = shift;
 my $gAccNum = shift;
 my $gExamDesc = shift;
 my $gModDate = shift;

 my %h = @_;

 $h{"G_EXAM_ID"}   = $gExamID;
 $h{"G_ACC_NUM"}   = $gAccNum;
 $h{"G_EXAM_DESC"} = $gExamDesc;
 $h{"G_MOD_DATE"}  = $gModDate;

 return %h;
}

sub append_exam_hash_local {
 my $lExamID = shift;
 my $lAccNum = shift;
 my $lExamDesc = shift;
 my $lModDate = shift;

 my %h = @_;

 $h{"L_EXAM_ID"}   = $lExamID;
 $h{"L_ACC_NUM"}   = $lAccNum;
 $h{"L_EXAM_DESC"} = $lExamDesc;
 $h{"L_MOD_DATE"}  = $lModDate;

 return %h;
}

sub check_exam {
 my %h = @_;

 my $pass = 1;

 if ($h{"G_ACC_NUM"} ne $h{"L_ACC_NUM"}) {
  $g = $h{"G_ACC_NUM"}; $l = $h{"L_ACC_NUM"};
  print "Global ACC_NUM <$g> does not match local ACC_NUM <$l>\n";
  $pass = 0;
 }

 if ($h{"G_EXAM_DESC"} ne $h{"L_EXAM_DESC"}) {
  $g = $h{"G_EXAM_DESC"}; $l = $h{"L_EXAM_DESC"};
  print "Global EXAM_DESC <$g> does not match local EXAM_DESC <$l>\n";
  $pass = 0;
 }

 return $pass;
}

 
1;
