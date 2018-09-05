
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


DROP PROCEDURE IF EXISTS update_site;

CREATE PROCEDURE update_site(
  in in_site_id INT,
  in in_hui_abv CHAR(3),
  in in_storet_code CHAR(6),
  in in_long_name VARCHAR(32),
  in in_lab_id INT,
  in in_default_sample_day INT,
  in in_lat DOUBLE,
  in in_lon DOUBLE,
  in in_active TINYINT(1),
  in in_description VARCHAR(256) )
UPDATE sites SET
    hui_abv = in_hui_abv,
    storet_code = in_storet_code,
    long_name = in_long_name,
    lab_id = in_lab_id,
    default_sample_day = in_default_sample_day,
    lat = in_lat,
    lon = in_lon,
    active = in_active,
    description = in_description
WHERE site_id = in_site_id;


DROP PROCEDURE IF EXISTS insert_site;

CREATE PROCEDURE insert_site(
  in in_hui_abv CHAR(3),
  in in_storet_code CHAR(6),
  in in_long_name VARCHAR(32),
  in in_lab_id INT,
  in in_default_sample_day INT,
  in in_lat DOUBLE,
  in in_lon DOUBLE,
  in in_active TINYINT(1),
  in in_description VARCHAR(256) )

INSERT INTO sites (
  hui_abv,
  storet_code,
  long_name,
  lab_id,
  default_sample_day,
  lat,
  lon,
  active,
  description)
VALUES (
  in_hui_abv,
  in_storet_code,
  in_long_name,
  in_lab_id,
  in_default_sample_day,
  in_lat,
  in_lon,
  in_active,
  in_description );

DROP PROCEDURE IF EXISTS delete_site;

CREATE PROCEDURE delete_site( in in_site_id INT)
DELETE FROM sites WHERE site_id = in_site_id;
