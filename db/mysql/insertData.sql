USE water_quality;


INSERT INTO workers (first_name, last_name, initials, email, phone_number) values ('Ty', 'Freiberg', 'TF', 'tf@gmail.com', '808-523-4567');
INSERT INTO workers (first_name, last_name, initials, email, phone_number) values ('Marie', 'Shroeder', 'MS', 'ms@yahoo.com', '808-345-6789');
INSERT INTO workers (first_name, last_name, initials, email, phone_number) values ('Terry', 'Shroeder', 'TS', 'ms@yahoo.com', '808-345-6789');
INSERT INTO workers (first_name, last_name, initials, email, phone_number) values ('Rich', 'Bailey', 'RB', null, null);
INSERT INTO workers (first_name, last_name, initials, email, phone_number) values ('Cathy', 'Maxwell', 'CM', 'cathy@ubermax.com', '808-456-1234');
INSERT INTO workers (first_name, last_name, initials, email, phone_number) values ('Jim', 'Maxwell', 'JM', 'jim@ubermax.com', '808-456-1234');
INSERT INTO workers (first_name, last_name, initials, email, phone_number) values ('Nell', 'Woods', 'NW', null, '808-567-3452');
INSERT INTO workers (first_name, last_name, initials, email, phone_number) values ('Dana', 'Reed', 'DR', 'dreedyah@yahoo.com', '720-567-3412');
INSERT INTO workers (first_name, last_name, initials, email, phone_number) values ('Ananda', 'Stone', 'AS', null, null);
INSERT INTO workers (first_name, last_name, initials, email, phone_number) values ('George', 'Burnette', 'GB', null, null);
INSERT INTO workers (first_name, last_name, initials, email, phone_number) values ('Bruce', 'Banker', 'BB', null, null);
INSERT INTO workers (first_name, last_name, initials, email, phone_number) values ('Michelle', 'Griffoul', 'MG', null, null);
INSERT INTO workers (first_name, last_name, initials, email, phone_number) values ('Richard', 'Noponen', 'RN', null, null);
INSERT INTO workers (first_name, last_name, initials, email, phone_number) values ('Layne', 'Otomo', 'LO', null, null);
INSERT INTO workers (first_name, last_name, initials, email, phone_number) values ('Mitch', 'Brown', 'MB', null, null);
INSERT INTO workers (first_name, last_name, initials, email, phone_number) values ('Lyn', 'Hutchings', 'LH', null, null);

-- lab NMS
-- Kamaole
INSERT INTO workers (first_name, last_name, initials, email, phone_number) values ('Mitch', 'Brown', 'MB', null, null);
INSERT INTO workers (first_name, last_name, initials, email, phone_number) values ('Audrey', 'Quinn', 'AQ', null, null);
INSERT INTO workers (first_name, last_name, initials, email, phone_number) values ('Donna', 'Howard', 'DH', null, null);
INSERT INTO workers (first_name, last_name, initials, email, phone_number) values ('Scott', 'Graves', 'SG', null, null);
INSERT INTO workers (first_name, last_name, initials, email, phone_number) values ('Steve', 'Paselk', 'SP', null, null);
-- Makena
INSERT INTO workers (first_name, last_name, initials, email, phone_number) values ('Sheryl', 'Fries', 'SF', null, null);
INSERT INTO workers (first_name, last_name, initials, email, phone_number) values ('Alfred', 'Wolf', 'AW', null, null);
INSERT INTO workers (first_name, last_name, initials, email, phone_number) values ('Tina', 'Wildberger', 'TW', null, null);
INSERT INTO workers (first_name, last_name, initials, email, phone_number) values ('Lory', 'Lowder', 'LL', null, null);

-- additional workers
INSERT INTO workers (first_name, last_name, initials, email, phone_number) values ('Kit', 'Harris', 'KH', null, null);
INSERT INTO workers (first_name, last_name, initials, email, phone_number) values ('Brenda', 'Jarmakani', 'BJ', null, null);


INSERT INTO labs (lab_code, long_name, address) values ('LLHS', 'Lahainaluna High School', 'Lahainaluna Road');
INSERT INTO labs (lab_code, long_name, address) values ('NMS', 'National Marine Sanctuary', 'South Kihei Road');

INSERT INTO teams (team_code, long_name, lab_id) values ('R2RS', 'Ridge-to-Reef South', 1);
INSERT INTO teams (team_code, long_name, lab_id) values ('Polanui', 'Polanui', 1);
INSERT INTO teams (team_code, long_name, lab_id) values ('Olowalu', 'Olowalu', 1);
INSERT INTO teams (team_code, long_name, lab_id) values ('NR2R', 'North Ridge-to-Reef', 1);

-- lab NMS
INSERT INTO teams (team_code, long_name, lab_id) values ('Kamaole', 'Kamaole', 2);
INSERT INTO teams (team_code, long_name, lab_id) values ('Makena', 'Makena', 2);

INSERT INTO team_members (team_id, worker_id) values ( 1, 1);
INSERT INTO team_members (team_id, worker_id) values ( 1, 2);
INSERT INTO team_members (team_id, worker_id) values ( 1, 4);
INSERT INTO team_members (team_id, worker_id) values ( 1, 27);

INSERT INTO team_members (team_id, worker_id) values ( 2, 8);
INSERT INTO team_members (team_id, worker_id) values ( 2, 3);
INSERT INTO team_members (team_id, worker_id) values ( 2, 26);

INSERT INTO team_members (team_id, worker_id) values ( 3, 8);
INSERT INTO team_members (team_id, worker_id) values ( 3, 5);

INSERT INTO team_members (team_id, worker_id) values ( 4, 7);
INSERT INTO team_members (team_id, worker_id) values ( 4, 6);
INSERT INTO team_members (team_id, worker_id) values ( 4, 4);

-- lab NMS
-- Kamaole
INSERT INTO team_members (team_id, worker_id) values ( 5, 17);
INSERT INTO team_members (team_id, worker_id) values ( 5, 18);
INSERT INTO team_members (team_id, worker_id) values ( 5, 19);
INSERT INTO team_members (team_id, worker_id) values ( 5, 20);
INSERT INTO team_members (team_id, worker_id) values ( 5, 21);
-- Makena
INSERT INTO team_members (team_id, worker_id) values ( 6, 22);
INSERT INTO team_members (team_id, worker_id) values ( 6, 23);
INSERT INTO team_members (team_id, worker_id) values ( 6, 24);
INSERT INTO team_members (team_id, worker_id) values ( 6, 25);


-- R2RS
INSERT INTO sites (hui_code, hui_abv , storet_code, long_name, lab_id, team_id, default_sample_day, lat, lon, description)
  values (2006, 'RNS', '000723', 'Napili S',         1, 1, 2, null, null, null);
INSERT INTO sites (hui_code, hui_abv , storet_code, long_name, lab_id, team_id, default_sample_day, lat, lon, description)
  values (2010, 'RPO', '000724', 'Pohaku',           1, 1, 2, null, null, null);
INSERT INTO sites (hui_code, hui_abv , storet_code, long_name, lab_id, team_id, default_sample_day, lat, lon, description)
  values (2071, 'RKS', null,     'Kaanapali Shores', 1, 1, 2, null, null, null);
INSERT INTO sites (hui_code, hui_abv , storet_code, long_name, lab_id, team_id, default_sample_day, lat, lon, description)
  values (2017, 'RAB', '000695', 'Airport Beach',    1, 1, 2, null, null, null);
INSERT INTO sites (hui_code, hui_abv , storet_code, long_name, lab_id, team_id, default_sample_day, lat, lon, description)
  values (2020, 'RCB', '000693', 'Canoe Beach',      1, 1, 2, null, null, null);
INSERT INTO sites (hui_code, hui_abv , storet_code, long_name, lab_id, team_id, default_sample_day, lat, lon, description)
  values (2021, 'RWA', '000678', 'Wahikuli',         1, 1, 2, null, null, null);

-- Polanui
INSERT INTO sites (hui_code, hui_abv , storet_code, long_name, lab_id, team_id, default_sample_day, lat, lon, description)
  values (2022, 'PFF', null,     '505 Front Street',    1, 2, 3, null, null, null);
INSERT INTO sites (hui_code, hui_abv , storet_code, long_name, lab_id, team_id, default_sample_day, lat, lon, description)
  values (2023 ,'PLH', null,     'Lindsey Hale',        1, 2, 3, null, null, null);
INSERT INTO sites (hui_code, hui_abv , storet_code, long_name, lab_id, team_id, default_sample_day, lat, lon, description)
  values (2024 ,'PLT', '000726', 'Lahaina Town',        1, 2, 3, null, null, null);
INSERT INTO sites (hui_code, hui_abv , storet_code, long_name, lab_id, team_id, default_sample_day, lat, lon, description)
  values (2025 ,'PPU', null,     'Puamana',             1, 2, 3, null, null, null);
INSERT INTO sites (hui_code, hui_abv , storet_code, long_name, lab_id, team_id, default_sample_day, lat, lon, description)
  values (2072 ,'OLP', null,     'Launiupoko',          1, 2, 3, null, null, null);
INSERT INTO sites (hui_code, hui_abv , storet_code, long_name, lab_id, team_id, default_sample_day, lat, lon, description)
  values (2027 ,'OSF', '000663', 'Olowalu Shore Front', 1, 2, 3, null, null, null);

-- Olowalu
INSERT INTO sites (hui_code, hui_abv , storet_code, long_name, lab_id, team_id, default_sample_day, lat, lon, description)
 values (2073, 'OPM', null,     'Peter Martin Hale', 1, 3, 4, null, null, null);
INSERT INTO sites (hui_code, hui_abv , storet_code, long_name, lab_id, team_id, default_sample_day, lat, lon, description)
 values (2028, 'OCO', null,     'Camp Olowalu',      1, 3, 4, null, null, null);
INSERT INTO sites (hui_code, hui_abv , storet_code, long_name, lab_id, team_id, default_sample_day, lat, lon, description)
 values (2029, 'OMM', null,     'Mile Marker 14',    1, 3, 4, null, null, null);
INSERT INTO sites (hui_code, hui_abv , storet_code, long_name, lab_id, team_id, default_sample_day, lat, lon, description)
 values (2032, 'OUB', '000698', 'Ukumehame Beach',   1, 3, 4, null, null, null);
INSERT INTO sites (hui_code, hui_abv , storet_code, long_name, lab_id, team_id, default_sample_day, lat, lon, description)
 values (2033, 'OPB', '000728', 'Papalaua',          1, 3, 4, null, null, null);
INSERT INTO sites (hui_code, hui_abv , storet_code, long_name, lab_id, team_id, default_sample_day, lat, lon, description)
 values (2034, 'OPP', null,     'Papalaua Pali',     1, 3, 4, null, null, null);

-- NR2R
INSERT INTO sites (hui_code, hui_abv , storet_code, long_name, lab_id, team_id, default_sample_day, lat, lon, description)
  values (2001, 'RHL', '000707', 'Honolua',        1, 4, 5, null, null, null);
INSERT INTO sites (hui_code, hui_abv , storet_code, long_name, lab_id, team_id, default_sample_day, lat, lon, description)
  values (2003, 'RFN', '000674', 'Fleming N',      1, 4, 5, null, null, null);
INSERT INTO sites (hui_code, hui_abv , storet_code, long_name, lab_id, team_id, default_sample_day, lat, lon, description)
  values (2004, 'RON', '000722', 'Oneloa',         1, 4, 5, null, null, null);
INSERT INTO sites (hui_code, hui_abv , storet_code, long_name, lab_id, team_id, default_sample_day, lat, lon, description)
  values (2005, 'RFS', '000650', 'Kapalua Bay',    1, 4, 5, null, null, null);
INSERT INTO sites (hui_code, hui_abv , storet_code, long_name, lab_id, team_id, default_sample_day, lat, lon, description)
  values (2008, 'RKO', '000692', 'Ka\'opala',      1, 4, 5, null, null, null);
INSERT INTO sites (hui_code, hui_abv , storet_code, long_name, lab_id, team_id, default_sample_day, lat, lon, description)
  values (2074, 'RKV',  null,    'Kahana Village', 1, 4, 5, null, null, null);

-- NMS lab
-- Kamaole
INSERT INTO sites (hui_code, hui_abv , storet_code, long_name, lab_id, team_id, default_sample_day, lat, lon, description)
  values (9000, 'KWP', NULL, 'Waipuilani Park',        2, 5, 1, null, null, null);
INSERT INTO sites (hui_code, hui_abv , storet_code, long_name, lab_id, team_id, default_sample_day, lat, lon, description)
  values (9001, 'KKS', NULL, 'Kihei South',            2, 5, 1, null, null, null);
INSERT INTO sites (hui_code, hui_abv , storet_code, long_name, lab_id, team_id, default_sample_day, lat, lon, description)
  values (9002, 'KKP', NULL, 'Kalama Park',            2, 5, 1, null, null, null);
INSERT INTO sites (hui_code, hui_abv , storet_code, long_name, lab_id, team_id, default_sample_day, lat, lon, description)
  values (9003, 'KCP', NULL, 'Cove Park',              2, 5, 1, null, null, null);
INSERT INTO sites (hui_code, hui_abv , storet_code, long_name, lab_id, team_id, default_sample_day, lat, lon, description)
  values (9004, 'KKO', NULL, 'Kamaole Beach I',        2, 5, 1, null, null, null);
INSERT INTO sites (hui_code, hui_abv , storet_code, long_name, lab_id, team_id, default_sample_day, lat, lon, description)
  values (9005, 'KKT', NULL, 'Kamaole Beach III',      2, 5, 1, null, null, null);

-- Makena 
INSERT INTO sites (hui_code, hui_abv , storet_code, long_name, lab_id, team_id, default_sample_day, lat, lon, description)
  values (9006, 'MML', NULL, 'Makena Landing',         2, 6, 2, null, null, null);
INSERT INTO sites (hui_code, hui_abv , storet_code, long_name, lab_id, team_id, default_sample_day, lat, lon, description)
  values (9007, 'MMB', NULL, 'Maluaka Beach',          2, 6, 2, null, null, null);
INSERT INTO sites (hui_code, hui_abv , storet_code, long_name, lab_id, team_id, default_sample_day, lat, lon, description)
  values (9008, 'MON', NULL, 'Oneuli',                 2, 6, 2, null, null, null);
INSERT INTO sites (hui_code, hui_abv , storet_code, long_name, lab_id, team_id, default_sample_day, lat, lon, description)
  values (9009, 'MBS', NULL, 'Makena Beach Shoreline', 2, 6, 2, null, null, null);
INSERT INTO sites (hui_code, hui_abv , storet_code, long_name, lab_id, team_id, default_sample_day, lat, lon, description)
  values (9010, 'MAN', NULL, 'Ahihi North',            2, 6, 2, null, null, null);
INSERT INTO sites (hui_code, hui_abv , storet_code, long_name, lab_id, team_id, default_sample_day, lat, lon, description)
  values (9011, 'MAS', NULL, 'Ahihi South',            2, 6, 2, null, null, null);

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
