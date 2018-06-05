#!/bin/bash

[ -z $DB_DATABASE ] && { echo "Need to set DB_DATABASE"; exit 1; }


scriptName=`basename $0`
scriptDir=`dirname $0`

if [[ "$#" != "1" ]]
then
  echo "Usage: $scriptName <tag, no spaces>"
  exit 1
fi

tag=$1


theDate=`date '+%Y-%m-%d_%H-%M-%S'`
dateTag=$theDate.$tag
echo "dateTag is $dateTag"

reportsDir=$scriptDir/reports
dbDumpsDir=$scriptDir/database-dumps

# not needing tab separated report
#mysql -u $DB_USER -p$DB_PASSWORD $DB_DATABASE -B -e "SELECT * FROM diff_report;" > $reportsDir/sample-report.$dateTag.tsv
mysql -u $DB_USER -p$DB_PASSWORD $DB_DATABASE --table -e "SELECT * FROM diff_report;" > $reportsDir/sample-report.$dateTag.txt
mysql -u $DB_USER -p$DB_PASSWORD $DB_DATABASE --table -e "SELECT * FROM insitu_diff_report;" > $reportsDir/insitu-report.$dateTag.txt
mysql -u $DB_USER -p$DB_PASSWORD $DB_DATABASE --table -e "SELECT * FROM nutrient_diff_report;" > $reportsDir/nutrient-report.$dateTag.txt
mysql -u $DB_USER -p$DB_PASSWORD $DB_DATABASE --table -e "SELECT * FROM comments_diff_report;" > $reportsDir/comments-report.$dateTag.txt
mysql -u $DB_USER -p$DB_PASSWORD $DB_DATABASE --table -e "SELECT * FROM qa_issues_report;" > $reportsDir/qa_issues.$dateTag.txt
mysqldump --extended-insert=FALSE -u $DB_USER -p$DB_PASSWORD $DB_DATABASE > $dbDumpsDir/$DB_DATABASE.$dateTag.sql

exit 0
