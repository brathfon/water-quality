
DROP PROCEDURE IF EXISTS get_max_session_numbers_for_labs;

CREATE PROCEDURE get_max_session_numbers_for_labs()
SELECT
  lab_id,
  lab_code,
  long_name,
  max_session_number
FROM max_session_numbers_for_labs;


-- just return a row if this session number is already in use for this lab
DROP PROCEDURE IF EXISTS is_session_number_in_use_for_lab;

CREATE PROCEDURE is_session_number_in_use_for_lab(in in_lab_id INT, in in_session_number INT)
SELECT
  session_id
FROM sessions
WHERE lab_id = in_lab_id and session_number = in_session_number;
      

-- just return a row if this first_sample_day is already in use for this lab
DROP PROCEDURE IF EXISTS is_first_sample_day_in_use_for_lab;

CREATE PROCEDURE is_first_sample_day_in_use_for_lab(in in_lab_id INT, in in_first_sample_day DATE)
SELECT
  session_id
FROM sessions
WHERE lab_id = in_lab_id and first_sample_day = in_first_sample_day;
      

DROP PROCEDURE IF EXISTS get_lab_sessions_overview;

CREATE PROCEDURE get_lab_sessions_overview()
SELECT
  lab_id,
  lab_code,
  short_name,
  long_name,
  session_number,
  first_sample_day
FROM lab_sessions_overview;

DROP PROCEDURE IF EXISTS samples_for_session;

CREATE PROCEDURE samples_for_session(IN curr_lab_id INT,IN curr_session_number INT)
select
  sam.sample_id,
  sam.site_id,
  site.long_name,
  site.hui_abv,
  cast(date(sam.date_and_time) AS char) AS the_date, -- this is to fix UTC conversion by mySQL node package
  time(sam.date_and_time) AS time,
  sess.lab_id,
  sess.session_number,
  sam.temperature,
  sam.salinity,
  sam.dissolved_oxygen,
  sam.dissolved_oxygen_pct,
  sam.ph,
  sam.turbidity_1,
  sam.turbidity_2,
  sam.turbidity_3,
  sam.total_nitrogen,
  sam.total_phosphorus,
  sam.phosphate,
  sam.silicate,
  sam.nitrates,
  sam.ammonia,
  sam.nitrate_last_run_date,
  sam.comments
from samples AS sam,
     sites AS site,
     sessions AS sess
where sess.lab_id = curr_lab_id and
      sess.session_number = curr_session_number and
      sess.session_id = sam.session_id and
      sam.site_id = site.site_id
order by site.default_session_order; -- ignore time, just order by the usual order of collection


DROP PROCEDURE IF EXISTS get_samples_for_session_on_date;

CREATE PROCEDURE get_samples_for_session_on_date(IN curr_lab_id INT,IN curr_session_number INT, IN curr_date DATE)
select
  sam.sample_id,
  sam.site_id,
  site.long_name,
  site.hui_abv,
  cast(date(sam.date_and_time) AS char) AS the_date, -- this is to fix UTC conversion by mySQL node package
  time(sam.date_and_time) AS time,
  sess.lab_id,
  sess.session_number,
  sam.temperature,
  sam.salinity,
  sam.dissolved_oxygen,
  sam.dissolved_oxygen_pct,
  sam.ph,
  sam.turbidity_1,
  sam.turbidity_2,
  sam.turbidity_3,
  sam.total_nitrogen,
  sam.total_phosphorus,
  sam.phosphate,
  sam.silicate,
  sam.nitrates,
  sam.ammonia,
  sam.nitrate_last_run_date,
  sam.comments
from samples AS sam,
     sites AS site,
     sessions AS sess
where sess.lab_id = curr_lab_id and
      sess.session_number = curr_session_number and
      sess.session_id = sam.session_id and
      date(sam.date_and_time) = curr_date and
      sam.site_id = site.site_id
order by site.default_session_order; -- ignore time, just order by the usual order of collection


DROP PROCEDURE IF EXISTS get_in_situ_samples_for_session_on_date;

CREATE PROCEDURE get_in_situ_samples_for_session_on_date(IN curr_lab_id INT,IN curr_session_number INT, IN curr_date DATE)
select
  sam.sample_id,
  sam.site_id,
  site.long_name,
  site.hui_abv,
  cast(date(sam.date_and_time) AS char) AS the_date, -- this is to fix UTC conversion by mySQL node package
  time(sam.date_and_time) AS time,
  sess.lab_id,
  sess.session_number,
  sam.temperature,
  sam.salinity,
  sam.dissolved_oxygen,
  sam.dissolved_oxygen_pct,
  sam.ph,
  sam.turbidity_1,
  sam.turbidity_2,
  sam.turbidity_3,
  sam.comments
from samples AS sam,
     sites AS site,
     sessions AS sess
where sess.lab_id = curr_lab_id and
      sess.session_number = curr_session_number and
      sess.session_id = sam.session_id and
      date(sam.date_and_time) = curr_date and
      sam.site_id = site.site_id
order by site.default_session_order; -- ignore time, just order by the usual order of collection


DROP PROCEDURE IF EXISTS get_nutrient_samples_for_session_on_date;

CREATE PROCEDURE get_nutrient_samples_for_session_on_date(IN curr_lab_id INT,IN curr_session_number INT, IN curr_date DATE)
select
  sam.sample_id,
  sam.site_id,
  site.long_name,
  site.hui_abv,
  cast(date(sam.date_and_time) AS char) AS the_date, -- this is to fix UTC conversion by mySQL node package
  time(sam.date_and_time) AS time,
  sess.lab_id,
  sess.session_number,
  sam.total_nitrogen,
  sam.total_phosphorus,
  sam.phosphate,
  sam.silicate,
  sam.nitrates,
  sam.ammonia,
  sam.nitrate_last_run_date,
  sam.comments
from samples AS sam,
     sites AS site,
     sessions AS sess
where sess.lab_id = curr_lab_id and
      sess.session_number = curr_session_number and
      sess.session_id = sam.session_id and
      date(sam.date_and_time) = curr_date and
      sam.site_id = site.site_id
order by site.default_session_order; -- ignore time, just order by the usual order of collection



DROP PROCEDURE IF EXISTS create_session;

delimiter //

CREATE PROCEDURE create_session(IN curr_lab_id INT,IN curr_session_number INT,IN curr_session_date DATE)
BEGIN

  DECLARE exit handler FOR sqlexception
  BEGIN
    SHOW ERRORS;
    ROLLBACK;
  END;

  START TRANSACTION;
  INSERT INTO sessions (
    lab_id,
    session_number,
    first_sample_day)
   VALUES (curr_lab_id, curr_session_number, curr_session_date);

  INSERT INTO samples (
    site_id,
    date_and_time,
    session_id)
      SELECT
        si.site_id,
        DATE_ADD(curr_session_date, INTERVAL (si.default_sample_day - 1 ) DAY),
        se.session_id
      FROM sites AS si,
           sessions AS se
      WHERE si.lab_id = curr_lab_id
      AND   si.lab_id = se.lab_id
      AND   si.active = 1
      AND   se.session_number = curr_session_number;
  COMMIT;
END//

delimiter ;
