use water_quality;


DROP PROCEDURE IF EXISTS samples_for_session;

CREATE PROCEDURE samples_for_session(IN curr_lab_id INT,IN curr_session_number INT)
select
  sam.sample_id,
  sam.site_id,
  site.long_name,
  date(sam.date_and_time) as date,
  cast(date(sam.date_and_time) as char) as date, -- this is to fix UTC conversion by mySQL node package
  time(sam.date_and_time) as time,
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
from samples as sam,
     sites as site,
     sessions as sess
where sess.lab_id = curr_lab_id and
      sess.session_number = curr_session_number and
      sess.session_id = sam.session_id and
      sam.site_id = site.site_id
order by sam.date_and_time;


DROP PROCEDURE IF EXISTS workers_for_session;

CREATE PROCEDURE workers_for_session(IN curr_lab_id INT,IN curr_session_number INT)
select distinct
  w.first_name,
  w.last_name,
  cast(date(sam.date_and_time) as char) as date
from samples as sam,
     sample_workers as sw,
     workers as w,
     sessions as sess
where sess.lab_id = curr_lab_id and
      sess.session_number = curr_session_number and
      sess.session_id = sam.session_id and
      sam.sample_id = sw.sample_id and
      w.worker_id = sw.worker_id
order by date, last_name, first_name
;

