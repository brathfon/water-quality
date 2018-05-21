USE water_quality;


-- special case for the root worker that will have permissions to do all.  Initial root password will be "default"
-- email will be used as the login
INSERT INTO workers (first_name, last_name, initials, email, phone_number, salt, hash) values
   ('root', 'root', '99', 'root@root.com', null,
   '014f8f5784eaeee325fbaf29b8170871',
   'bed6ea8f4cae38603163ef5f7fa320a85bc07382c73066de935de1b8f29cd6c5e9e8d0473a657789f3f8ad2e95b2a083d258cb436176078b09e7797751ae58e3');

-- these users will not have an initial pw at least for now
INSERT INTO workers (first_name, last_name, initials, email, phone_number) values ('Ty', 'Freiberg', 'TF', 'tf@gmail.com', '808-523-4567');  -- 2
INSERT INTO workers (first_name, last_name, initials, email, phone_number) values ('Marie', 'Shroeder', 'MS', 'ms@yahoo.com', '808-345-6789');  -- 3
INSERT INTO workers (first_name, last_name, initials, email, phone_number) values ('Terry', 'Shroeder', 'TS', 'ts@yahoo.com', '808-345-6789');  -- 4
INSERT INTO workers (first_name, last_name, initials, email, phone_number) values ('Rich', 'Bailey', 'RB', null, null);  -- 5
INSERT INTO workers (first_name, last_name, initials, email, phone_number) values ('Cathy', 'Maxwell', 'CM', 'cathy@ubermax.com', '808-456-1234'); -- 6
INSERT INTO workers (first_name, last_name, initials, email, phone_number) values ('Jim', 'Maxwell', 'JM', 'jim@ubermax.com', '808-456-1234'); -- 7
INSERT INTO workers (first_name, last_name, initials, email, phone_number) values ('Nell', 'Woods', 'NW', null, '808-567-3452'); -- 8
INSERT INTO workers (first_name, last_name, initials, email, phone_number) values ('Dana', 'Reed', 'DR', 'dreedyah@yahoo.com', '720-567-3412'); -- 9
INSERT INTO workers (first_name, last_name, initials, email, phone_number) values ('Ananda', 'Stone', 'AS', null, null); -- 10
INSERT INTO workers (first_name, last_name, initials, email, phone_number) values ('George', 'Burnette', 'GB', null, null); -- 11
INSERT INTO workers (first_name, last_name, initials, email, phone_number) values ('Bruce', 'Banker', 'BB', null, null); -- 12
INSERT INTO workers (first_name, last_name, initials, email, phone_number) values ('Michelle', 'Griffoul', 'MG', null, null); -- 13
INSERT INTO workers (first_name, last_name, initials, email, phone_number) values ('Richard', 'Noponen', 'RN', null, null); -- 14
INSERT INTO workers (first_name, last_name, initials, email, phone_number) values ('Layne', 'Otomo', 'LO', null, null); -- 15
INSERT INTO workers (first_name, last_name, initials, email, phone_number) values ('Mitch', 'Brown', 'MB', null, null); -- 16 Duplicated at one point
INSERT INTO workers (first_name, last_name, initials, email, phone_number) values ('Lyn', 'Hutchings', 'LH', null, null);  -- 17

-- INSERT INTO workers (first_name, last_name, initials, email, phone_number) values ('Mitch', 'Brown', 'MB', null, null); # 18  <- this was the duplicate
INSERT INTO workers (first_name, last_name, initials, email, phone_number) values ('Lindsay', 'Ranieri', 'LR', null, null); -- #18 West Maui, Olowalu , was 41 at one point
-- lab NMS
-- Kamaole
INSERT INTO workers (first_name, last_name, initials, email, phone_number) values ('Audrey', 'Quinn', 'AQ', null, null);  -- 19
INSERT INTO workers (first_name, last_name, initials, email, phone_number) values ('Donna', 'Howard', 'DH', null, null);  -- 20
INSERT INTO workers (first_name, last_name, initials, email, phone_number) values ('Scott', 'Graves', 'SG', null, null);  -- 21
INSERT INTO workers (first_name, last_name, initials, email, phone_number) values ('Steve', 'Paselk', 'SP', null, null);  -- 22
-- Makena
INSERT INTO workers (first_name, last_name, initials, email, phone_number) values ('Sheryl', 'Fries', 'SF', null, null);  -- 23
INSERT INTO workers (first_name, last_name, initials, email, phone_number) values ('Alfred', 'Wolf', 'AW', null, null);  -- 24
INSERT INTO workers (first_name, last_name, initials, email, phone_number) values ('Tina', 'Wildberger', 'TW', null, null);  -- 25
INSERT INTO workers (first_name, last_name, initials, email, phone_number) values ('Lory', 'Lowder', 'LL', null, null);  -- 26

-- additional workers
INSERT INTO workers (first_name, last_name, initials, email, phone_number) values ('Kit', 'Harris', 'KH', null, null); -- 27
INSERT INTO workers (first_name, last_name, initials, email, phone_number) values ('Brenda', 'Jarmakani', 'BJ', null, null); -- # 28

-- North Kihei
INSERT INTO workers (first_name, last_name, initials, email, phone_number) values ('Kathy', 'Thunholm', 'KT', null, null); -- #29
INSERT INTO workers (first_name, last_name, initials, email, phone_number) values ('Bill', 'Chase', 'BC', null, null); -- #30
INSERT INTO workers (first_name, last_name, initials, email, phone_number) values ('Nathanial', 'Green', 'NG', null, null); -- #31

-- Wailea
INSERT INTO workers (first_name, last_name, initials, email, phone_number) values ('Harry', 'Hecht', 'HH', null, null); -- #32
INSERT INTO workers (first_name, last_name, initials, email, phone_number) values ('Deborah', 'Mader', 'DM', null, null); -- #33
INSERT INTO workers (first_name, last_name, initials, email, phone_number) values ('Judy', 'Jarvey', 'JJ', null, null); -- #34

-- additional workers
INSERT INTO workers (first_name, last_name, initials, email, phone_number) values ('Sofia', 'de laSota', 'SD', null, null); -- #35 team lead
INSERT INTO workers (first_name, last_name, initials, email, phone_number) values ('Jeep', 'Dunning', 'JD', null, null); -- #36

INSERT INTO workers (first_name, last_name, initials, email, phone_number) values ('CiCi', 'Hehemann', 'CH', null, null); -- #37

INSERT INTO workers (first_name, last_name, initials, email, phone_number) values ('Renee', 'Riley', 'RR', null, null); -- #38  South Maui, North Kihei
INSERT INTO workers (first_name, last_name, initials, email, phone_number) values ('Bill', 'Rathfon', 'BR', null, null); -- #39 West Maui, R2RN
INSERT INTO workers (first_name, last_name, initials, email, phone_number) values ('Flo', 'Bahr', 'FB', null, null); -- #40 South Maui, North Kihei

INSERT INTO workers (first_name, last_name, initials, email, phone_number, salt, hash) values -- #41
   ('The', 'Guest', 'G', "guest", null,
   '969b6a075f1b27ff7e63187f3ca93d4d',
   '6a7f5fdfd3ae70a604b658fb0c05f9ce0449ac1ef30e264c2387b33196080111153bca4d019acc5c3089a63ca47f081006708ce4c1b68918261714f761547267');


INSERT INTO labs (lab_code, long_name, short_name, address) values ('LLHS', 'Lahainaluna High School', 'West Maui', 'Lahainaluna Road');
INSERT INTO labs (lab_code, long_name, short_name, address) values ('NMS', 'National Marine Sanctuary', 'South Maui',  'South Kihei Road');

INSERT INTO teams (team_code, long_name, lab_id) values ('R2RS', 'Ridge-to-Reef South', 1);
INSERT INTO teams (team_code, long_name, lab_id) values ('Polanui', 'Polanui', 1);
INSERT INTO teams (team_code, long_name, lab_id) values ('Olowalu', 'Olowalu', 1);
INSERT INTO teams (team_code, long_name, lab_id) values ('NR2R', 'North Ridge-to-Reef', 1);

-- lab NMS
INSERT INTO teams (team_code, long_name, lab_id) values ('Kamaole', 'Kamaole', 2);
INSERT INTO teams (team_code, long_name, lab_id) values ('Makena', 'Makena', 2);
INSERT INTO teams (team_code, long_name, lab_id) values ('North Keihi', 'North Keihi', 2);
INSERT INTO teams (team_code, long_name, lab_id) values ('Wailea', 'Wailea', 2);

-- R2RS
INSERT INTO team_members (team_id, worker_id) values ( 1, 2);
INSERT INTO team_members (team_id, worker_id) values ( 1, 3);
INSERT INTO team_members (team_id, worker_id) values ( 1, 5);
INSERT INTO team_members (team_id, worker_id) values ( 1, 28);

-- Polanui
INSERT INTO team_members (team_id, worker_id) values ( 2, 9);
INSERT INTO team_members (team_id, worker_id) values ( 2, 4);
INSERT INTO team_members (team_id, worker_id) values ( 2, 27);

-- Olowalu
INSERT INTO team_members (team_id, worker_id) values ( 3, 9);
INSERT INTO team_members (team_id, worker_id) values ( 3, 6);
INSERT INTO team_members (team_id, worker_id) values ( 3, 16); -- Mitch Brown
INSERT INTO team_members (team_id, worker_id) values ( 3, 18);

-- NR2R
INSERT INTO team_members (team_id, worker_id) values ( 4, 8);
INSERT INTO team_members (team_id, worker_id) values ( 4, 7);
INSERT INTO team_members (team_id, worker_id) values ( 4, 5);
INSERT INTO team_members (team_id, worker_id) values ( 4, 37);
INSERT INTO team_members (team_id, worker_id) values ( 4, 39);

-- lab NMS
-- Kamaole
INSERT INTO team_members (team_id, worker_id) values ( 5, 16);  -- Mitch Brown
INSERT INTO team_members (team_id, worker_id) values ( 5, 19);
INSERT INTO team_members (team_id, worker_id) values ( 5, 20);
INSERT INTO team_members (team_id, worker_id) values ( 5, 21);
INSERT INTO team_members (team_id, worker_id) values ( 5, 22);
-- Makena
INSERT INTO team_members (team_id, worker_id) values ( 6, 23);
INSERT INTO team_members (team_id, worker_id) values ( 6, 24);
INSERT INTO team_members (team_id, worker_id) values ( 6, 25);
INSERT INTO team_members (team_id, worker_id) values ( 6, 26);
INSERT INTO team_members (team_id, worker_id) values ( 6, 35);
INSERT INTO team_members (team_id, worker_id) values ( 6, 36);
-- North Kihei
INSERT INTO team_members (team_id, worker_id) values ( 7, 29);
INSERT INTO team_members (team_id, worker_id) values ( 7, 30);
INSERT INTO team_members (team_id, worker_id) values ( 7, 31);
INSERT INTO team_members (team_id, worker_id) values ( 7, 38);
INSERT INTO team_members (team_id, worker_id) values ( 7, 40);
-- Makena
INSERT INTO team_members (team_id, worker_id) values ( 8, 32);
INSERT INTO team_members (team_id, worker_id) values ( 8, 33);
INSERT INTO team_members (team_id, worker_id) values ( 8, 34);

-- Roles information
INSERT INTO roles (abrv, long_name) VALUES ( 'ADM', 'Administration');
INSERT INTO roles (abrv, long_name) VALUES ( 'DE', 'Data Entry');
INSERT INTO roles (abrv, long_name) VALUES ( 'DV', 'Data Verification');
INSERT INTO roles (abrv, long_name) VALUES ( 'QA', 'Quality Assurance');
INSERT INTO roles (abrv, long_name) VALUES ( 'RO', 'Read Only');   -- in case we want to let someone look at the data as entered


INSERT INTO worker_roles (worker_id, role_id) VALUES ( 1, 1);  -- initial root worker who has admin privileges
INSERT INTO worker_roles (worker_id, role_id) VALUES ( 1, 2);  -- this value is more for testing, giving root DE privs
INSERT INTO worker_roles (worker_id, role_id) VALUES ( 41, 5);  -- this value is more for testing, giving root DE privs


-- R2RS
INSERT INTO sites (hui_code, hui_abv , storet_code, long_name, lab_id, team_id, default_sample_day, default_session_order, lat, lon, active,  description)
  values (2006, 'RNS', '000723', 'Napili',           1, 1, 2, 1, 20.994222, -156.667417, 1, null);
INSERT INTO sites (hui_code, hui_abv , storet_code, long_name, lab_id, team_id, default_sample_day, default_session_order, lat, lon, active,  description)
  values (2010, 'RPO', '000724', 'Pohaku',           1, 1, 2, 2, 20.967083, -156.68139,  1, null);
INSERT INTO sites (hui_code, hui_abv , storet_code, long_name, lab_id, team_id, default_sample_day, default_session_order, lat, lon, active,  description)
  values (2071, 'RKS', null,     'Kaanapali Shores', 1, 1, 2, 3, 20.949331, -156.691124, 1, null);
INSERT INTO sites (hui_code, hui_abv , storet_code, long_name, lab_id, team_id, default_sample_day, default_session_order, lat, lon, active,  description)
  values (2017, 'RAB', '000695', 'Airport Beach',    1, 1, 2, 4, 20.936669, -156.69278,  1, null);
INSERT INTO sites (hui_code, hui_abv , storet_code, long_name, lab_id, team_id, default_sample_day, default_session_order, lat, lon, active,  description)
  values (2020, 'RCB', '000693', 'Canoe Beach',      1, 1, 2, 5, 20.910347, -156.689382, 1, null);
INSERT INTO sites (hui_code, hui_abv , storet_code, long_name, lab_id, team_id, default_sample_day, default_session_order, lat, lon, active,  description)
  values (2021, 'RWA', '000678', 'Wahikuli',         1, 1, 2, 6, 20.904476, -156.685931, 1, null);

-- Polanui
INSERT INTO sites (hui_code, hui_abv , storet_code, long_name, lab_id, team_id, default_sample_day, default_session_order, lat, lon, active,  description)
  values (2022, 'PFF', null,     '505 Front Street',    1, 2, 3, 7,  20.86732,  -156.67605,  1, null);
INSERT INTO sites (hui_code, hui_abv , storet_code, long_name, lab_id, team_id, default_sample_day, default_session_order, lat, lon, active,  description)
  values (2023 ,'PLH', null,     'Lindsey Hale',        1, 2, 3, 8,  20.86485,  -156.67374,  1, null);
INSERT INTO sites (hui_code, hui_abv , storet_code, long_name, lab_id, team_id, default_sample_day, default_session_order, lat, lon, active,  description)
  values (2024 ,'PLT', '000726', 'Lahaina Town',        1, 2, 3, 9,  20.86356,  -156.67297,  1, null);
INSERT INTO sites (hui_code, hui_abv , storet_code, long_name, lab_id, team_id, default_sample_day, default_session_order, lat, lon, active,  description)
  values (2025 ,'PPU', null,     'Makila Point',        1, 2, 3, 10, 20.859233, -156.669442, 1, null);
INSERT INTO sites (hui_code, hui_abv , storet_code, long_name, lab_id, team_id, default_sample_day, default_session_order, lat, lon, active,  description)
  values (2072 ,'OLP', null,     'Launiupoko',          1, 2, 3, 11, 20.84236,  -156.653035, 1, null);
INSERT INTO sites (hui_code, hui_abv , storet_code, long_name, lab_id, team_id, default_sample_day, default_session_order, lat, lon, active,  description)
  values (2027 ,'OSF', '000663', 'Olowalu Shore Front', 1, 2, 3, 12, 20.80916,  -156.62289,  1, null);

-- Olowalu
INSERT INTO sites (hui_code, hui_abv , storet_code, long_name, lab_id, team_id, default_sample_day, default_session_order, lat, lon, active,  description)
 values (2073, 'OPM', null,     'Peter Martin Hale', 1, 3, 4, 13, 20.808444, -156.619697, 1, null);
INSERT INTO sites (hui_code, hui_abv , storet_code, long_name, lab_id, team_id, default_sample_day, default_session_order, lat, lon, active,  description)
 values (2028, 'OCO', null,     'Camp Olowalu',      1, 3, 4, 14, 20.80986,  -156.61369,  1, null);
INSERT INTO sites (hui_code, hui_abv , storet_code, long_name, lab_id, team_id, default_sample_day, default_session_order, lat, lon, active,  description)
 values (2029, 'OMM', null,     'Mile Marker 14',    1, 3, 4, 15, 20.80915,  -156.60661,  1, null);
INSERT INTO sites (hui_code, hui_abv , storet_code, long_name, lab_id, team_id, default_sample_day, default_session_order, lat, lon, active,  description)
 values (2032, 'OUB', '000698', 'Ukumehame Beach',   1, 3, 4, 16, 20.79448,  -156.58142,  1, null);
INSERT INTO sites (hui_code, hui_abv , storet_code, long_name, lab_id, team_id, default_sample_day, default_session_order, lat, lon, active,  description)
 values (2033, 'OPB', '000728', 'Papalaua',          1, 3, 4, 17, 20.793809, -156.575211, 1, null);
INSERT INTO sites (hui_code, hui_abv , storet_code, long_name, lab_id, team_id, default_sample_day, default_session_order, lat, lon, active,  description)
 values (2034, 'OPP', null,     'Papalaua Pali',     1, 3, 4, 18, 20.792747,-156.567326,  1, null);

-- NR2R
INSERT INTO sites (hui_code, hui_abv , storet_code, long_name, lab_id, team_id, default_sample_day, default_session_order, lat, lon, active,  description)
  values (2001, 'RHL', '000707', 'Honolua',        1, 4, 5, 19, 21.013058, -156.63834,  1, null);
-- Mokuleia was only sampled once on 6/23/17, so is currently inactive.  If reactivated, default_session_order will need to shift
 INSERT INTO sites (hui_code, hui_abv , storet_code, long_name, lab_id, team_id, default_sample_day, default_session_order, lat, lon, active,  description)
    values (2002, 'RMO', '000721', 'Mokuleia',     1, 4, 5, 19, 21.011352, -156.64227, 0, null);
INSERT INTO sites (hui_code, hui_abv , storet_code, long_name, lab_id, team_id, default_sample_day, default_session_order, lat, lon, active,  description)
  values (2003, 'RFN', '000674', 'DT Beach (Fleming N)',      1, 4, 5, 20, 21.005,    -156.65084,  1, null);
INSERT INTO sites (hui_code, hui_abv , storet_code, long_name, lab_id, team_id, default_sample_day, default_session_order, lat, lon, active,  description)
  values (2004, 'RON', '000722', 'Oneloa',         1, 4, 5, 21, 21.004056, -156.65894,  1, null);
INSERT INTO sites (hui_code, hui_abv , storet_code, long_name, lab_id, team_id, default_sample_day, default_session_order, lat, lon, active,  description)
  values (2005, 'RFS', '000650', 'Kapalua Bay (Fleming S)',    1, 4, 5, 22, 20.998924, -156.666746, 1, null);
INSERT INTO sites (hui_code, hui_abv , storet_code, long_name, lab_id, team_id, default_sample_day, default_session_order, lat, lon, active,  description)
  values (2008, 'RKO', '000692', 'Ka\'opala',      1, 4, 5, 23, 20.982074, -156.673398, 1, null);
INSERT INTO sites (hui_code, hui_abv , storet_code, long_name, lab_id, team_id, default_sample_day, default_session_order, lat, lon, active,  description)
  values (2074, 'RKV',  null,    'Kahana Village', 1, 4, 5, 24, 20.976561, -156.678,    1, null);

-- NMS lab
-- Kamaole
INSERT INTO sites (hui_code, hui_abv , storet_code, long_name, lab_id, team_id, default_sample_day, default_session_order, lat, lon, active,  description)
  values (9000, 'KWP', '000713', 'Waipuilani Park',        2, 5, 1, 1, 20.755056, -156.459602, 1, null);
INSERT INTO sites (hui_code, hui_abv , storet_code, long_name, lab_id, team_id, default_sample_day, default_session_order, lat, lon, active,  description)
  values (9001, 'KKS', '000676', 'Kihei South (Lipoa)',    2, 5, 1, 2, 20.747334, -156.457881, 1, null);
INSERT INTO sites (hui_code, hui_abv , storet_code, long_name, lab_id, team_id, default_sample_day, default_session_order, lat, lon, active,  description)
  values (9002, 'KKP', '000679', 'Kalama Park',            2, 5, 1, 3, 20.730973, -156.45372,  1, null);
INSERT INTO sites (hui_code, hui_abv , storet_code, long_name, lab_id, team_id, default_sample_day, default_session_order, lat, lon, active,  description)
  values (9003, 'KCP', '000703', 'Cove Park',              2, 5, 1, 4, 20.727434, -156.450077, 1, null);
INSERT INTO sites (hui_code, hui_abv , storet_code, long_name, lab_id, team_id, default_sample_day, default_session_order, lat, lon, active,  description)
  values (9004, 'KKO', '000681', 'Kamaole Beach I',        2, 5, 1, 5, 20.721985, -156.448183, 1, null);
INSERT INTO sites (hui_code, hui_abv , storet_code, long_name, lab_id, team_id, default_sample_day, default_session_order, lat, lon, active,  description)
  values (9005, 'KKT', '000683', 'Kamaole Beach III',      2, 5, 1, 6, 20.712908, -156.446596, 1, null);

-- Makena 
INSERT INTO sites (hui_code, hui_abv , storet_code, long_name, lab_id, team_id, default_sample_day, default_session_order, lat, lon, active,  description)
  values (9006, 'MML', NULL, 'Makena Landing',         2, 6, 2, 7, 20.653913,  -156.441174, 1, null);
INSERT INTO sites (hui_code, hui_abv , storet_code, long_name, lab_id, team_id, default_sample_day, default_session_order, lat, lon, active,  description)
  values (9007, 'MMB', NULL, 'Maluaka Beach',          2, 6, 2, 8, 20.645598,  -156.443859, 1, null);
INSERT INTO sites (hui_code, hui_abv , storet_code, long_name, lab_id, team_id, default_sample_day, default_session_order, lat, lon, active,  description)
  values (9008, 'MON', NULL, 'Oneuli',                 2, 6, 2, 9, 20.639866,  -156.447406, 1, null);
INSERT INTO sites (hui_code, hui_abv , storet_code, long_name, lab_id, team_id, default_sample_day, default_session_order, lat, lon, active,  description)
  values (9009, 'MBS', NULL, 'Makena Beach Shoreline', 2, 6, 2, 10, 20.63061,  -156.446183, 1, null);
INSERT INTO sites (hui_code, hui_abv , storet_code, long_name, lab_id, team_id, default_sample_day, default_session_order, lat, lon, active,  description)
  values (9010, 'MAN', NULL, 'Ahihi North',            2, 6, 2, 11, 20.618366, -156.437572, 1, null);
INSERT INTO sites (hui_code, hui_abv , storet_code, long_name, lab_id, team_id, default_sample_day, default_session_order, lat, lon, active,  description)
  values (9011, 'MAS', NULL, 'Ahihi South',            2, 6, 2, 12, 20.6138,   -156.436853, 1, null);

-- North Kihei
INSERT INTO sites (hui_code, hui_abv , storet_code, long_name,               lab_id, team_id, default_sample_day, default_session_order, lat,       lon,         active,  description)
  values          (9012,    'NHP',     '000687',    'Haycraft Park',          2,      7,      3,                  13,                    20.796414, -156.503198, 1,       null);
INSERT INTO sites (hui_code, hui_abv , storet_code, long_name,               lab_id, team_id, default_sample_day, default_session_order, lat,       lon,         active,  description)
  values (         9013,    'NKP',     '000711',    'Kealia Pond',            2,      7,      3,                  14,                    20.794936, -156.485587, 1,       null);
INSERT INTO sites (hui_code, hui_abv , storet_code, long_name,               lab_id, team_id, default_sample_day, default_session_order, lat,       lon,         active,  description)
  values (         9014,    'NSB',     NULL,        'Sugar Beach',            2,      7,      3,                  15,                    20.784204, -156.466463, 1,       null);
INSERT INTO sites (hui_code, hui_abv , storet_code, long_name,               lab_id, team_id, default_sample_day, default_session_order, lat,       lon,         active,  description)
  values (         9015,    'NKC',     '000671',    'Kihei Canoe Club',       2,      7,      3,                  16,                    20.781403, -156.463176, 1,       null);
INSERT INTO sites (hui_code, hui_abv , storet_code, long_name,               lab_id, team_id, default_sample_day, default_session_order, lat,       lon,         active,  description)
  values (         9016,    'NMP',     '000702',    'Mai Poina \'Oe Ia\'u',   2,      7,      3,                  17,                    20.774894, -156.460776, 1,       null);
INSERT INTO sites (hui_code, hui_abv , storet_code, long_name,               lab_id, team_id, default_sample_day, default_session_order, lat,       lon,         active,  description)
  values (         9017,    'NKN',     NULL,        'Kalepolepo North',       2,      7,      3,                  18,                    20.765132, -156.459344, 1,       null);

-- Wailea
INSERT INTO sites (hui_code, hui_abv , storet_code, long_name,                      lab_id, team_id, default_sample_day, default_session_order, lat,       lon,         active,  description)
  values          (9018,    'WKD',     '000704',    'Kilohana Dr',                  2,      8,       4,                  19,                    20.702214, -156.445921, 1,       null);
INSERT INTO sites (hui_code, hui_abv , storet_code, long_name,                      lab_id, team_id, default_sample_day, default_session_order, lat,       lon,         active,  description)
  values          (9019,    'WKB',     '000685',    'Keawekapu Beach',              2,      8,       4,                  20,                    20.695939, -156.444632, 1,       null);
INSERT INTO sites (hui_code, hui_abv , storet_code, long_name,                      lab_id, team_id, default_sample_day, default_session_order, lat,       lon,         active,  description)
  values          (9020,    'WUL',     '000686',    'Ulua Beach',                   2,      8,       4,                  21,                    20.69112,  -156.444201, 1,       null);
INSERT INTO sites (hui_code, hui_abv , storet_code, long_name,                      lab_id, team_id, default_sample_day, default_session_order, lat,       lon,         active,  description)
  values          (9021,    'WWA',     '000691',    'Wailea Beach',                 2,      8,       4,                  22,                    20.68156,  -156.443524, 1,       null);
INSERT INTO sites (hui_code, hui_abv , storet_code, long_name,                      lab_id, team_id, default_sample_day, default_session_order, lat,       lon,         active,  description)
  values          (9022,    'WPL',     '000715',    'Palauea',                      2,      8,       4,                  23,                    20.669565, -156.442907, 1,       null);
INSERT INTO sites (hui_code, hui_abv , storet_code, long_name,                      lab_id, team_id, default_sample_day, default_session_order, lat,       lon,         active,  description)
  values          (9023,    'WPO',     '000716',    'Poolenalena (Chang\'s Beach)', 2,      8,       4,                  24,                    20.66339,  -156.441968, 1,       null);


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
INSERT INTO measurement_precision ( measurement_name, number_of_decimals ) values('dissolved_oxygen_pct', 2);
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
