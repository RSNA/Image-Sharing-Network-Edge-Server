#!/usr/local/bin/perl -w

use Env;
use File::Copy;
use lib "..";
use lib "../../scripts";
require mesa_msgs;
require xx;

sub fill_variables {
 my $path = shift;

 open F, ">$path" or die "Could not open $f for append";

 my $dt = image_sharing::generate_date_time();

 print F "\$DATE_TIME\$ = $dt\n";
 print F "\$ORDER_EFFECTIVE_DATE\$ = $dt\n";

 close F;
}

 # First, create all scheduling ORM messages
 @ files = ("A-3001-01");
 foreach $f(@files) {
  print "$f\n";

  my $tmp = "/tmp/x.var";
  fill_variables($tmp);
  mesa_msgs::create_text_file_2_var_files(
	"$f-orm.txt",		# This is the output
	"../ihe_sched.tpl",	# Template for an O01 message
	"$f.var",		# Input file 1
	$tmp);			# Second input

  mesa_msgs::create_hl7("$f-orm");
  print "$f ORM created\n";

  mesa_msgs::create_text_file(
	"$f.var",		# This is the output
	"../ihe_oru.tpl",	# Template for an O01 message
	"$f-oru.txt");		# Input with order information
  mesa_msgs::create_hl7("$f-oru");
  print "$f ORU created\n";

 }
