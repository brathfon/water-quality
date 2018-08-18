#!/bin/bash 

echo "diffs for commments-report"
diff -w `ls comments-report.2018-0* | tail -2`

echo ""
echo "diffs for insitu-report"
diff -w  `ls insitu-report.2018-0* | tail -2`

echo ""
echo "diffs for nutrient-report"
diff -w  `ls nutrient-report.2018-0* | tail -2`

echo ""
echo "diffs for sample-report"
diff -w `ls sample-report.2018-0* | tail -2`
