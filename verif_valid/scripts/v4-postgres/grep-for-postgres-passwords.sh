#!/bin/sh

for i in N3K647A d17bK4#M 1947JAT ABCDEF123 ABCDEF456 ABCDEF789 MIRTH
do
 echo `date` $i
 grep -r $i .
 echo ""
done

