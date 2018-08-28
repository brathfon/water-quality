#!/bin/bash

db=$DB_DATABASE
user=$DB_DBA
pw=$DB_DBA_PASSWORD


#mysql -v -u $user -p$pw $db < generated-schema-9.0.sep-date-time.sql
mysql -v -u $user -p$pw $db < generated-schema-9.1.sites-changes.sql
mysql -v -u $user -p$pw $db < views.sql
mysql -v -u $user -p$pw $db < auth-procedures.sql
mysql -v -u $user -p$pw $db < reporting-procedures.sql
mysql -v -u $user -p$pw $db < session-procedures.sql  # .backup
mysql -v -u $user -p$pw $db < site-procedures.sql  # .backup
mysql -v -u $user -p$pw $db < lookup-procedures.sql
mysql -v -u $user -p$pw $db < utility-procedures.sql
mysql -v -u $user -p$pw $db < insertData.sql  # .backup
mysql -v -u $user -p$pw $db < ../xfer/insert-webexport-legacy-data.2.separate-date-time.sql
mysql -v -u $user -p$pw $db < ../xfer/insert-data-sessions-28-43-1-18.1.separate-date-time.sql
mysql -v -u $user -p$pw $db < ../xfer/update-nutrient-data.20180816.0.sessions-thru-39w-15s.sql
exit
