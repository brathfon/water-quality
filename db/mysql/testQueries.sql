


use water_quality;

select
  CONCAT(site.hui_abv, DATE_FORMAT(sam.date_and_time, '%y%m%d')) as sampleID, -- returns as a string, should be safe from UTC conversion by mySQL node package
  sam.sample_id,
  site.hui_abv,
  DATE_FORMAT(sam.date_and_time, '%c/%e/%y') as day -- returns as a string, should be safe from UTC conversion by mySQL node package
from samples as sam,
     sites as site
where sam.site_id = site.site_id
order by site.hui_abv, sam.date_and_time; 

