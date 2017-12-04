DROP DATABASE IF EXISTS water_quality;
CREATE DATABASE IF NOT EXISTS water_quality;
USE water_quality;

DROP USER IF EXISTS 'wq_dba'@'localhost';

CREATE USER 'wq_dba'@'localhost' IDENTIFIED BY 'ntus';

grant all on water_quality.* to 'wq_dba'@'localhost';