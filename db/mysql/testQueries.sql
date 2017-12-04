

use water_quality;

select t.team_code,
       w.first_name,
       w.last_name,
       w.initials
from workers as w,
     team_members as tm,
     teams as t
where w.worker_id = tm.worker_id
and   t.team_id   = tm.team_id
order by tm.team_id,
         w.last_name
;