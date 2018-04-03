#!/bin/sh

[ -z $DB_DATABASE ] && { echo "Need to set DB_DATABASE"; exit 1; }

scriptDir=`dirname $0`

theDate=`date '+%Y-%m-%d_%H-%M-%S'`

reportsDir=$scriptDir/reports
dbDumpsDir=$scriptDir/database-dumps

#mysql -u $DB_USER -p$DB_PASSWORD $DB_DATABASE -e "SELECT * FROM diff_report INTO OUTFILE '/tmp/diff_report.tsv';"
mysql -u $DB_USER -p$DB_PASSWORD $DB_DATABASE -B -e "SELECT * FROM diff_report;" > $reportsDir/report.$theDate.tsv
mysql -u $DB_USER -p$DB_PASSWORD $DB_DATABASE --table -e "SELECT * FROM diff_report;" > $reportsDir/report.$theDate.txt
mysqldump --extended-insert=FALSE -u $DB_USER -p$DB_PASSWORD $DB_DATABASE > $dbDumpsDir/$DB_DATABASE.$theDate.sql

exit 0
