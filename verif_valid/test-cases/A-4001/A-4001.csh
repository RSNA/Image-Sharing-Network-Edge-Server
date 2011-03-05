#!/bin/csh

@ passCount = 5
@ failCount= 5

foreach i ( A-4001-01.pl A-4001-02.pl A-4001-03.pl A-4001-04.pl A-4001-05.pl A-4001-07.pl)
  echo $i
  perl test-cases/A-4001/$i
  if ($status != 0) @ passCount -= 1
  echo ""
end

@ failCount -= $passCount

echo Total tests passed: $passCount
echo Total tests failed: $failCount
