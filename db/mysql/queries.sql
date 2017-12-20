use water_quality;

select l.lab_id,
       l.lab_code,
       l.long_name,
       s.session_number,
       s.start_date
  from labs as l, sessions as s
  where l.lab_id = s.lab_id
  order by lab_code, start_date;


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

