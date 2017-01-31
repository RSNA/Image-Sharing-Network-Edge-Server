#!/usr/local/bin/perl -w

use Env;
use File::Copy;
use lib "..";
use lib "../../scripts";
require mesa_msgs;
require image_sharing;

sub fill_variables {
 my $path = shift;

 open F, ">$path" or die "Could not open $f for append";

 my $dt = image_sharing::generate_date_time();

 print F "\$DATE_TIME\$ = $dt\n";
 print F "\$ORDER_EFFECTIVE_DATE\$ = $dt\n";
 print F "\$UPDATE_DATE_TIME\$ = $dt\n";

 close F;
}

 my $verbose = 0;
 $verbose = 1 if (scalar(@ARGV) > 0);
 # First, create all scheduling ORM messages
 @ files = (
	"A-5001-04-1", "A-5001-04-2", "A-5001-04-3", "A-5001-04-4",
	"A-5001-04-5",
	"A-5001-04-6",
	"A-5001-08-1",
    "A-5001-14-1","A-5001-14-2"
 );
 foreach $f(@files) {
  print "$f\n" if ($verbose);

  my $tmp = "/tmp/x.var";
  fill_variables($tmp);
  mesa_msgs::create_text_file_2_var_files(
	"$f-orm.txt",		# This is the output
	"../ihe_sched.tpl",	# Template for an O01 message
	"$f.var",		# Input file 1
	$tmp);			# Second input

  mesa_msgs::create_hl7("$f-orm");
  print "Created: $f-orm\n" if ($verbose);

  mesa_msgs::create_text_file_2_var_files(
	"$f-oru.txt",		# This is the output
	"../ihe_oru.tpl",	# Template for an O01 message
	"$f.var",		# Input file 1
	$tmp);			# Second input
  
mesa_msgs::create_hl7("$f-oru");
  print "Created: $f-oru\n" if ($verbose);

 }
