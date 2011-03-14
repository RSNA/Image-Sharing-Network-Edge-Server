#!/usr/local/bin/perl -w

use Env;
use File::Copy;
require mesa_msgs;


 @ files = ("1001_1", "1001_2");
 foreach $f(@files) {
  print "$f\n";

  mesa_msgs::create_text_file(
	"$f.var",		# This is the output
	"ihe_sched.tpl",	# Template for an O01 message
	"$f.txt");		# Input with order information
  mesa_msgs::create_hl7("$f");
  print "$f ORM/ORU created\n";
 }
