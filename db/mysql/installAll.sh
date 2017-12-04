#mysql -v -u wq_dba -pntus < createTables.sql
mysql -v -u wq_dba -pntus < generated-schema-1.sql
mysql -v -u wq_dba -pntus < insertData.sql
mysql -v -u wq_dba -pntus < views.sql
mysql -v -u wq_dba -pntus < procedures.sql