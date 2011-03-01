#!/bin/csh

echo Start at `date`
echo ""

@ a = 1
while ($a <= 10)
 echo $a `date`
 scripts/t1002.csh 200
 sleep 300
 echo `date`
 echo ""
 @ a += 1
end

echo Done at `date`
