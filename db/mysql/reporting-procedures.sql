-- This procedure is used to the the web export report for issuing data to others.
-- It does not report out data that has no nutrient data.  It assumes that there is
-- a date and a time since there should be one if any data was taken and there are
-- no empty samples.
DROP PROCEDURE IF EXISTS sample_report_for_lab;

delimiter //

CREATE PROCEDURE sample_report_for_lab(IN curr_lab_id INT)
BEGIN

  SELECT
    sample_id,
    lab_id,
    sampleID,
    long_name,
    hui_abv,
    session_number,
    the_date,
    the_time,
    temperature,
    salinity,
    dissolved_oxygen,
    dissolved_oxygen_pct,
    ph,
    avg_turbidity,
    total_nitrogen,
    total_phosphorus,
    phosphate,
    silicate,
    nitrates,
    ammonia,
    lat,
    lon
  FROM base_sample_report AS bsr
  WHERE bsr.lab_id = curr_lab_id
  AND NOT ( total_nitrogen     IS NULL AND 
            total_phosphorus IS NULL AND
            phosphate        IS NULL AND 
            silicate         IS NULL AND 
            nitrates         IS NULL AND 
            ammonia          IS NULL)
  ORDER BY session_number, the_date, the_time; 

END//

delimiter ;

-- This procedure will report out data that has no nutrient data.  It does
-- check to make sure it has a start date and time and at least some
-- insitu data.  This is to allow data that is awaiting nutrient data to
-- be reported out and also data will never have nutrient data collected
-- but did have insitu collected.

DROP PROCEDURE IF EXISTS sample_report_for_lab_with_null_nutrient;

delimiter //

CREATE PROCEDURE sample_report_for_lab_with_null_nutrient(IN curr_lab_id INT)
BEGIN

  SELECT
    sample_id,
    lab_id,
    sampleID,
    long_name,
    hui_abv,
    session_number,
    the_date,
    the_time,
    temperature,
    salinity,
    dissolved_oxygen,
    dissolved_oxygen_pct,
    ph,
    avg_turbidity,
    total_nitrogen,
    total_phosphorus,
    phosphate,
    silicate,
    nitrates,
    ammonia,
    lat,
    lon
  FROM base_sample_report AS bsr
  WHERE bsr.lab_id = curr_lab_id
  AND bsr.the_date IS NOT NULL
  AND bsr.the_time IS NOT NULL
  AND ( temperature          IS NOT NULL OR
        salinity             IS NOT NULL OR
        dissolved_oxygen     IS NOT NULL OR
        dissolved_oxygen_pct IS NOT NULL OR
        ph                   IS NOT NULL OR
        avg_turbidity        IS NOT NULL )
  ORDER BY session_number, the_date, the_time; 

END//

delimiter ;
