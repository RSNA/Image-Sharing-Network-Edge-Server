#!/bin/csh

find edgeserver -type f -exec diff -q '{}' /usr/local/'{}' \;
