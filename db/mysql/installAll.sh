#!/bin/bash

db=$DB_DATABASE
user=$DB_USER
pw=$DB_PASSWORD


mysql -v -u $user -p$pw < generated-schema-8.no-workers.sql
mysql -v -u $user -p$pw $db < views.sql
mysql -v -u $user -p$pw $db < auth-procedures.sql
mysql -v -u $user -p$pw $db < reporting-procedures.sql
mysql -v -u $user -p$pw $db < session-procedures.sql
mysql -v -u $user -p$pw $db < lookup-procedures.sql
mysql -v -u $user -p$pw $db < utility-procedures.sql
mysql -v -u $user -p$pw < insertData.sql
mysql -v -u $user -p$pw $db < ../xfer/insert-webexport-legacy-data.1.first-sample-day-change.sql
mysql -v -u $user -p$pw $db < ../xfer/insert-data-sessions-28-39-1-15.1.no-workers.sql
#mysql -v -u $user -p$pw $db < ../xfer/update-nutrient-data.20180603.0.sessions-thr-33w-6s.sql
mysql -v -u $user -p$pw $db < ../xfer/update-nutrient-data.20180610.0.sessions-thru-36w-11s.sql
exit
