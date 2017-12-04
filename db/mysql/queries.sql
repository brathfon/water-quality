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
  ss.site_sample_id,
  ss.site_id,
   s.long_name,
  cast(ss.date_and_time as char) as date_and_time,
  date(ss.date_and_time) as date,
  time(ss.date_and_time) as time,
  ss.lab_id,
  ss.session_number,
  ss.temperature,
  ss.salinity,
  ss.dissolved_oxygen,
  ss.dissolved_oxygen_pct,
  ss.ph,
  ss.turbidity_1,
  ss.turbidity_2,
  ss.turbidity_3,
  ss.comments
from site_samples as ss, sites as s
where ss.lab_id = 1 and
      ss.session_number = 28 and
      ss.site_id = s.site_id
order by ss.date_and_time
;


select
  ss.site_sample_id,
  ss.site_id,
  ssw.worker_id,
  w.first_name,
  w.last_name,
  date(ss.date_and_time) as date,
  time(ss.date_and_time) as time,
  ss.lab_id,
  ss.session_number
from site_samples as ss,
     site_sample_workers as ssw,
     workers as w
where ss.lab_id = 1 and
      ss.session_number = 28 and
      ss.site_sample_id = ssw.site_sample_id and
      w.worker_id = ssw.worker_id
order by ss.date_and_time
;


select distinct
  w.first_name,
  w.last_name,
  date(ss.date_and_time) as date
from site_samples as ss,
     site_sample_workers as ssw,
     workers as w
where ss.lab_id = 1 and
      ss.session_number = 28 and
      ss.site_sample_id = ssw.site_sample_id and
      w.worker_id = ssw.worker_id
order by date
;

