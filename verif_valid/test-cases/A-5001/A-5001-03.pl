#!/usr/bin/perl

use Env;
use DBI;
use lib "scripts";
require image_sharing;

## Main starts here
 image_sharing::check_environment();
 image_sharing::clear_db("rsnadb");

 my $x =
 "Test A-5001-03 has cleared the database of all patients.\n" .
 " The remainder of the test consists of manual steps documented\n" .
 " in the test procedure.\n";

 print $x;
