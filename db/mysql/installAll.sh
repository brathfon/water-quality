#mysql -v -u wq_dba -pntus < generated-schema-2.sql
mysql -v -u wq_dba -pntus < generated-schema-nutrients.sql
mysql -v -u wq_dba -pntus < insertData.sql
mysql -v -u wq_dba -pntus < views.sql
mysql -v -u wq_dba -pntus < procedures.sql
#mysql -v -u wq_dba -pntus < ../xfer/insert-data-sessions-28-30-1-2.sql
#mysql -v -u wq_dba -pntus < ../xfer/insert-data-sessions-28-33-1-6.2.sql
#mysql -v -u wq_dba -pntus < ../xfer/insert-data-sessions-28-35-1-8.sql
