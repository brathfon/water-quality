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
#mysql -v -u $user -p$pw $db < ../xfer/insert-data-sessions-1-63w-1-39w.no-legacy-test.sql
#mysql -v -u $user -p$pw $db < ../xfer/update-nutrient-data.legacy-update-test.sql
#mysql -v -u $user -p$pw $db < ../xfer/insert-webexport-legacy-data.4.nut-sample-taken-col.sql
mysql -v -u $user -p$pw $db < ../xfer/insert-data-sessions-1-70w-1-45s.0.sql
mysql -v -u $user -p$pw $db < ../xfer/update-nutrient-data.20200324.0.nutrient-66w-42s.insitu-70w-45s.sql

exit
