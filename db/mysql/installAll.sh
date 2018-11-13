#!/bin/bash

db=$DB_DATABASE
user=$DB_DBA
pw=$DB_DBA_PASSWORD


mysql -v -u $user -p$pw $db < generated-schema-8.no-workers.sql
mysql -v -u $user -p$pw $db < views.sql
mysql -v -u $user -p$pw $db < auth-procedures.sql
mysql -v -u $user -p$pw $db < reporting-procedures.sql
mysql -v -u $user -p$pw $db < session-procedures.sql
mysql -v -u $user -p$pw $db < lookup-procedures.sql
mysql -v -u $user -p$pw $db < utility-procedures.sql
mysql -v -u $user -p$pw $db < insertData.sql
mysql -v -u $user -p$pw $db < ../xfer/insert-webexport-legacy-data.1.first-sample-day-change.sql
mysql -v -u $user -p$pw $db < ../xfer/insert-data-sessions-28-47-1-22.0.sql
#mysql -v -u $user -p$pw $db < ../xfer/update-nutrient-data.20180930.0.sessions-thru-39w-15s.insitu-w45-s20.sql
mysql -v -u $user -p$pw $db < ../xfer/update-nutrient-data.20181111.0.sessions-thru-39w-15s.insitu-w47-s22.sql
exit
