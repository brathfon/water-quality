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
mysql -u $DB_USER -p$DB_PASSWORD $DB_DATABASE -B -e "SELECT * FROM diff_report;" > $reportsDir/sample-report.$dateTag.tsv

exit 0
