#!/usr/bin/perl

use Env;
use DBI;

use lib "scripts";

require image_sharing;

sub usage_and_die()
{
  my $x = 
  "Parameters: AE Host Port Folder Count [ID Name AccessionNumber]";

  print "$x\n";
  exit();
}

sub p {
 my ($path, $name, $patientID, $accessionNumber, $xferSyntax) = @_;

 %h = image_sharing::extract_DICOM_attributes($path);
 my $studyUID         = $h{"0020 000D"};
 my $fName            = $h{"0010 0010"};
 my $fPatientID       = $h{"0010 0020"};
 my $fAccessionNumber = $h{"0008 0050"};
 my $fXferSyntax      = $h{"0002 0010"};
 my $pass = 1;

 if ($fName ne $name) {
  print "Name in file <$fName> does not match expected <$name>\n";
  $pass = 0;
 }
 if ($fPatientID ne $patientID) {
  print "PID in file <$fPatientID> does not match expected <$patientID>\n";
  $pass = 0;
 }
 if ($fAccessionNumber ne $accessionNumber) {
  print "Accession Number in file <$fAccessionNumber> does not match expected <$accessionNumber>\n";
  $pass = 0;
 }
 if ($fXferSyntax ne $xferSyntax) {
  print "Xfer Syntax in file <$fXferSyntax> does not match expected <$xferSyntax>\n";
  $pass = 0;
 }

print "$xferSyntax\n";

 return $pass;
}

## Main starts here
 image_sharing::check_environment();
 ($ae, $dcmHost, $port) = image_sharing::default_DICOM_params();
 ($defaultEdgeFolder)   = image_sharing::default_EDGE_params();

 image_sharing::check_dicom_rcvr($ae, $dcmHost, $port);

 $folderDICOM = "/rsna/test-data/ToshibaCT-2011/EVRLE";
 $targetFolder= "$defaultEdgeFolder/dcm/A-4001-05";
 image_sharing::remove_folder($targetFolder);

 ($name, $patID, $accessionNumber) = ("Waters^D", "A-4001-05", "A-4001-05-ACC");
 image_sharing::cstore($folderDICOM, $ae, $dcmHost, $port, $name, $patID, $accessionNumber, "");
 print "DICOM files transmitted\n";

 @allFiles = <$targetFolder/A-4001-05-ACC/*>;
 die "No files in target folder" if (scalar(@allFiles == 0));
 $totalFiles = scalar(@allFiles);
 $totalPass = 0;
 $xferSyntax = "1.2.840.10008.1.2";
 foreach $f(@allFiles) {
  $totalPass += p($f, $name, $patID, $accessionNumber, $xferSyntax);
 }

  die "A-4001-05 fail: at least one file did not pass ($totalPass of $totalFiles did pass)\n"
 if ($totalPass != $totalFiles);
  
  print "A-4001-05 pass\n";
