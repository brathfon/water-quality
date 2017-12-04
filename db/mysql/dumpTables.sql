use water_quality;

select * from  workers;

select * from  labs;

select * from  teams;

select * from  team_members;

select 
  site_id,
  hui_code,
  hui_abv,
  storet_code,
  long_name,
  lab_id,
  team_id,
  default_sample_day as ds_day,
  lat,
  lon,
  description des
from sites;

select * from sessions;

select * from site_samples;

select * from qa_codes;

select 
  site_sample_id,
  site_id,
  date_and_time,
  moon,
  qa_code,
  lab_id,
  session_number as sess_num,
  temperature as temp,
  salinity,
  dissolved_oxygen as do,
  dissolved_oxygen_pct as do_pct,
  ph,
  turbidity_1 as turb_1,
  turbidity_2 as turb_2,
  turbidity_3 as turb_3,
  commments
from site_samples;

select * from site_sample_workers order by site_sample_id;

