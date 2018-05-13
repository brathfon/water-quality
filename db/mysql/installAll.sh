#!/bin/bash

db=water_quality
user=wq_dba
pw=ntus


#mysql -v -u $user -p$pw < generated-schema-4.worker-changes.sql
mysql -v -u $user -p$pw < generated-schema-5.gui-changes.sql
mysql -v -u $user -p$pw < insertData.sql
mysql -v -u $user -p$pw $db < views.sql
mysql -v -u $user -p$pw $db < auth-procedures.sql
mysql -v -u $user -p$pw $db < reporting-procedures.sql
mysql -v -u $user -p$pw $db < session-procedures.sql
mysql -v -u $user -p$pw $db < lookup-procedures.sql
mysql -v -u $user -p$pw $db < utility-procedures.sql
mysql -v -u $user -p$pw $db < ../xfer/insert-webexport-legacy-data.sql
mysql -v -u $user -p$pw $db < ../xfer/insert-data-sessions-28-36-1-10.post-worker-changes.sql
mysql -v -u $user -p$pw $db < ../xfer/update-nutrient-data.20180402.sessions-thru-33w-6s.sql
exit
