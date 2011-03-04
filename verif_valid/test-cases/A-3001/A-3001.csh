#!/bin/csh

@ passCount = 4
@ failCount= 4

foreach i ( A-3001-01.pl A-3001-02.pl A-3001-03.pl A-3001-04.pl)
  echo $i
  perl test-cases/A-3001/$i
  if ($status != 0) @ passCount -= 1
  echo ""
end

@ failCount -= $passCount

echo Total tests passed: $passCount
echo Total tests failed: $failCount
