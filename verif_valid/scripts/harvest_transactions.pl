#!/usr/bin/perl

use Env;
use DBI;

use lib "scripts";

require xx;

sub usage_and_die()
{
  my $x = 
  "Hmmm, no parameters needed";

  print "$x\n";
  exit();
}

sub print_header()
{
 print "job ID\tXfer size\t30\t31\t32\t33\t34\t40\n";
}


## Main starts here
 image_sharing::check_environment();


# %h;
# load_hash_parameters($name, $patID, $accessionNumber, $dateTime);


 my $jobIDMax =  image_sharing::get_max_job_id_from_transactions("rsnadb");
 my $jobIDMin =  image_sharing::get_min_job_id_from_transactions("rsnadb");

 my $jobID;
 print_header();
 for ($jobID = $jobIDMin; $jobID <= $jobIDMax; $jobID++) {
  %trans    = image_sharing::get_status_date_pairs_from_transactions("rsnadb", $jobID);
  %comments = image_sharing::get_status_comment_pairs_from_transactions("rsnadb", $jobID);
  $x29 = $comments{"29"};
  $t30 = $trans{"30"};
  $t31 = $trans{"31"};
  $t32 = $trans{"32"};
  $t33 = $trans{"33"};
  $t34 = $trans{"34"};
  $t40 = $trans{"40"};
  print "$jobID\t$x29\t$t30\t$t31\t$t32\t$t33\t$t34\t$t40\n";

 }
