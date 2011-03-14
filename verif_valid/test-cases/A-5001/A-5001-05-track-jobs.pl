#!/usr/bin/perl

use Env;
use DBI;
use lib "scripts";
require image_sharing;

sub process_transaction {
 my ($dbName, $transactionID, $statusCode, $comments, $modifiedDate) = @_;

 print "  Transaction ID:  $transactionID\n";
 print "   Status Code:    $statusCode\n";
 print "   Modified Date:  $modifiedDate\n";
 print "   Comments:       $comments\n";
}

sub process_job {
 my ($dbName, $jobID, $examID, $reportID, $docID) = @_;
 
 print " Job ID:          $jobID\n";
 print "  Exam ID:        $examID\n";
 print "  Report ID:      $reportID\n";
 print "  Document ID:    $docID\n";
 print "  Transactions ...\n";

 my @transactions = image_sharing::get_transactions_by_job_id("rsnadb", $jobID);

 my $idx = 0;
 while ($idx < scalar(@transactions)) {
  my $transactionID = $transactions[$idx+0];
  my $statusCode    = $transactions[$idx+1];
  my $comments      = $transactions[$idx+2];
  my $modifiedDate  = $transactions[$idx+3];
  process_transaction($dbName, $transactionID, $statusCode, $comments, $modifiedDate);
  $idx += 4;
 }
}

sub process_job_set {
 my ($dbName, $jobSetID, $email, $delayInHrs, $singleUse) = @_;
 
 print "Job Set ID:      $jobSetID\n";
 print " Email:          $email\n";
 print " Delay in Hrs:   $delayInHrs\n";
 print " Single Use PID: $singleUse\n";
 print " Jobs....\n";

 @jobs = image_sharing::get_jobs_by_job_set_id("rsnadb", $jobSetID);

 my $idx = 0;
 while ($idx < scalar(@jobs)) {
  my $jobID      = $jobs[$idx+0];
  my $examID     = $jobs[$idx+1];
  my $reportID   = $jobs[$idx+2];
  my $docID      = $jobs[$idx+3];
  process_job($dbName, $jobID, $examID, $reportID, $docID);
  $idx += 4;
 }
}

## Main starts here
 image_sharing::check_environment();

 my $MRN = "A-5001-04-3";
 $MRN = $ARGV[0] if (scalar(@ARGV) > 0);

 ($pid, $rtnMRN, $name) = image_sharing::select_patient("rsnadb", $MRN);

 print "PID: $pid\n";
 print "$rtnMRN\n";
 print "$name\n";
 print "Job Sets ....\n";

 @jobSets = image_sharing::get_job_sets_by_pid("rsnadb", $pid);
 my $idx = 0;
 while ($idx < scalar(@jobSets)) {
  my $jobSetID   = $jobSets[$idx+0];
  my $email      = $jobSets[$idx+1];
  my $delayInHrs = $jobSets[$idx+2];
  my $singleUse  = $jobSets[$idx+3];
  process_job_set("rsnadb", $jobSetID, $email, $delayInHrs, $singleUse);
  $idx += 4;
 }
