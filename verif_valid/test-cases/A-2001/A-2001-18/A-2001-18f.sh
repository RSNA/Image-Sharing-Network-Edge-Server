#!/bin/sh

grep INSERT rsnadb-4.0-system.sql > 4.0.txt
grep INSERT rsnadb-3.2.sql > 3.2.txt

diff -w 4.0.txt 3.2.txt
