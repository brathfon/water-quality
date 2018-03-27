#!/bin/bash

db=water_quality
user=wq_dba
pw=ntus


mysql -v -u $user -p$pw < generated-schema-nutrients.sql
mysql -v -u $user -p$pw < insertData.sql
mysql -v -u $user -p$pw $db < views.sql
mysql -v -u $user -p$pw $db < procedures.sql
mysql -v -u $user -p$pw $db < ../xfer/insert-webexport-legacy-data.sql
mysql -v -u $user -p$pw $db < ../xfer/insert-data-sessions-28-36-1-10.sql
#mysql -v -u $user -p$pw $db < ../xfer/update-nutrient-data.sql
mysql -v -u $user -p$pw $db < ../xfer/update-nutrient-data.20180323.sql
