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
mysql -v -u $user -p$pw $db < ../xfer/insert-data-sessions-1-94w-1-69s.0.sql
mysql -v -u $user -p$pw $db < ../xfer/update-nutrient-data.20211021.0.nutrient-94w-69s.insitu-94w-69s.sql

exit
