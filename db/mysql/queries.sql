use water_quality;

select l.lab_id,
       l.lab_code,
       l.long_name,
       s.session_number,
       s.first_sample_day
  from labs as l, sessions as s
  where l.lab_id = s.lab_id
  order by lab_code, first_sample_day;


select 
  ss.sample_id,
  ss.site_id,
   s.long_name,
  cast(ss.date_and_time as char) as date_and_time,
  date(ss.date_and_time) as date,
  time(ss.date_and_time) as time,
  ss.session_id,
  ss.temperature,
  ss.salinity,
  ss.dissolved_oxygen,
  ss.dissolved_oxygen_pct,
  ss.ph,
  ss.turbidity_1,
  ss.turbidity_2,
  ss.turbidity_3,
  ss.comments
from samples as ss,
     sessions as se,
     sites as s
where se.lab_id = 1 and
      se.session_number = 28 and
      se.session_id = ss.session_id and
      ss.site_id = s.site_id
order by ss.date_and_time
;


select
  ss.sample_id,
  ss.site_id,
  ssw.worker_id,
  w.first_name,
  w.last_name,
  date(ss.date_and_time) as date,
  time(ss.date_and_time) as time,
  ss.session_id,
  se.session_number
from samples as ss,
     sessions as se,
     sample_workers as ssw,
     workers as w
where se.lab_id = 1 and
      se.session_number = 28 and
      ss.session_id = se.session_id and
      ss.sample_id = ssw.sample_id and
      w.worker_id = ssw.worker_id
order by ss.date_and_time
;


select distinct
  w.first_name,
  w.last_name,
  date(ss.date_and_time) as date
from samples as ss,
     sessions as se,
     sample_workers as ssw,
     workers as w
where se.lab_id = 1 and
      se.session_number = 28 and
      se.session_id = ss.session_id and
      ss.sample_id = ssw.sample_id and
      w.worker_id = ssw.worker_id
order by date
;

select
  w.first_name,
  w.initials,
  w.last_name,
  tm.worker_id,
  tm.team_id,
  s.site_id
from teams as t,
     team_members as tm,
     workers as w,
     sites as s
where w.worker_id = tm.worker_id and
      t.team_id = tm.team_id and
      s.team_id = tm.team_id and
      s.site_id = 7
order by tm.team_id, tm.worker_id, w.last_name, w.first_name, w.initials
;

select
  w.first_name,
  w.initials,
  w.last_name,
  tm.worker_id,
  t.lab_id
from teams as t,
     team_members as tm,
     workers as w
where w.worker_id = tm.worker_id and
      t.team_id = tm.team_id and
      t.lab_id = 2
order by w.last_name, w.first_name, w.initials
;

SELECT
  sess.lab_id,
  sam.sample_id,
  site.long_name,
  CONCAT(site.hui_abv, DATE_FORMAT(sam.date_and_time, '%y%m%d')) as sampleID, -- returns as a string, should be safe from UTC conversion by mySQL node package
  sess.session_number,
  DATE_FORMAT(sam.date_and_time, '%m/%d/%y') as day, -- (mm:dd:yy) returns as a string, should be safe from UTC conversion by mySQL node package
  DATE_FORMAT(sam.date_and_time, '%H:%i') as time,   -- (mm:ss) 08:58, 10:10
  qis.sample_column_name,
  qis.description
FROM samples AS sam,
      sites AS site,
     sessions AS sess,
     qa_issue_samples AS qis
WHERE sess.session_id = sam.session_id and
      sam.site_id = site.site_id AND
      sam.sample_id = qis.sample_id
ORDER BY sess.lab_id, sess.session_number, sam.date_and_time; -- by lab, session, then time
