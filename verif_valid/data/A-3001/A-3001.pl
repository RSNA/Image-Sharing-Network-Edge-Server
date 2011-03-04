#!/usr/local/bin/perl -w

use Env;
use File::Copy;
use lib "..";
require mesa_msgs;


 # First, create all scheduling ORM messages
 @ files = ("A-3001-01");
 foreach $f(@files) {
  print "$f\n";

  mesa_msgs::create_text_file(
	"$f.var",		# This is the output
	"../ihe_sched.tpl",	# Template for an O01 message
	"$f-orm.txt");		# Input with order information
  mesa_msgs::create_hl7("$f-orm");
  print "$f ORM created\n";

  mesa_msgs::create_text_file(
	"$f.var",		# This is the output
	"../ihe_oru.tpl",	# Template for an O01 message
	"$f-oru.txt");		# Input with order information
  mesa_msgs::create_hl7("$f-oru");
  print "$f ORU created\n";

 }
