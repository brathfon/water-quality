use water_quality;

CREATE OR REPLACE VIEW lab_sessions_overview AS
SELECT l.lab_id,
       l.lab_code,
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
