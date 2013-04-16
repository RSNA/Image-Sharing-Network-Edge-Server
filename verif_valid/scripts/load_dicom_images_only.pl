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

sub generate_demographics()
{
  @demog;

  ($sec,$min,$hour,$mday,$mon,$year) = localtime(time);
  $year += 1900; $mon++;
  $mon  = "0" . $mon  if ($mon  < 9);
  $mday = "0" . $mday if ($mday < 9);
  $hour = "0" . $hour if ($hour < 9);
  $min  = "0" . $min  if ($min  < 9);
  $sec  = "0" . $sec  if ($sec  < 9);
  

  $demog[0] = "LAST^FIRST";
  $demog[1] = "$year" . $mon . $mday . "-" . $hour . $min . $sec;
  $demog[2] = "ACC-" . $demog[1];
  $demog[3] = "$year" . $mon . $mday .       $hour . $min . $sec;

  return @demog;
}


sub extract_parameters()
{
  $s = scalar(@ARGV);
  die "Need more parameters; try --help" if ($s == 0);
  usage_and_die() if ($ARGV[0] eq "-h" || $ARGV[0] eq "--help");
  die  "Need more parameters; try --help" if ($s < 5);
  die   "Too many parameters; try --help" if ($s > 8);
  die "Wrong parameter count; try --help" if ($s == 7);

  @params;

  $params[0] = $ARGV[0];
  $params[1] = $ARGV[1];
  $params[2] = $ARGV[2];
  $params[3] = $ARGV[3];
  $params[4] = $ARGV[4];

  # Always generate demographics, including a date/time stamp.
  # Then, override parameters as needed;
  ($params[5], $params[6], $params[7], $params[8]) = generate_demographics();
  if ($s == 5) {
    # Nothing to change.
  } elsif ($s == 6) {
    # They gave us a patient name;
    $params[5] = $ARGV[5];
  } elsif ($s == 8) {
    # They gave us a patient name, patient ID and accession number
    $params[5] = $ARGV[5];
    $params[6] = $ARGV[6];
    $params[7] = $ARGV[7];
  } else {
    die "Coding error: the scalar value should be 5, 6 or 8 here: $s";
  }

  return @params;
}

sub check_dicom_rcvr
{
  my ($ae, $dcmHost, $port) = @_;

  my $x = "$DCM4CHE_HOME/bin/dcmecho $ae" . "@" . "$dcmHost:$port";
  `$x`;
  if ($?) {
    print "DICOM Connection failed: $x\n\n";
    print `$x`;
    die "\n\n";
  }
}

sub make_folder
{
  my ($folder) = @_;

  `scripts/new_folder.csh $folder`;

  if ($?) {
    print "Script to make new folder failed: $folder\n";
    exit(1);
  }
}

sub link_files
{
  my ($tmpFolder, $folder, $count) = @_;

  @files = <$folder/*>;
  $availableFiles = scalar(@files);
  die "You requested $count files, $folder contains $availableFiles files" if ($count > $availableFiles);

  for ($idx = 0; $idx < $count; $idx++) {
    $label = 100000 + $idx;
    my $x = "ln -s $files[$idx] $tmpFolder/$label";
    `$x`;
    die "Could not execute $x" if $?;
  }
}

sub load_hash_parameters {
 $h{"NAME"} = shift;
 $h{"PATID"} = shift;
 $h{"ACCESSION_NUMBER"} = shift;
 $h{"DATE_TIME"} = shift;

 $h{"SEX"}			= "M";
 $h{"DATE_TIME_BIRTH"}		= '19741212';
 $h{"PATIENT_ADDRESS"}		= '820 JORIE BLVD';
 $h{"PLACER_ORDER_NUMBER"}	= "P." . $h{"PATID"};
 $h{"FILLER_ORDER_NUMBER"}	= $h{"ACCESSION_NUMBER"};
 $h{"VISIT_NUMBER"}		= "V." . $h{"PATID"};
 $h{"REQUESTED_PROCEDURE_ID"}	= "RP." . $h{"PATID"};
 $h{"SCHEDULED_PROCEDURE_STEP_ID"} = "SPS." . $h{"PATID"};
 $h{"Z"} = $h{"Z"};
 $h{"Z"} = $h{"Z"};
 $h{"Z"} = $h{"Z"};
 $h{"Z"} = $h{"Z"};
 $h{"Z"} = $h{"Z"};
 $h{"Z"} = $h{"Z"};
}


sub send_files
{
  my ($folder, $ae, $dcmHost, $port, $name, $patID, $accessionNumber) = @_;
  my $studyTime = "120000";
  my $x = "$DCM4CHE_HOME/bin/dcmsnd $ae" . "@" . "$dcmHost:$port $folder";
  $x .= " -set 00100010='$name'";
  $x .= " -set 00100020=$patID";
  $x .= " -set 00080050=$accessionNumber";
  $x .= " -set 00080030=$studyTime";

  `$x`;
  die "Could not execute $x" if $?;
}


## Main starts here
 image_sharing::check_environment();
# check_environment();
 ($ae, $dcmHost, $port, $folder, $count, $name, $patID, $accessionNumber, $dateTime) = extract_parameters();

 print "$ae <$dcmHost> [$port] ($folder) /$count/ $patID, $name, $accessionNumber\n";

 check_dicom_rcvr($ae, $dcmHost, $port);

 $tmpFolderDICOM = "/tmp/load_dicom_images.tmp/DICOM";
 make_folder($tmpFolderDICOM);
 $tmpFolderHL7 = "/tmp/load_dicom_images.tmp/HL7";
 make_folder($tmpFolderHL7);

 link_files($tmpFolderDICOM, $folder, $count);
 print "Files linked\n";

 $totalBytes = image_sharing::compute_file_lengths($tmpFolderDICOM);
 print "Total bytes: $totalBytes\n";

 %h;
 load_hash_parameters($name, $patID, $accessionNumber, $dateTime);


# @patient = image_sharing::select_patient("rsnadb", $patID);
# print "$patient[2] $patient[3]\n";

 my $uidSuffix = "." . image_sharing::generate_date_time();
 $uidSuffix = $uidSuffix . ":" . $uidSuffix . ":" . $uidSuffix;

 image_sharing::cstore($tmpFolderDICOM, $ae, $dcmHost, $port, $name, $patID, $accessionNumber, $uidSuffix);
 print "DICOM files transmitted\n";

