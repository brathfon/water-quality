DROP DATABASE IF EXISTS dev_water_quality;
CREATE DATABASE IF NOT EXISTS dev_water_quality;
USE dev_water_quality;

DROP USER IF EXISTS 'dev_wq_dba'@'localhost';
CREATE USER 'dev_wq_dba'@'localhost' IDENTIFIED WITH mysql_native_password BY 'dev_ntus';
GRANT all ON dev_water_quality.* TO 'dev_wq_dba'@'localhost';


DROP USER IF EXISTS 'dev_wq_user'@'localhost';
CREATE USER 'dev_wq_user'@'localhost' IDENTIFIED WITH mysql_native_password BY 'dev_ntus_user';
GRANT SELECT, INSERT, UPDATE, DELETE, EXECUTE ON dev_water_quality.* TO 'dev_wq_user'@'localhost';
