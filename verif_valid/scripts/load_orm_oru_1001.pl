#!/usr/bin/perl

use Env;

sub check_environment {
 @ folders = ( "scripts", "db" );
 foreach $f(@folders) {
  if (!(-e $f)) { die "Are you in the proper folder: did not find <$f>"; }
 }

 if (! $MESA_TARGET) { die "MESA_TARGET undefined"; }

 if (! (-e "$MESA_TARGET/bin")) { die "Is MESA properly installed in $MESA_TARGET? Missing bin folder."; }
}


## Main starts here
 check_environment();

 chdir("data");
 print `perl 1001.pl`;
 chdir("..");

 @hl7_msgs = ("1001_1", "1001_2");
 foreach $msg(@hl7_msgs) {
  print "$msg\n";
  my $x = "$MESA_TARGET/bin/send_hl7 localhost 20000 data/$msg" . ".hl7";
  print "$x\n";
  print `$x`;
  die "Could not send HL7 message to localhost" if $?;
 }
