

-- special case for the root user that will have permissions to do all.
-- email will be used as the login
INSERT INTO users (first_name, last_name, initials, email, phone_number, salt, hash) values
   ('root', 'root', '99', 'root', null,
   '014f8f5784eaeee325fbaf29b8170871',
   'bed6ea8f4cae38603163ef5f7fa320a85bc07382c73066de935de1b8f29cd6c5e9e8d0473a657789f3f8ad2e95b2a083d258cb436176078b09e7797751ae58e3');

INSERT INTO users (first_name, last_name, initials, email, phone_number, salt, hash) values
   ('The', 'Guest', 'G', "guest", null,
   'c7a2626abc7a1d37dd8d9634545df480',
   '2ebad3ac4f62132691f97be50f20f443e33e30747506f7d27b81b8b55b3e99d2d10f32d27c8f76fca2cd184c5427993103e3b12f66fabe252bb76407b518ac52');

-- these users will not have an initial pw at least for now
INSERT INTO users (first_name, last_name, initials, email, phone_number) values ('Cathy', 'Maxwell', 'CM', 'jandcmax@gmail.com', '808-456-1234'); -- 3
INSERT INTO users (first_name, last_name, initials, email, phone_number) values ('Dana', 'Reed', 'DR', 'dreedyah@yahoo.com', '720-567-3412'); -- 4
INSERT INTO users (first_name, last_name, initials, email, phone_number) values ('George', 'Burnette', 'GB', 'ggb7676@gmail.com', null); -- 5
INSERT INTO users (first_name, last_name, initials, email, phone_number) values ('Bill', 'Rathfon', 'BR', 'brathfon@gmail.com', null); -- 6
INSERT INTO users (first_name, last_name, initials, email, phone_number) values ('Sofia', 'de laSota', 'SD', 'delasota@hawaii.edu', null); -- 7

-- labs

INSERT INTO labs (lab_code, long_name, short_name, address) values ('LLHS', 'Lahainaluna High School', 'West Maui', 'Lahainaluna Road');
INSERT INTO labs (lab_code, long_name, short_name, address) values ('NMS', 'National Marine Sanctuary', 'South Maui',  'South Kihei Road');


-- Roles information
INSERT INTO roles (abrv, long_name) VALUES ( 'ADM', 'Administration');
INSERT INTO roles (abrv, long_name) VALUES ( 'DE', 'Data Entry');
INSERT INTO roles (abrv, long_name) VALUES ( 'DV', 'Data Verification');
INSERT INTO roles (abrv, long_name) VALUES ( 'QA', 'Quality Assurance');
INSERT INTO roles (abrv, long_name) VALUES ( 'RO', 'Read Only');   -- in case we want to let someone look at the data as entered


INSERT INTO user_roles (user_id, role_id) VALUES ( 1, 1);  -- initial root user who has admin privileges
INSERT INTO user_roles (user_id, role_id) VALUES ( 1, 2);  -- this value is more for testing, giving root DE privs
INSERT INTO user_roles (user_id, role_id) VALUES ( 2, 5);  -- guest, read only`


-- R2RS
INSERT INTO sites (hui_abv , storet_code, long_name,               lab_id, default_sample_day, default_sampling_order, lat,       lon,         active,  description)
  values (        'RNS',     '000723',   'Napili',                 1,      1,                  1,                     20.994222, -156.667417, 1,       null);
INSERT INTO sites (hui_abv , storet_code, long_name,               lab_id, default_sample_day, default_sampling_order, lat,       lon,         active,  description)
  values (        'RPO',     '000724',   'Pohaku',                 1,      1,                  2,                     20.967083, -156.68139,  1,       null);
INSERT INTO sites (hui_abv , storet_code, long_name,               lab_id, default_sample_day, default_sampling_order, lat,       lon,         active,  description)
  values (        'RKS',      null,      'Kaanapali Shores',       1,      1,                  3,                     20.949331, -156.691124, 1,       null);
-- see addition of RKT below
INSERT INTO sites (hui_abv , storet_code, long_name,               lab_id, default_sample_day, default_sampling_order, lat,       lon,         active,  description)
  values (        'RAB',     '000695',    'Airport Beach',         1,      1,                  NULL,                  20.936669, -156.69278,  0,       null);
INSERT INTO sites (hui_abv , storet_code, long_name,               lab_id, default_sample_day, default_sampling_order, lat,       lon,         active,  description)
  values (        'RCB',     '000693',    'Canoe Beach',           1,      1,                  5,                     20.910347, -156.689382, 1,       null);
INSERT INTO sites (hui_abv , storet_code, long_name,               lab_id, default_sample_day, default_sampling_order, lat,       lon,         active,  description)
  values (        'RWA',     '000678',    'Wahikuli',              1,      1,                  6,                     20.904476, -156.685931, 1,       null);

-- Polanui
INSERT INTO sites (hui_abv , storet_code, long_name,               lab_id, default_sample_day, default_sampling_order, lat,       lon,         active,  description)
  values (         'PFF',    null,       '505 Front Street',       1,      2,                  1,                     20.86732,  -156.67605,  1,       null);
INSERT INTO sites (hui_abv , storet_code, long_name,               lab_id, default_sample_day, default_sampling_order, lat,       lon,         active,  description)
  values (         'PLH',    null,       'Lindsey Hale',           1,      2,                  2,                     20.86485,  -156.67374,  1,       null);
INSERT INTO sites (hui_abv , storet_code, long_name,               lab_id, default_sample_day, default_sampling_order, lat,       lon,         active,  description)
  values (         'PLT',    '000726',   'Lahaina Town',           1,      2,                  3,                     20.86356,  -156.67297,  1,       null);
INSERT INTO sites (hui_abv , storet_code, long_name,               lab_id, default_sample_day, default_sampling_order, lat,       lon,         active,  description)
  values (         'PPU',    null,       'Makila Point',           1,      2,                  NULL,                  20.859233, -156.669442, 0,       null);
INSERT INTO sites (hui_abv , storet_code, long_name,               lab_id, default_sample_day, default_sampling_order, lat,       lon,         active,  description)
  values (         'OLP',    null,       'Launiupoko',             1,      2,                  NULL,                  20.84236,  -156.653035, 0,       null);
INSERT INTO sites (hui_abv , storet_code, long_name,               lab_id, default_sample_day, default_sampling_order, lat,       lon,         active,  description)
  values (         'OSF',   '000663',     'Olowalu Shore Front',   1,      2,                  NULL,                  20.80916,  -156.62289,  0,       null);

-- Olowalu
INSERT INTO sites (hui_abv , storet_code, long_name,               lab_id, default_sample_day, default_sampling_order, lat,       lon,         active,  description)
 values (          'OPM',    null,        'Peter Martin Hale',     1,      3,                  NULL,                  20.808444, -156.619697, 0,       null);
-- moved to day 2
INSERT INTO sites (hui_abv , storet_code, long_name,               lab_id, default_sample_day, default_sampling_order, lat,       lon,         active,  description)
 values (          'OCO',    null,        'Camp Olowalu',          1,      2,                  4,                     20.80986,  -156.61369,  1,       null);
INSERT INTO sites (hui_abv , storet_code, long_name,               lab_id, default_sample_day, default_sampling_order, lat,       lon,         active,  description)
 values (          'OMM',    null,        'Mile Marker 14',        1,      3,                  NULL,                  20.80915,  -156.60661,  0,       null);
INSERT INTO sites (hui_abv , storet_code, long_name,               lab_id, default_sample_day, default_sampling_order, lat,       lon,         active,  description)
 values (          'OUB',    '000698',    'Ukumehame Beach',       1,      3,                  NULL,                  20.79448,  -156.58142,  0,       null);
INSERT INTO sites (hui_abv , storet_code, long_name,               lab_id, default_sample_day, default_sampling_order, lat,       lon,         active,  description)
 values (          'OPB',    '000728',    'Papalaua',              1,      3,                  NULL,                  20.793809, -156.575211, 0,       null);
-- moved to day 2
INSERT INTO sites (hui_abv , storet_code, long_name,               lab_id, default_sample_day, default_sampling_order, lat,       lon,         active,  description)
 values (          'OPP',     null,       'Papalaua Pali',         1,      2,                  5,                     20.792747, -156.567326, 1,       null);

-- NR2R
INSERT INTO sites (hui_abv , storet_code, long_name,                 lab_id, default_sample_day, default_sampling_order, lat,       lon,         active,  description)
  values (         'RHL',    '000707',    'Honolua',                 1,      3,                  1,                   21.013058, -156.63834,  1,       null);
-- Mokuleia was only sampled once on 6/23/17, so is currently inactive.  If reactivated, default_sampling_order will need to shift
INSERT INTO sites (hui_abv , storet_code, long_name,                 lab_id, default_sample_day, default_sampling_order, lat,       lon,         active,  description)
    values (         'RMO',  '000721',    'Mokuleia',                1,      4,                  NULL,                21.011352, -156.64227,  0,       null);
INSERT INTO sites (hui_abv , storet_code, long_name,                 lab_id, default_sample_day, default_sampling_order, lat,       lon,         active,  description)
  values (         'RFN',    '000674',    'DT Beach (Fleming N)',    1,      4,                  NULL,                21.005,    -156.65084,  0,       null);
INSERT INTO sites (hui_abv , storet_code, long_name,                 lab_id, default_sample_day, default_sampling_order, lat,       lon,         active,  description)
  values (         'RON',    '000722',    'Oneloa',                  1,      3,                  2,                   21.004056, -156.65894,  1,       null);
INSERT INTO sites (hui_abv , storet_code, long_name,                 lab_id, default_sample_day, default_sampling_order, lat,       lon,         active,  description)
  values (         'RFS',    '000650',    'Kapalua Bay (Fleming S)', 1,      3,                  3,                   20.998924, -156.666746, 1,       null);
INSERT INTO sites (hui_abv , storet_code, long_name,                 lab_id, default_sample_day, default_sampling_order, lat,       lon,         active,  description)
  values (         'RKO',    '000692',    'Ka\'opala',               1,      3,                  4,                   20.982074, -156.673398, 1,       null);
INSERT INTO sites (hui_abv , storet_code, long_name,                 lab_id, default_sample_day, default_sampling_order, lat,       lon,         active,  description)
  values (         'RKV',    null,        'Kahana Village',          1,      3,                  5,                   20.976561, -156.678,    1,       null);

-- NMS lab
-- Kamaole
-- NOTE: NKN Kalepolepo is the first site in on this day, but was moved from another day.  Did not move it in file so ID's don't change.
INSERT INTO sites (hui_abv , storet_code, long_name,                 lab_id, default_sample_day, default_sampling_order, lat,       lon,         active,  description)
  values (         'KWP',    '000713',    'Waipuilani Park',         2,      1,                  2,                     20.755056, -156.459602, 1,       null);
INSERT INTO sites (hui_abv , storet_code, long_name,                 lab_id, default_sample_day, default_sampling_order, lat,       lon,         active,  description)
  values (         'KKS',    '000676',    'Kihei South (Lipoa)',     2,      1,                  3,                     20.747334, -156.457881, 1,       null);
INSERT INTO sites (hui_abv , storet_code, long_name,                 lab_id, default_sample_day, default_sampling_order, lat,       lon,         active,  description)
  values (         'KKP',    '000679',    'Kalama Park',             2,      1,                  4,                     20.730973, -156.45372,  1,       null);
INSERT INTO sites (hui_abv , storet_code, long_name,                 lab_id, default_sample_day, default_sampling_order, lat,       lon,         active,  description)
  values (         'KCP',    '000703',    'Cove Park',               2,      1,                  5,                     20.727434, -156.450077, 1,       null);
INSERT INTO sites (hui_abv , storet_code, long_name,                 lab_id, default_sample_day, default_sampling_order, lat,       lon,         active,  description)
  values (         'KKO',    '000681',    'Kamaole Beach I',         2,      1,                  NULL,                  20.721985, -156.448183, 0,       null);
INSERT INTO sites (hui_abv , storet_code, long_name,                 lab_id, default_sample_day, default_sampling_order, lat,       lon,         active,  description)
  values (         'KKT',    '000683',    'Kamaole Beach III',       2,      1,                  NULL,                  20.712908, -156.446596, 0,       null);
-- day 6 is NMP, which was in North Kihei team but now be collected on day 1 with Kamaole team

-- Makena 
INSERT INTO sites (hui_abv , storet_code, long_name,                 lab_id, default_sample_day, default_sampling_order, lat,       lon,         active,  description)
  values (         'MML',    NULL,        'Makena Landing',          2,      2,                  NULL,                  20.653913, -156.441174, 0,       null);
INSERT INTO sites (hui_abv , storet_code, long_name,                 lab_id, default_sample_day, default_sampling_order, lat,       lon,         active,  description)
  values (         'MMB',    NULL,        'Maluaka Beach',           2,      2,                  4,                     20.645598, -156.443859, 1,       null);
INSERT INTO sites (hui_abv , storet_code, long_name,                 lab_id, default_sample_day, default_sampling_order, lat,       lon,         active,  description)
  values (         'MON',    NULL,        'Oneuli',                  2,      2,                  NULL,                  20.639866, -156.447406, 0,       null);
INSERT INTO sites (hui_abv , storet_code, long_name,                 lab_id, default_sample_day, default_sampling_order, lat,       lon,         active,  description)
  values (         'MBS',    NULL,        'Makena Beach Shoreline',  2,      2,                  NULL,                  20.63061,  -156.446183, 0,       null);
INSERT INTO sites (hui_abv , storet_code, long_name,                 lab_id, default_sample_day, default_sampling_order, lat,       lon,         active,  description)
  values (         'MAN',    NULL,        'Ahihi North',             2,      2,                  5,                     20.618366, -156.437572, 1,       null);
INSERT INTO sites (hui_abv , storet_code, long_name,                 lab_id, default_sample_day, default_sampling_order, lat,       lon,         active,  description)
  values (         'MAS',    NULL,        'Ahihi South',             2,      2,                  5,                     20.6138,   -156.436853, 1,       null);

-- North Kihei
INSERT INTO sites (hui_abv , storet_code, long_name,               lab_id, default_sample_day, default_sampling_order, lat,       lon,         active,  description)
  values          ('NHP',     '000687',    'Haycraft Park',        2,      3,                  3,                    20.796414, -156.503198, 1,       null);
INSERT INTO sites (hui_abv , storet_code, long_name,               lab_id, default_sample_day, default_sampling_order, lat,       lon,         active,  description)
  values (         'NKP',     '000711',    'Kealia Pond',          2,      3,                  4,                    20.794936, -156.485587, 1,       null);
INSERT INTO sites (hui_abv , storet_code, long_name,               lab_id, default_sample_day, default_sampling_order, lat,       lon,         active,  description)
  values (         'NSB',     NULL,        'Sugar Beach',          2,      3,                  NULL,                 20.784204, -156.466463, 0,       null);
INSERT INTO sites (hui_abv , storet_code, long_name,               lab_id, default_sample_day, default_sampling_order, lat,       lon,         active,  description)
  values (         'NKC',     '000671',    'Kihei Canoe Club',     2,      3,                  6,                    20.781403, -156.463176, 1,       null);
-- NOTE: this site as moved to day one for this lab, but keeping the insert here so site ids stay the same for data import
INSERT INTO sites (hui_abv , storet_code, long_name,               lab_id, default_sample_day, default_sampling_order, lat,       lon,         active,  description)
  values (         'NMP',     '000702',    'Mai Poina \'Oe Ia\'u', 2,      1,                  NULL,                 20.774894, -156.460776, 0,       null);
-- NOTE: this site as moved to day one for this lab, but keeping the insert here so site ids stay the same for data import
INSERT INTO sites (hui_abv , storet_code, long_name,                 lab_id, default_sample_day, default_sampling_order, lat,       lon,         active,  description)
  values (         'NKN',     NULL,        'Kalepolepo North',     2,      1,                  1,                    20.765132, -156.459344, 1,       null);

-- Wailea
INSERT INTO sites (hui_abv , storet_code, long_name,                       lab_id, default_sample_day, default_sampling_order, lat,       lon,         active,  description)
  values          ('WKD',     '000704',    'Kilohana Dr',                  2,      2,                  1,                    20.702214, -156.445921, 1,       null);
INSERT INTO sites (hui_abv , storet_code, long_name,                       lab_id, default_sample_day, default_sampling_order, lat,       lon,         active,  description)
  values          ('WKB',     '000685',    'Keawekapu Beach',              2,      2,                  2,                    20.695939, -156.444632, 1,       null);
INSERT INTO sites (hui_abv , storet_code, long_name,                       lab_id, default_sample_day, default_sampling_order, lat,       lon,         active,  description)
  values          ('WUL',     '000686',    'Ulua Beach',                   2,      2,                  3,                    20.69112,  -156.444201, 1,       null);
INSERT INTO sites (hui_abv , storet_code, long_name,                       lab_id, default_sample_day, default_sampling_order, lat,       lon,         active,  description)
  values          ('WWA',     '000691',    'Wailea Beach',                 2,      4,                  NULL,                 20.68156,  -156.443524, 0,       null);
INSERT INTO sites (hui_abv , storet_code, long_name,                       lab_id, default_sample_day, default_sampling_order, lat,       lon,         active,  description)
  values          ('WPL',     '000715',    'Palauea',                      2,      4,                  NULL,                 20.669565, -156.442907, 0,       null);
INSERT INTO sites (hui_abv , storet_code, long_name,                       lab_id, default_sample_day, default_sampling_order, lat,       lon,         active,  description)
  values          ('WPO',     '000716',    'Poolenalena (Chang\'s Beach)', 2,      4,                  NULL,                    20.66339,  -156.441968, 0,       null);

-- Added South Maui sites.  Both of these sites were added to team North Kihei to be sampled on day 3
INSERT INTO sites (hui_abv , storet_code, long_name,                       lab_id, default_sample_day, default_sampling_order, lat,       lon,         active,  description)
  values          ('NMH',     NULL,    'Maalaea Harbor',                   2,      3,                  1,                    20.790305,  -156.510825, 1,       null);
INSERT INTO sites (hui_abv , storet_code, long_name,                       lab_id, default_sample_day, default_sampling_order, lat,       lon,         active,  description)
  values          ('NMC',     NULL,    'Maalaea Condos',                   2,      3,                  2,                    20.794917,  -156.506735, 1,       null);

-- Added West Maui Site
INSERT INTO sites (hui_abv , storet_code, long_name,              lab_id, default_sample_day, default_sampling_order, lat,       lon,         active,  description)
  values (        'RKT',     '000733',    'Kahekili Two',         1,      1,                  4,                   20.941269, -156.692439,    1,       null);

/* extra Olowalu sites
2031,OBR,,Ukumehame Bridge,Olowalu,
2026,OSB,,Olowalu surf break,Olowalu,
2027,OSF,000663,Olowalu shore front,Polanui,
2030,OTC,000697,Teen Challenge,Olowalu,
*/

/* extras for R2RS 
2016,RAP,000733,Airport2,R2RS,
2018,RBR,000734,Black Rock,R2RS,
2013,RHO,000725,Honokowai,R2RS,
2015,RKA,000736,South seep (Kahekili 4),R2RS,
2014,RKN,000735,North seep (Kehekili 3),R2RS,
2007,RNN,,Napili N,R2RS,
2009,RPU,,Pohaku 2,R2RS,
2019,RSK,000666,Sheraton Ka'anapali,R2RS,
*/


INSERT INTO qa_codes ( qa_code, category, description, action )
  values (1, 'Sampler', 'Unknown Sampler', 'discard');

INSERT INTO qa_codes ( qa_code, category, description, action )
  values(  2, 'Sampler', 'Sampler not trained or re-trained', 'discard');

INSERT INTO qa_codes ( qa_code, category, description, action )
  values( 10, 'Sampling', 'Incorrect sampling method', 'discard');
INSERT INTO qa_codes ( qa_code, category, description, action )
  values( 11, 'Sampling', 'Known sample contamination','discard');

INSERT INTO qa_codes ( qa_code, category, description, action )
  values( 20, 'Time', 'Sample date not within 10 days of today.', 'flag');
INSERT INTO qa_codes ( qa_code, category, description, action )
  values( 21, 'Time', 'Time not between 5 am and 3 pm.',          'flag');

INSERT INTO qa_codes ( qa_code, category, description, action )
  values( 30, 'Verification', 'Pre-verification not within 1 week of sampling',  'flag');
INSERT INTO qa_codes ( qa_code, category, description, action )
  values( 31, 'Verification', 'Post-verification not within 1 week of sampling', 'flag');

INSERT INTO qa_codes ( qa_code, category, description, action )
  values( 40, 'Temp', 'Temp not between 20 and 30.', 'flag');

INSERT INTO qa_codes ( qa_code, category, description, action )
  values( 50, 'DO', 'DO% not between 80 and 120.',                                      'flag');
INSERT INTO qa_codes ( qa_code, category, description, action )
  values( 51, 'DO', 'DO not between 4 and 9.',                                          'flag');
INSERT INTO qa_codes ( qa_code, category, description, action )
  values( 52, 'DO', 'Calibration not within 1 year',                                    'discard');
INSERT INTO qa_codes ( qa_code, category, description, action )
  values( 53, 'DO', 'Data shows evidence of drift',                                     'investigate');
INSERT INTO qa_codes ( qa_code, category, description, action )
  values( 54, 'DO', 'Probe does not stabilize after 5 minutes during post-verification', 'discard');
INSERT INTO qa_codes ( qa_code, category, description, action )
  values( 55, 'DO', 'DO concentration differs signficantly from percent saturation',    'flag');
INSERT INTO qa_codes ( qa_code, category, description, action )
  values( 56, 'DO', 'Post verification DO not within 3% of standard (outside range)',   'flag');

INSERT INTO qa_codes ( qa_code, category, description, action )
  values( 60, 'Salinity', 'Sal not between 0 and 35 ppt',                                         'flag');
INSERT INTO qa_codes ( qa_code, category, description, action )
  values( 61, 'Salinity', 'Calibration not within 3 months',                                       'discard');
INSERT INTO qa_codes ( qa_code, category, description, action )
  values( 62, 'Salinity', 'Post verification salinity not within 3% of standard (outside range)', 'flag');
INSERT INTO qa_codes ( qa_code, category, description, action )
  values( 63, 'Salinity', 'Probe does not stabilize after 5 minutes during post-verification',    'discard');

INSERT INTO qa_codes ( qa_code, category, description, action )
  values( 70, 'pH', 'Estimated value of pH not between 7.3 and 8.2.',                  'flag');
INSERT INTO qa_codes ( qa_code, category, description, action )
  values( 71, 'pH', 'Calibration not within 3 weeks',                                   'discard');
INSERT INTO qa_codes ( qa_code, category, description, action )
  values( 72, 'pH', 'Verification pH not within 3% of standard (outside range)',        'flag');
INSERT INTO qa_codes ( qa_code, category, description, action )
  values( 73, 'pH', 'Probe shows evidence of value drift',                              'investigate');
INSERT INTO qa_codes ( qa_code, category, description, action )
  values( 74, 'pH', 'Probe does not stabilize after 5 minutes during post-verification', 'discard');

INSERT INTO qa_codes ( qa_code, category, description, action )
  values( 80, 'Turbidity', 'Post Verification turbidity not within 3% of standard (outside range)', 'flag');
INSERT INTO qa_codes ( qa_code, category, description, action )
  values( 81, 'Turbidity', 'Calibration not within 3 months',                                       'discard');
INSERT INTO qa_codes ( qa_code, category, description, action )
  values( 82, 'Turbidity', 'Verification zero (blank) check not within range',                      'flag');
INSERT INTO qa_codes ( qa_code, category, description, action )
  values( 83, 'Turbidity', 'Probe does not stabilize after 5 minutes during post-verification',     'discard');
INSERT INTO qa_codes ( qa_code, category, description, action )
  values( 84, 'Turbidity', 'CV of three values more than 0.15',                                     'flag');

INSERT INTO qa_codes ( qa_code, category, description, action )
  values( 90, 'Missing data', 'Missing data: Nutrients', 'investigate');
INSERT INTO qa_codes ( qa_code, category, description, action )
  values( 91, 'Missing data', 'Missing data: Sediments', 'investigate');
INSERT INTO qa_codes ( qa_code, category, description, action )
  values( 92, 'Missing data', 'Missing data: Bacteria',  'investigate');

INSERT INTO qa_codes ( qa_code, category, description, action )
  values(100, 'Chain of Custody', 'No signature from field technicians',                            'flag');
INSERT INTO qa_codes ( qa_code, category, description, action )
  values(101, 'Chain of Custody', 'No signature from receiving lab',                                'flag');
INSERT INTO qa_codes ( qa_code, category, description, action )
  values(102, 'Chain of Custody', 'Temperature: Nutrient samples not frozen on arrival',            'flag');
INSERT INTO qa_codes ( qa_code, category, description, action )
  values(103, 'Chain of Custody', 'Temperature: Sediment samples not stored in refridgerator',      'flag');
INSERT INTO qa_codes ( qa_code, category, description, action )
  values(104, 'Chain of Custody', 'Temperature: Nutrient samples not stored at 0C',                 'flag');
INSERT INTO qa_codes ( qa_code, category, description, action )
  values(105, 'Chain of Custody', 'Temperature: Bacteria samples not stored at 0C during tranport', 'flag');

INSERT INTO qa_codes ( qa_code, category, description, action )
  values(110, 'Hold Times', 'Ammonia hold times more than 28 days',            'flag');
INSERT INTO qa_codes ( qa_code, category, description, action )
  values(111, 'Hold Times', 'Inorganic nutrient hold times more than 28 days', 'flag');
INSERT INTO qa_codes ( qa_code, category, description, action )
  values(112, 'Hold Times', 'Organic nutrient hold times more than the limit', 'flag');
INSERT INTO qa_codes ( qa_code, category, description, action )
  values(113, 'Hold Times', 'TSS hold times more than the limit',              'flag');
INSERT INTO qa_codes ( qa_code, category, description, action )
  values(114, 'Hold Times', 'Enterococcus hold times more than the limit',     'flag');

INSERT INTO qa_codes ( qa_code, category, description, action )
  values(120, 'Nutrient Lab QA', 'Nutrient lab indicate QA/QC problems', 'discard');
INSERT INTO qa_codes ( qa_code, category, description, action )
  values(121, 'Sediment Lab QA', 'Sediment lab indicate QA/QC problems', 'discard');
INSERT INTO qa_codes ( qa_code, category, description, action )
  values(122, 'Bacteria Lab QA', 'Bacteria lab indicate QA/QC problems', 'discard');

INSERT INTO qa_codes ( qa_code, category, description, action )
  values(130, 'Duplicates', 'Ammonia duplicates RSD more than acceptable limit', 'discard');
INSERT INTO qa_codes ( qa_code, category, description, action )
  values(131, 'Duplicates', 'NN duplicates RSD more than acceptable limit',      'discard');
INSERT INTO qa_codes ( qa_code, category, description, action )
  values(132, 'Duplicates', 'TN duplicates RSD more than acceptable limit',      'discard');
INSERT INTO qa_codes ( qa_code, category, description, action )
  values(133, 'Duplicates', 'TP duplicates RSD more than acceptable limit',      'discard');
INSERT INTO qa_codes ( qa_code, category, description, action )
  values(134, 'Duplicates', 'TSS duplicates RSD more than acceptable limit',     'discard');

INSERT INTO qa_codes ( qa_code, category, description, action )
  values(140, 'Data entry', 'Values differ between data entry', 'investigate');
INSERT INTO qa_codes ( qa_code, category, description, action )
  values(141, 'Data entry', 'Recording error',                   'discard');

INSERT INTO qa_codes ( qa_code, category, description, action )
  values(150, 'General', 'General not sure about this one', 'discard');
INSERT INTO qa_codes ( qa_code, category, description, action )
  values(151, 'General', 'Method/analysis discrepancies',   'investigate');
INSERT INTO qa_codes ( qa_code, category, description, action )
  values(152, 'General', 'Sampling location change',        'investigate');

INSERT INTO qa_codes ( qa_code, category, description, action )
  values(160, 'Site Sample', 'Approved',          'none');
INSERT INTO qa_codes ( qa_code, category, description, action )
  values(161, 'Site Sample', 'Awaiting approval', 'flag');
INSERT INTO qa_codes ( qa_code, category, description, action )
  values(162, 'Site Sample', 'Awaiting Review',   'flag');

--  measurement precision for display

INSERT INTO measurement_precision ( measurement_name, number_of_decimals ) values('temperature', 1);
INSERT INTO measurement_precision ( measurement_name, number_of_decimals ) values('salinity', 1);
INSERT INTO measurement_precision ( measurement_name, number_of_decimals ) values('dissolved_oxygen', 2);
INSERT INTO measurement_precision ( measurement_name, number_of_decimals ) values('dissolved_oxygen_pct', 1);
INSERT INTO measurement_precision ( measurement_name, number_of_decimals ) values('ph', 2);
INSERT INTO measurement_precision ( measurement_name, number_of_decimals ) values('turbidity_1', 2);
INSERT INTO measurement_precision ( measurement_name, number_of_decimals ) values('turbidity_2', 2);
INSERT INTO measurement_precision ( measurement_name, number_of_decimals ) values('turbidity_3', 2);
-- nutrient data
INSERT INTO measurement_precision ( measurement_name, number_of_decimals ) values('total_nitrogen', 2);
INSERT INTO measurement_precision ( measurement_name, number_of_decimals ) values('total_phosphorus', 2);
INSERT INTO measurement_precision ( measurement_name, number_of_decimals ) values('phosphate', 2);
INSERT INTO measurement_precision ( measurement_name, number_of_decimals ) values('silicate', 2);
INSERT INTO measurement_precision ( measurement_name, number_of_decimals ) values('nitrates', 2);
INSERT INTO measurement_precision ( measurement_name, number_of_decimals ) values('ammonia', 2);
