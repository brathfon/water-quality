
CREATE OR REPLACE VIEW lab_sessions_overview AS
SELECT l.lab_id,
       l.lab_code,
       l.short_name,
       l.long_name,
       s.session_number,
       s.start_date
  FROM labs AS l, sessions AS s
  WHERE l.lab_id = s.lab_id
  ORDER BY l.lab_code, s.session_number;


CREATE OR REPLACE VIEW max_session_numbers_for_labs AS
SELECT 
  s.lab_id,
  l.lab_code,
  l.long_name,
  max(s.session_number) as max_session_number
FROM sessions AS s, labs AS l
WHERE s.lab_id = l.lab_id
GROUP BY lab_id;


-- a base view that can be used to create many of the reports needed.  All columns might not be used
CREATE OR REPLACE VIEW base_sample_report AS
SELECT
  sess.lab_id,
  sam.sample_id,
  CONCAT(site.hui_abv, DATE_FORMAT(sam.date_and_time, '%y%m%d')) as sampleID, -- returns as a string, should be safe from UTC conversion by mySQL node package
  site.long_name,
  site.hui_abv,
  sess.session_number,
  DATE_FORMAT(sam.date_and_time, '%m/%d/%y') as day, -- (mm:dd:yy) returns as a string, should be safe from UTC conversion by mySQL node package
  DATE_FORMAT(sam.date_and_time, '%H:%i') as time,   -- (mm:ss) 08:58, 10:10
  REPLACE(FORMAT(sam.temperature,      1), ' ', '')      AS temperature,  -- REPLACE takes out an commas in numbers
  REPLACE(FORMAT(sam.salinity,         1), ' ', '')      AS salinity,
  REPLACE(FORMAT(sam.dissolved_oxygen, 2), ' ', '')      AS dissolved_oxygen,
  REPLACE(FORMAT(sam.dissolved_oxygen_pct, 2), ' ', '')  AS dissolved_oxygen_pct,
  REPLACE(FORMAT(sam.ph, 2), ' ', '')           AS ph,
  REPLACE(FORMAT(sam.turbidity_1, 2), ' ', '')  AS turbidity_1,
  REPLACE(FORMAT(sam.turbidity_2, 2), ' ', '')  AS turbidity_2,
  REPLACE(FORMAT(sam.turbidity_3, 2), ' ', '')  AS turbidity_3,
  REPLACE(FORMAT(ROUND(((sam.turbidity_1 + sam.turbidity_2 + sam.turbidity_3) / 3.0), 2), 2), ' ', '') AS avg_turbidity,
  REPLACE(FORMAT(sam.total_nitrogen,   2), ' ', '')     AS total_nitrogen,
  REPLACE(FORMAT(sam.total_phosphorus, 2), ' ', '')     AS total_phosphorus,
  REPLACE(FORMAT(sam.phosphate,        2), ' ', '')     AS phosphate,
  REPLACE(FORMAT(sam.silicate, 2), ',', '')     AS silicate,
  REPLACE(FORMAT(sam.nitrates, 2), ',', '')     AS nitrates,
  REPLACE(FORMAT(sam.ammonia,          2), ' ', '')     AS ammonia,
  REPLACE(FORMAT(site.lat,             6), ' ', '')     AS lat,
  REPLACE(FORMAT(site.lon,             6), ' ', '')     AS lon
FROM samples AS sam,
      sites AS site,
     sessions AS sess
WHERE sess.session_id = sam.session_id and
      sam.site_id = site.site_id
ORDER BY sess.lab_id, sam.date_and_time; -- by lab, then time


-- this view is used for data migration
CREATE OR REPLACE VIEW site_and_date_to_sample_id_lookup AS
SELECT
  CONCAT(site.hui_abv, DATE_FORMAT(sam.date_and_time, '%y%m%d')) as site_and_date, -- returns as a string, should be safe from UTC conversion by mySQL node package
  sam.sample_id,
  site.hui_abv,
  DATE_FORMAT(sam.date_and_time, '%c/%e/%y') as day -- returns as a string, should be safe from UTC conversion by mySQL node package
FROM samples AS sam,
     sites AS site
WHERE sam.site_id = site.site_id
ORDER BY site.hui_abv, sam.date_and_time; 

-- this view is used for data migration
CREATE OR REPLACE VIEW known_sites AS
SELECT
  site.hui_abv,
  site.long_name
FROM sites AS site
ORDER BY site.hui_abv; 


CREATE OR REPLACE VIEW diff_report AS
SELECT
  lab_id,
  sampleID,
  long_name,
  hui_abv,
  session_number,
  day,
  time,
  temperature,
  salinity,
  dissolved_oxygen,
  dissolved_oxygen_pct,
  ph,
  turbidity_1,
  turbidity_2,
  turbidity_3,
  avg_turbidity,
  total_nitrogen,
  total_phosphorus,
  phosphate,
  silicate,
  nitrates,
  ammonia,
  lat,
  lon
FROM base_sample_report
ORDER BY lab_id, session_number, day, time;
