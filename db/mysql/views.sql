use water_quality;

CREATE OR REPLACE VIEW lab_sessions_overview AS
select l.lab_id,
       l.lab_code,
       l.long_name,
       s.session_number,
       s.start_date
  from labs as l, sessions as s
  where l.lab_id = s.lab_id;
