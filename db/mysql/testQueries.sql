
-- to get for from a particular date

use water_quality;

select
  w.worker_id,
  w.first_name,
  w.last_name,
  w.salt,
  w.hash,
  wr.role_id
from workers w,
     worker_roles wr
where w.worker_id = wr.worker_id and
      w.email = 'root'
;
