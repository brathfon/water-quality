
-- to get for from a particular date

use water_quality;

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
      date(ss.date_and_time) = "2017-10-03" and
      ss.site_id = s.site_id
order by ss.date_and_time
;
