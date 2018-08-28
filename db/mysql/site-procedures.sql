
DROP PROCEDURE IF EXISTS get_sites_overview;

CREATE PROCEDURE get_sites_overview()
SELECT
  site_id,
  hui_abv,
  storet_code,
  long_name,
  lab_id,
  default_sample_day,
  default_sampling_order,
  geo_order,
  lat,
  lon,
  active,
  description
FROM sites
ORDER by lab_id, default_sample_day, ISNULL(default_sampling_order), default_sampling_order; -- puts the NULL default_sampling_order at the end


DROP PROCEDURE IF EXISTS get_site_details;

CREATE PROCEDURE get_site_details(in in_site_id INT)
SELECT
  site_id,
  hui_abv,
  storet_code,
  long_name,
  lab_id,
  default_sample_day,
  default_sampling_order,
  geo_order,
  lat,
  lon,
  active,
  description
FROM sites
WHERE site_id = in_site_id;
