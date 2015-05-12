#!/bin/csh

mkdir -p ~/OBJECTS


/opt/dcm4che/dcm4che-2.0.25/bin/dcmrcv STORE:9104 -dest ~/OBJECTS
