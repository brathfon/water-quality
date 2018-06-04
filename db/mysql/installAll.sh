#!/bin/bash

db=$DB_DATABASE
user=$DB_USER
pw=$DB_PASSWORD


#mysql -v -u $user -p$pw < generated-schema-4.worker-changes.sql
mysql -v -u $user -p$pw < generated-schema-7.session-changes.sql
mysql -v -u $user -p$pw < insertData.sql
mysql -v -u $user -p$pw $db < views.sql
mysql -v -u $user -p$pw $db < auth-procedures.sql
mysql -v -u $user -p$pw $db < reporting-procedures.sql
mysql -v -u $user -p$pw $db < session-procedures.sql
mysql -v -u $user -p$pw $db < lookup-procedures.sql
mysql -v -u $user -p$pw $db < utility-procedures.sql
#mysql -v -u $user -p$pw $db < ../xfer/insert-webexport-legacy-data.sql
mysql -v -u $user -p$pw $db < ../xfer/insert-webexport-legacy-data.1.first-sample-day-change.sql
mysql -v -u $user -p$pw $db < ../xfer/insert-data-sessions-28-38-1-13.2.with-first-sample-day.sql
mysql -v -u $user -p$pw $db < ../xfer/update-nutrient-data.20180515.0.sessions-thru-33w-6s.sql
exit
