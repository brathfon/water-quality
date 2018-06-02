
DROP PROCEDURE IF EXISTS get_labs;

CREATE PROCEDURE get_labs()
SELECT
  lab_id,
  lab_code,
  long_name,
  short_name,
  address  
FROM labs;

DROP PROCEDURE IF EXISTS get_measurement_precision;

CREATE PROCEDURE get_measurement_precision()
SELECT
  measurement_name,
  number_of_decimals
FROM measurement_precision;

