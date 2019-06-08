#!/bin/bash

db=$DB_DATABASE
user=$DB_DBA
pw=$DB_DBA_PASSWORD


mysql -v -u $user -p$pw $db < generated-schema-10.1.no-drop-schema.sql
mysql -v -u $user -p$pw $db < views.sql
mysql -v -u $user -p$pw $db < auth-procedures.sql
mysql -v -u $user -p$pw $db < reporting-procedures.sql
mysql -v -u $user -p$pw $db < session-procedures.sql
mysql -v -u $user -p$pw $db < site-procedures.sql
mysql -v -u $user -p$pw $db < lookup-procedures.sql
mysql -v -u $user -p$pw $db < utility-procedures.sql
mysql -v -u $user -p$pw $db < insertData.sql
mysql -v -u $user -p$pw $db < ../xfer/insert-webexport-legacy-data.3.add-sampling-order.sql
mysql -v -u $user -p$pw $db < ../xfer/insert-data-sessions-28-56-1-32.0.sql
mysql -v -u $user -p$pw $db < ../xfer/update-nutrient-data.20190604.0.nutrient-52w-27s.insitu-56s-32s.sql

exit
