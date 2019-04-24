#!/bin/bash 

echo "diffs for commments-report:"
ls comments-report.* | tail -2
diff -w `ls comments-report.* | tail -2`

echo ""
echo "diffs for insitu-report:"
ls insitu-report.* | tail -2
diff -w  `ls insitu-report.* | tail -2`

echo ""
echo "diffs for nutrient-report:"
ls nutrient-report.* | tail -2
diff -w  `ls nutrient-report.* | tail -2`

echo ""
echo "diffs for sample-report:"
ls sample-report.* | tail -2
diff -w `ls sample-report.* | tail -2`
