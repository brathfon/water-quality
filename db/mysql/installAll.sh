#!/bin/bash

db=$DB_DATABASE
user=$DB_DBA
pw=$DB_DBA_PASSWORD


mysql -v -u $user -p$pw $db < generated-schema-10.2.nut-sample-taken-col.sql
mysql -v -u $user -p$pw $db < views.sql
mysql -v -u $user -p$pw $db < auth-procedures.sql
mysql -v -u $user -p$pw $db < reporting-procedures.sql
mysql -v -u $user -p$pw $db < session-procedures.sql
mysql -v -u $user -p$pw $db < site-procedures.sql
mysql -v -u $user -p$pw $db < lookup-procedures.sql
mysql -v -u $user -p$pw $db < utility-procedures.sql
mysql -v -u $user -p$pw $db < insertData.sql
mysql -v -u $user -p$pw $db < ../xfer/insert-data-sessions-1-75w-1-50s.0.sql
mysql -v -u $user -p$pw $db < ../xfer/update-nutrient-data.20200914.0.nutrient-74w-50s.insitu-75w-50s.sql

exit
