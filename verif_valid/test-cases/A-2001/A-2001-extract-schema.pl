#!/usr/bin/perl

use Env;
use DBI;
use lib "scripts";
require image_sharing;

## Main starts here
 image_sharing::check_environment();
 image_sharing::clear_db("rsnadb");

 $schemaVersion = image_sharing::select_schema_version("rsnadb");
 print "Schema version: $schemaVersion\n";

 @tableNames = ( "hipaa_audit_accession_numbers",
        "hipaa_audit_mrns", "transactions", "jobs",
        "job_sets", "reports", "exams", "patients",
	"v_exam_status", "v_job_status");

 my $verbose = "";
 $verbose = "1" if (scalar(@ARGV) > 0);

 print "\nTable Definitions\n";
 foreach $t(@tableNames) {
  print "\n -- $t -- \n";
  @columns = image_sharing::get_column_descriptions("rsnadb", $t);
  foreach $c(@columns) {
   print "$c\n";
  }
 }

 @viewNames = ("v_exam_status", "v_job_status");

 print "\nView Definitions\n";
 foreach $v(@viewNames) {
  print "\n -- $v -- \n";
  $viewDescription = image_sharing::get_view_description("rsnadb", $v);
  print "$viewDescription\n";
 }

