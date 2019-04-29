#!/bin/bash

scriptdir=`dirname $0`

echo "finding temp files"
find $scriptdir/database-dumps $scriptdir/reports -name "*temp*"

echo "cleaning temp files"
find $scriptdir/database-dumps $scriptdir/reports -name "*temp*" -exec rm {} \;
