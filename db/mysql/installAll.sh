#!/bin/bash

db=water_quality
user=wq_dba
pw=ntus


#mysql -v -u wq_dba -p$pw < generated-schema-2.sql
mysql -v -u $user -p$pw < generated-schema-nutrients.sql
mysql -v -u $user -p$pw < insertData.sql
mysql -v -u $user -p$pw < views.sql
mysql -v -u $user -p$pw < procedures.sql
mysql -v -u $user -p$pw $db < ../xfer/insert-webexport-legacy-data.sql
mysql -v -u $user -p$pw $db < ../xfer/insert-data-sessions-28-35-1-8.sql
mysql -v -u $user -p$pw $db < ../xfer/update-nutrient-data.sql
