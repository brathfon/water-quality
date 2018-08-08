DROP DATABASE IF EXISTS water_quality;
CREATE DATABASE IF NOT EXISTS water_quality;
USE water_quality;

DROP USER IF EXISTS 'wq_dba'@'localhost';
CREATE USER 'wq_dba'@'localhost' IDENTIFIED BY 'ntus';
GRANT all ON water_quality.* TO 'wq_dba'@'localhost';


DROP USER IF EXISTS 'wq_user'@'localhost';
CREATE USER 'wq_user'@'localhost' IDENTIFIED BY 'ntus_user';
GRANT SELECT, INSERT, UPDATE, DELETE, EXECUTE ON water_quality.* TO 'wq_user'@'localhost';
