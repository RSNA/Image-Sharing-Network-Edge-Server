#!/usr/local/bin/perl -w

use Env;
use File::Copy;
use lib "../../common";
require mesa_msgs;

# Generate HL7 scheduling messages for Case 105

  if (scalar(@ARGV) == 0) {
    copy("105.118.o01.var", "105.118.o01.xxx");
  } else {
  }

  mesa_msgs::create_text_file_2_var_files(
	"105.118.o01.txt",		# This is the output
	"../templates/o01.tpl",		# Template for an O01 message
	"../../adt/105/doe.txt",	# Demographics, PV1 information
	"105.118.o01.xxx");		# Input with order information
  mesa_msgs::create_hl7("105.118.o01");
