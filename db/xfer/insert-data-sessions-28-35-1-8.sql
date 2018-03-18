-- Database is connected
-- max session id 27

-- max sample id 487

-- initials 99 worker_id 1
-- initials TF worker_id 2
-- initials MS worker_id 3
-- initials TS worker_id 4
-- initials RB worker_id 5
-- initials CM worker_id 6
-- initials JM worker_id 7
-- initials NW worker_id 8
-- initials DR worker_id 9
-- initials AS worker_id 10
-- initials GB worker_id 11
-- initials BB worker_id 12
-- initials MG worker_id 13
-- initials RN worker_id 14
-- initials LO worker_id 15
-- initials MB worker_id 18
-- initials LH worker_id 17
-- initials AQ worker_id 19
-- initials DH worker_id 20
-- initials SG worker_id 21
-- initials SP worker_id 22
-- initials SF worker_id 23
-- initials AW worker_id 24
-- initials TW worker_id 25
-- initials LL worker_id 26
-- initials KH worker_id 27
-- initials BJ worker_id 28
-- initials KT worker_id 29
-- initials BC worker_id 30
-- initials NG worker_id 31
-- initials HH worker_id 32
-- initials DM worker_id 33
-- initials JJ worker_id 34
-- initials SD worker_id 35
-- initials JD worker_id 36
-- initials CH worker_id 37
-- hui_abv KCP site_id 29
-- hui_abv KKO site_id 30
-- hui_abv KKP site_id 28
-- hui_abv KKS site_id 27
-- hui_abv KKT site_id 31
-- hui_abv KWP site_id 26
-- hui_abv MAN site_id 36
-- hui_abv MAS site_id 37
-- hui_abv MBS site_id 35
-- hui_abv MMB site_id 33
-- hui_abv MML site_id 32
-- hui_abv MON site_id 34
-- hui_abv NHP site_id 38
-- hui_abv NKC site_id 41
-- hui_abv NKN site_id 43
-- hui_abv NKP site_id 39
-- hui_abv NMP site_id 42
-- hui_abv NSB site_id 40
-- hui_abv OCO site_id 14
-- hui_abv OLP site_id 11
-- hui_abv OMM site_id 15
-- hui_abv OPB site_id 17
-- hui_abv OPM site_id 13
-- hui_abv OPP site_id 18
-- hui_abv OSF site_id 12
-- hui_abv OUB site_id 16
-- hui_abv PFF site_id 7
-- hui_abv PLH site_id 8
-- hui_abv PLT site_id 9
-- hui_abv PPU site_id 10
-- hui_abv RAB site_id 4
-- hui_abv RCB site_id 5
-- hui_abv RFN site_id 21
-- hui_abv RFS site_id 23
-- hui_abv RHL site_id 19
-- hui_abv RKO site_id 24
-- hui_abv RKS site_id 3
-- hui_abv RKV site_id 25
-- hui_abv RMO site_id 20
-- hui_abv RNS site_id 1
-- hui_abv RON site_id 22
-- hui_abv RPO site_id 2
-- hui_abv RWA site_id 6
-- hui_abv WKB site_id 45
-- hui_abv WKD site_id 44
-- hui_abv WPL site_id 48
-- hui_abv WPO site_id 49
-- hui_abv WUL site_id 46
-- hui_abv WWA site_id 47
-- lab_code LLHS lab_id 1
-- lab_code NMS lab_id 2
-- session :  1 session_id auto_increment : 28

-- insert this session
insert into sessions (lab_id, session_number, start_date) values (2, 1, '2017-11-07');
insert into samples (site_id, date_and_time, moon, qa_code, session_id, temperature, salinity, dissolved_oxygen, dissolved_oxygen_pct, ph, turbidity_1, turbidity_2, turbidity_3)   values (26,'2017-11-07 8:20',19,162,28,26.1,33.7,5.47,81.5,8.19,8.31,7.70,8.58);
insert into sample_workers (sample_id, worker_id)   values (488,18);
insert into sample_workers (sample_id, worker_id)   values (488,19);
insert into sample_workers (sample_id, worker_id)   values (488,20);
insert into samples (site_id, date_and_time, moon, qa_code, session_id, temperature, salinity, dissolved_oxygen, dissolved_oxygen_pct, ph, turbidity_1, turbidity_2, turbidity_3)   values (27,'2017-11-07 9:05',19,162,28,26.8,34.7,5.97,90.5,8.22,5.14,5.12,5.25);
insert into sample_workers (sample_id, worker_id)   values (489,18);
insert into sample_workers (sample_id, worker_id)   values (489,19);
insert into sample_workers (sample_id, worker_id)   values (489,20);
insert into samples (site_id, date_and_time, moon, qa_code, session_id, temperature, salinity, dissolved_oxygen, dissolved_oxygen_pct, ph, turbidity_1, turbidity_2, turbidity_3)   values (28,'2017-11-07 9:27',19,162,28,27.0,34.8,6.26,95.2,8.22,8.88,8.32,8.21);
insert into sample_workers (sample_id, worker_id)   values (490,18);
insert into sample_workers (sample_id, worker_id)   values (490,19);
insert into sample_workers (sample_id, worker_id)   values (490,20);
insert into samples (site_id, date_and_time, moon, qa_code, session_id, temperature, salinity, dissolved_oxygen, dissolved_oxygen_pct, ph, turbidity_1, turbidity_2, turbidity_3)   values (29,'2017-11-07 9:55',19,162,28,26.9,34.3,6.24,94.5,8.24,1.31,0.98,1.08);
insert into sample_workers (sample_id, worker_id)   values (491,18);
insert into sample_workers (sample_id, worker_id)   values (491,19);
insert into sample_workers (sample_id, worker_id)   values (491,20);
insert into samples (site_id, date_and_time, moon, qa_code, session_id, temperature, salinity, dissolved_oxygen, dissolved_oxygen_pct, ph, turbidity_1, turbidity_2, turbidity_3)   values (30,'2017-11-07 10:23',19,162,28,27.7,35.0,6.44,98.7,8.27,0.97,0.91,1.11);
insert into sample_workers (sample_id, worker_id)   values (492,18);
insert into sample_workers (sample_id, worker_id)   values (492,19);
insert into sample_workers (sample_id, worker_id)   values (492,20);
insert into samples (site_id, date_and_time, moon, qa_code, session_id, temperature, salinity, dissolved_oxygen, dissolved_oxygen_pct, ph, turbidity_1, turbidity_2, turbidity_3)   values (31,'2017-11-07 10:50',19,162,28,28.0,35.6,6.36,98.9,8.26,1.10,1.43,1.22);
insert into sample_workers (sample_id, worker_id)   values (493,18);
insert into sample_workers (sample_id, worker_id)   values (493,19);
insert into sample_workers (sample_id, worker_id)   values (493,20);
insert into samples (site_id, date_and_time, moon, qa_code, session_id, temperature, salinity, dissolved_oxygen, dissolved_oxygen_pct, ph, turbidity_1, turbidity_2, turbidity_3)   values (32,'2017-11-08 8:30',20,162,28,26.7,35.2,6.45,97.8,8.26,1.41,1.48,1.44);
insert into sample_workers (sample_id, worker_id)   values (494,23);
insert into sample_workers (sample_id, worker_id)   values (494,24);
insert into sample_workers (sample_id, worker_id)   values (494,25);
insert into samples (site_id, date_and_time, moon, qa_code, session_id, temperature, salinity, dissolved_oxygen, dissolved_oxygen_pct, ph, turbidity_1, turbidity_2, turbidity_3)   values (33,'2017-11-08 8:52',20,162,28,26.9,35.4,6.43,98.1,8.28,0.60,0.61,0.64);
insert into sample_workers (sample_id, worker_id)   values (495,23);
insert into sample_workers (sample_id, worker_id)   values (495,24);
insert into sample_workers (sample_id, worker_id)   values (495,25);
insert into samples (site_id, date_and_time, moon, qa_code, session_id, temperature, salinity, dissolved_oxygen, dissolved_oxygen_pct, ph, turbidity_1, turbidity_2, turbidity_3)   values (34,'2017-11-08 9:27',20,162,28,26.8,35.5,6.07,92.5,8.19,1.13,1.11,1.22);
insert into sample_workers (sample_id, worker_id)   values (496,23);
insert into sample_workers (sample_id, worker_id)   values (496,24);
insert into sample_workers (sample_id, worker_id)   values (496,25);
insert into samples (site_id, date_and_time, moon, qa_code, session_id, temperature, salinity, dissolved_oxygen, dissolved_oxygen_pct, ph, turbidity_1, turbidity_2, turbidity_3)   values (35,'2017-11-08 9:57',20,162,28,26.7,35.4,6.55,99.5,8.26,0.71,0.71,0.75);
insert into sample_workers (sample_id, worker_id)   values (497,23);
insert into sample_workers (sample_id, worker_id)   values (497,24);
insert into sample_workers (sample_id, worker_id)   values (497,25);
-- session :  2 session_id auto_increment : 29

-- insert this session
insert into sessions (lab_id, session_number, start_date) values (2, 2, '2017-11-21');
insert into samples (site_id, date_and_time, moon, qa_code, session_id, temperature, salinity, dissolved_oxygen, dissolved_oxygen_pct, ph, turbidity_1, turbidity_2, turbidity_3)   values (26,'2017-11-21 8:05',5,162,29,23.6,33.6,5.97,85.4,8.13,11.10,11.30,11.30);
insert into sample_workers (sample_id, worker_id)   values (498,18);
insert into sample_workers (sample_id, worker_id)   values (498,21);
insert into sample_workers (sample_id, worker_id)   values (498,22);
insert into samples (site_id, date_and_time, moon, qa_code, session_id, temperature, salinity, dissolved_oxygen, dissolved_oxygen_pct, ph, turbidity_1, turbidity_2, turbidity_3)   values (27,'2017-11-21 8:34',5,162,29,24.4,34.9,6.27,91.6,8.24,3.11,3.65,3.61);
insert into sample_workers (sample_id, worker_id)   values (499,18);
insert into sample_workers (sample_id, worker_id)   values (499,21);
insert into sample_workers (sample_id, worker_id)   values (499,22);
insert into samples (site_id, date_and_time, moon, qa_code, session_id, temperature, salinity, dissolved_oxygen, dissolved_oxygen_pct, ph, turbidity_1, turbidity_2, turbidity_3)   values (28,'2017-11-21 9:00',5,162,29,23.7,34.8,6.56,94.8,8.20,3.50,3.33,3.60);
insert into sample_workers (sample_id, worker_id)   values (500,18);
insert into sample_workers (sample_id, worker_id)   values (500,21);
insert into sample_workers (sample_id, worker_id)   values (500,22);
insert into samples (site_id, date_and_time, moon, qa_code, session_id, temperature, salinity, dissolved_oxygen, dissolved_oxygen_pct, ph, turbidity_1, turbidity_2, turbidity_3)   values (29,'2017-11-21 9:20',5,162,29,25.3,34.2,6.41,94.7,8.17,1.12,0.85,0.92);
insert into sample_workers (sample_id, worker_id)   values (501,18);
insert into sample_workers (sample_id, worker_id)   values (501,21);
insert into sample_workers (sample_id, worker_id)   values (501,22);
insert into samples (site_id, date_and_time, moon, qa_code, session_id, temperature, salinity, dissolved_oxygen, dissolved_oxygen_pct, ph, turbidity_1, turbidity_2, turbidity_3)   values (30,'2017-11-21 9:34',5,162,29,25.7,35.6,6.58,98.4,8.22,0.69,0.79,0.69);
insert into sample_workers (sample_id, worker_id)   values (502,18);
insert into sample_workers (sample_id, worker_id)   values (502,21);
insert into sample_workers (sample_id, worker_id)   values (502,22);
insert into samples (site_id, date_and_time, moon, qa_code, session_id, temperature, salinity, dissolved_oxygen, dissolved_oxygen_pct, ph, turbidity_1, turbidity_2, turbidity_3)   values (31,'2017-11-21 10:04',5,162,29,25.7,36.1,6.50,97.7,8.21,0.45,0.55,0.49);
insert into sample_workers (sample_id, worker_id)   values (503,18);
insert into sample_workers (sample_id, worker_id)   values (503,21);
insert into sample_workers (sample_id, worker_id)   values (503,22);
insert into samples (site_id, date_and_time, moon, qa_code, session_id, temperature, salinity, dissolved_oxygen, dissolved_oxygen_pct, ph, turbidity_1, turbidity_2, turbidity_3)   values (32,'2017-11-22 8:05',6,162,29,25.5,36.1,6.47,96.7,8.24,0.56,0.58,0.54);
insert into sample_workers (sample_id, worker_id)   values (504,26);
insert into sample_workers (sample_id, worker_id)   values (504,24);
insert into sample_workers (sample_id, worker_id)   values (504,25);
insert into samples (site_id, date_and_time, moon, qa_code, session_id, temperature, salinity, dissolved_oxygen, dissolved_oxygen_pct, ph, turbidity_1, turbidity_2, turbidity_3)   values (33,'2017-11-22 8:40',6,162,29,25.4,36.2,6.58,98.3,8.24,0.52,0.53,0.49);
insert into sample_workers (sample_id, worker_id)   values (505,26);
insert into sample_workers (sample_id, worker_id)   values (505,24);
insert into sample_workers (sample_id, worker_id)   values (505,25);
insert into samples (site_id, date_and_time, moon, qa_code, session_id, temperature, salinity, dissolved_oxygen, dissolved_oxygen_pct, ph, turbidity_1, turbidity_2, turbidity_3)   values (34,'2017-11-22 9:10',6,162,29,25.6,36.1,6.78,101.5,8.25,1.95,2.01,2.04);
insert into sample_workers (sample_id, worker_id)   values (506,26);
insert into sample_workers (sample_id, worker_id)   values (506,24);
insert into sample_workers (sample_id, worker_id)   values (506,25);
insert into samples (site_id, date_and_time, moon, qa_code, session_id, temperature, salinity, dissolved_oxygen, dissolved_oxygen_pct, ph, turbidity_1, turbidity_2, turbidity_3)   values (35,'2017-11-22 9:30',6,162,29,26.1,35.9,6.59,99.3,8.25,0.44,0.43,0.44);
insert into sample_workers (sample_id, worker_id)   values (507,26);
insert into sample_workers (sample_id, worker_id)   values (507,24);
insert into sample_workers (sample_id, worker_id)   values (507,25);
insert into samples (site_id, date_and_time, moon, qa_code, session_id, temperature, salinity, dissolved_oxygen, dissolved_oxygen_pct, ph, turbidity_1, turbidity_2, turbidity_3)   values (36,'2017-11-22 10:15',6,162,29,25.7,36.1,7.17,107.5,8.28,0.60,0.69,0.70);
insert into sample_workers (sample_id, worker_id)   values (508,26);
insert into sample_workers (sample_id, worker_id)   values (508,24);
insert into sample_workers (sample_id, worker_id)   values (508,25);
insert into samples (site_id, date_and_time, moon, qa_code, session_id, temperature, salinity, dissolved_oxygen, dissolved_oxygen_pct, ph, turbidity_1, turbidity_2, turbidity_3)   values (37,'2017-11-22 10:40',6,162,29,25.5,35.6,6.85,102.3,8.27,0.84,1.09,0.84);
insert into sample_workers (sample_id, worker_id)   values (509,26);
insert into sample_workers (sample_id, worker_id)   values (509,24);
insert into sample_workers (sample_id, worker_id)   values (509,25);
-- session :  3 session_id auto_increment : 30

-- insert this session
insert into sessions (lab_id, session_number, start_date) values (2, 3, '2017-12-05');
insert into samples (site_id, date_and_time, moon, qa_code, session_id, temperature, salinity, dissolved_oxygen, dissolved_oxygen_pct, ph, turbidity_1, turbidity_2, turbidity_3)   values (26,'2017-12-05 8:05',18,162,30,23.2,33.2,6.48,91.5,8.13,7.91,7.71,7.79);
insert into sample_workers (sample_id, worker_id)   values (510,21);
insert into sample_workers (sample_id, worker_id)   values (510,22);
insert into sample_workers (sample_id, worker_id)   values (510,20);
insert into samples (site_id, date_and_time, moon, qa_code, session_id, temperature, salinity, dissolved_oxygen, dissolved_oxygen_pct, ph, turbidity_1, turbidity_2, turbidity_3)   values (27,'2017-12-05 8:40',18,162,30,23.7,33.7,6.33,90.7,8.15,5.95,5.53,5.81);
insert into sample_workers (sample_id, worker_id)   values (511,21);
insert into sample_workers (sample_id, worker_id)   values (511,22);
insert into sample_workers (sample_id, worker_id)   values (511,20);
insert into samples (site_id, date_and_time, moon, qa_code, session_id, temperature, salinity, dissolved_oxygen, dissolved_oxygen_pct, ph, turbidity_1, turbidity_2, turbidity_3)   values (28,'2017-12-05 9:00',18,162,30,23.2,34.5,6.46,91.8,8.16,5.79,6.95,6.32);
insert into sample_workers (sample_id, worker_id)   values (512,21);
insert into sample_workers (sample_id, worker_id)   values (512,22);
insert into sample_workers (sample_id, worker_id)   values (512,20);
insert into samples (site_id, date_and_time, moon, qa_code, session_id, temperature, salinity, dissolved_oxygen, dissolved_oxygen_pct, ph, turbidity_1, turbidity_2, turbidity_3)   values (29,'2017-12-05 9:20',18,162,30,24.2,33.3,6.33,91.0,8.13,1.88,1.98,2.20);
insert into sample_workers (sample_id, worker_id)   values (513,21);
insert into sample_workers (sample_id, worker_id)   values (513,22);
insert into sample_workers (sample_id, worker_id)   values (513,20);
insert into samples (site_id, date_and_time, moon, qa_code, session_id, temperature, salinity, dissolved_oxygen, dissolved_oxygen_pct, ph, turbidity_1, turbidity_2, turbidity_3)   values (30,'2017-12-05 9:40',18,162,30,24.3,35.2,8.14,97.0,8.19,2.09,2.07,2.02);
insert into sample_workers (sample_id, worker_id)   values (514,21);
insert into sample_workers (sample_id, worker_id)   values (514,22);
insert into sample_workers (sample_id, worker_id)   values (514,20);
insert into samples (site_id, date_and_time, moon, qa_code, session_id, temperature, salinity, dissolved_oxygen, dissolved_oxygen_pct, ph, turbidity_1, turbidity_2, turbidity_3)   values (31,'2017-12-05 10:00',18,162,30,24.7,35.6,6.67,98.1,8.19,0.62,0.55,0.57);
insert into sample_workers (sample_id, worker_id)   values (515,21);
insert into sample_workers (sample_id, worker_id)   values (515,22);
insert into sample_workers (sample_id, worker_id)   values (515,20);
insert into samples (site_id, date_and_time, moon, qa_code, session_id, temperature, salinity, dissolved_oxygen, dissolved_oxygen_pct, ph, turbidity_1, turbidity_2, turbidity_3)   values (32,'2017-12-06 8:05',19,162,30,23.9,35.4,6.62,95.4,8.18,0.56,0.51,0.52);
insert into sample_workers (sample_id, worker_id)   values (516,23);
insert into sample_workers (sample_id, worker_id)   values (516,24);
insert into sample_workers (sample_id, worker_id)   values (516,25);
insert into samples (site_id, date_and_time, moon, qa_code, session_id, temperature, salinity, dissolved_oxygen, dissolved_oxygen_pct, ph, turbidity_1, turbidity_2, turbidity_3)   values (33,'2017-12-06 8:30',19,162,30,24.2,35.6,6.60,96.0,8.20,0.70,0.64,0.70);
insert into sample_workers (sample_id, worker_id)   values (517,23);
insert into sample_workers (sample_id, worker_id)   values (517,24);
insert into sample_workers (sample_id, worker_id)   values (517,25);
insert into samples (site_id, date_and_time, moon, qa_code, session_id, temperature, salinity, dissolved_oxygen, dissolved_oxygen_pct, ph, turbidity_1, turbidity_2, turbidity_3)   values (36,'2017-12-06 9:05',19,162,30,24.2,35.5,6.88,100.1,8.12,1.19,1.34,1.14);
insert into sample_workers (sample_id, worker_id)   values (518,23);
insert into sample_workers (sample_id, worker_id)   values (518,24);
insert into sample_workers (sample_id, worker_id)   values (518,25);
insert into samples (site_id, date_and_time, moon, qa_code, session_id, temperature, salinity, dissolved_oxygen, dissolved_oxygen_pct, ph, turbidity_1, turbidity_2, turbidity_3)   values (37,'2017-12-06 9:35',19,162,30,24.8,35.8,6.73,99.0,8.20,0.70,0.75,0.70);
insert into sample_workers (sample_id, worker_id)   values (519,23);
insert into sample_workers (sample_id, worker_id)   values (519,24);
insert into sample_workers (sample_id, worker_id)   values (519,25);
-- session :  4 session_id auto_increment : 31

-- insert this session
insert into sessions (lab_id, session_number, start_date) values (2, 4, '2017-12-19');
insert into samples (site_id, date_and_time, moon, qa_code, session_id, temperature, salinity, dissolved_oxygen, dissolved_oxygen_pct, ph, turbidity_1, turbidity_2, turbidity_3)   values (26,'2017-12-19 8:13',3,162,31,24.5,34.4,6.47,94.4,8.08,20.10,20.70,19.80);
insert into sample_workers (sample_id, worker_id)   values (520,20);
insert into sample_workers (sample_id, worker_id)   values (520,21);
insert into sample_workers (sample_id, worker_id)   values (520,19);
insert into samples (site_id, date_and_time, moon, qa_code, session_id, temperature, salinity, dissolved_oxygen, dissolved_oxygen_pct, ph, turbidity_1, turbidity_2, turbidity_3)   values (27,'2017-12-19 8:35',3,162,31,25.1,34.0,6.04,88.9,8.12,7.32,7.37,7.28);
insert into sample_workers (sample_id, worker_id)   values (521,20);
insert into sample_workers (sample_id, worker_id)   values (521,21);
insert into sample_workers (sample_id, worker_id)   values (521,19);
insert into samples (site_id, date_and_time, moon, qa_code, session_id, temperature, salinity, dissolved_oxygen, dissolved_oxygen_pct, ph, turbidity_1, turbidity_2, turbidity_3)   values (28,'2017-12-19 8:50',3,162,31,25.0,34.4,6.44,94.8,8.14,4.99,5.53,5.33);
insert into sample_workers (sample_id, worker_id)   values (522,20);
insert into sample_workers (sample_id, worker_id)   values (522,21);
insert into sample_workers (sample_id, worker_id)   values (522,19);
insert into samples (site_id, date_and_time, moon, qa_code, session_id, temperature, salinity, dissolved_oxygen, dissolved_oxygen_pct, ph, turbidity_1, turbidity_2, turbidity_3)   values (29,'2017-12-19 9:05',3,162,31,25.2,32.3,6.22,90.7,8.12,3.37,4.06,3.74);
insert into sample_workers (sample_id, worker_id)   values (523,20);
insert into sample_workers (sample_id, worker_id)   values (523,21);
insert into sample_workers (sample_id, worker_id)   values (523,19);
insert into samples (site_id, date_and_time, moon, qa_code, session_id, temperature, salinity, dissolved_oxygen, dissolved_oxygen_pct, ph, turbidity_1, turbidity_2, turbidity_3)   values (30,'2017-12-19 9:29',3,162,31,25.2,34.9,6.64,98.4,8.20,1.72,1.20,1.38);
insert into sample_workers (sample_id, worker_id)   values (524,20);
insert into sample_workers (sample_id, worker_id)   values (524,21);
insert into sample_workers (sample_id, worker_id)   values (524,19);
insert into samples (site_id, date_and_time, moon, qa_code, session_id, temperature, salinity, dissolved_oxygen, dissolved_oxygen_pct, ph, turbidity_1, turbidity_2, turbidity_3)   values (31,'2017-12-19 9:45',3,162,31,25.4,35.1,6.58,98.0,8.18,0.69,0.65,0.92);
insert into sample_workers (sample_id, worker_id)   values (525,20);
insert into sample_workers (sample_id, worker_id)   values (525,21);
insert into sample_workers (sample_id, worker_id)   values (525,19);
insert into samples (site_id, date_and_time, moon, qa_code, session_id, temperature, salinity, dissolved_oxygen, dissolved_oxygen_pct, ph, turbidity_1, turbidity_2, turbidity_3)   values (32,'2017-12-20 8:05',3,162,31,24.5,35.4,6.71,98.6,8.31,1.11,1.46,1.14);
insert into sample_workers (sample_id, worker_id)   values (526,24);
insert into sample_workers (sample_id, worker_id)   values (526,26);
insert into sample_workers (sample_id, worker_id)   values (526,25);
insert into samples (site_id, date_and_time, moon, qa_code, session_id, temperature, salinity, dissolved_oxygen, dissolved_oxygen_pct, ph, turbidity_1, turbidity_2, turbidity_3)   values (33,'2017-12-20 8:30',3,162,31,24.4,35.3,6.75,99.0,8.30,0.84,0.92,1.05);
insert into sample_workers (sample_id, worker_id)   values (527,24);
insert into sample_workers (sample_id, worker_id)   values (527,26);
insert into sample_workers (sample_id, worker_id)   values (527,25);
insert into samples (site_id, date_and_time, moon, qa_code, session_id, temperature, salinity, dissolved_oxygen, dissolved_oxygen_pct, ph, turbidity_1, turbidity_2, turbidity_3)   values (34,'2017-12-20 8:55',3,162,31,24.5,35.3,6.74,98.9,8.28,1.67,2.00,1.85);
insert into sample_workers (sample_id, worker_id)   values (528,24);
insert into sample_workers (sample_id, worker_id)   values (528,26);
insert into sample_workers (sample_id, worker_id)   values (528,25);
insert into samples (site_id, date_and_time, moon, qa_code, session_id, temperature, salinity, dissolved_oxygen, dissolved_oxygen_pct, ph, turbidity_1, turbidity_2, turbidity_3)   values (35,'2017-12-20 9:17',3,162,31,24.7,35.4,6.68,98.3,8.31,0.55,0.59,0.55);
insert into sample_workers (sample_id, worker_id)   values (529,24);
insert into sample_workers (sample_id, worker_id)   values (529,26);
insert into sample_workers (sample_id, worker_id)   values (529,25);
insert into samples (site_id, date_and_time, moon, qa_code, session_id, temperature, salinity, dissolved_oxygen, dissolved_oxygen_pct, ph, turbidity_1, turbidity_2, turbidity_3)   values (36,'2017-12-20 9:36',3,162,31,24.4,35.2,6.37,93.4,8.17,0.72,0.76,0.87);
insert into sample_workers (sample_id, worker_id)   values (530,24);
insert into sample_workers (sample_id, worker_id)   values (530,26);
insert into sample_workers (sample_id, worker_id)   values (530,25);
insert into samples (site_id, date_and_time, moon, qa_code, session_id, temperature, salinity, dissolved_oxygen, dissolved_oxygen_pct, ph, turbidity_1, turbidity_2, turbidity_3)   values (37,'2017-12-20 9:56',3,162,31,24.4,34.3,6.56,95.5,8.16,0.88,0.93,0.97);
insert into sample_workers (sample_id, worker_id)   values (531,24);
insert into sample_workers (sample_id, worker_id)   values (531,26);
insert into sample_workers (sample_id, worker_id)   values (531,25);
-- session :  5 session_id auto_increment : 32

-- insert this session
insert into sessions (lab_id, session_number, start_date) values (2, 5, '2018-01-09');
insert into samples (site_id, date_and_time, moon, qa_code, session_id, temperature, salinity, dissolved_oxygen, dissolved_oxygen_pct, ph, turbidity_1, turbidity_2, turbidity_3)   values (26,'2018-01-09 8:07',23,162,32,22.4,33.4,6.71,93.3,8.12,21.10,22.10,20.10);
insert into sample_workers (sample_id, worker_id)   values (532,22);
insert into sample_workers (sample_id, worker_id)   values (532,19);
insert into sample_workers (sample_id, worker_id)   values (532,18);
insert into samples (site_id, date_and_time, moon, qa_code, session_id, temperature, salinity, dissolved_oxygen, dissolved_oxygen_pct, ph, turbidity_1, turbidity_2, turbidity_3)   values (27,'2018-01-09 8:35',23,162,32,23.2,33.8,6.61,93.9,8.12,7.95,9.00,8.17);
insert into sample_workers (sample_id, worker_id)   values (533,22);
insert into sample_workers (sample_id, worker_id)   values (533,19);
insert into sample_workers (sample_id, worker_id)   values (533,18);
insert into samples (site_id, date_and_time, moon, qa_code, session_id, temperature, salinity, dissolved_oxygen, dissolved_oxygen_pct, ph, turbidity_1, turbidity_2, turbidity_3)   values (28,'2018-01-09 8:50',23,162,32,23.8,34.9,6.71,96.9,8.15,20.10,21.30,19.30);
insert into sample_workers (sample_id, worker_id)   values (534,22);
insert into sample_workers (sample_id, worker_id)   values (534,19);
insert into sample_workers (sample_id, worker_id)   values (534,18);
insert into samples (site_id, date_and_time, moon, qa_code, session_id, temperature, salinity, dissolved_oxygen, dissolved_oxygen_pct, ph, turbidity_1, turbidity_2, turbidity_3)   values (29,'2018-01-09 9:20',23,162,32,24.5,31.4,6.57,94.0,8.12,4.90,3.76,4.39);
insert into sample_workers (sample_id, worker_id)   values (535,22);
insert into sample_workers (sample_id, worker_id)   values (535,19);
insert into sample_workers (sample_id, worker_id)   values (535,18);
insert into samples (site_id, date_and_time, moon, qa_code, session_id, temperature, salinity, dissolved_oxygen, dissolved_oxygen_pct, ph, turbidity_1, turbidity_2, turbidity_3)   values (30,'2018-01-09 9:35',23,162,32,25.2,35.1,8.72,99.2,8.18,2.05,1.80,1.96);
insert into sample_workers (sample_id, worker_id)   values (536,22);
insert into sample_workers (sample_id, worker_id)   values (536,19);
insert into sample_workers (sample_id, worker_id)   values (536,18);
insert into samples (site_id, date_and_time, moon, qa_code, session_id, temperature, salinity, dissolved_oxygen, dissolved_oxygen_pct, ph, turbidity_1, turbidity_2, turbidity_3)   values (31,'2018-01-09 9:51',23,162,32,25.0,35.1,6.70,98.9,8.18,1.00,0.95,0.94);
insert into sample_workers (sample_id, worker_id)   values (537,22);
insert into sample_workers (sample_id, worker_id)   values (537,19);
insert into sample_workers (sample_id, worker_id)   values (537,18);
insert into samples (site_id, date_and_time, moon, qa_code, session_id, temperature, salinity, dissolved_oxygen, dissolved_oxygen_pct, ph, turbidity_1, turbidity_2, turbidity_3)   values (32,'2018-01-10 7:59',24,162,32,23.8,34.5,6.63,95.0,8.17,1.93,2.08,1.85);
insert into sample_workers (sample_id, worker_id)   values (538,26);
insert into sample_workers (sample_id, worker_id)   values (538,25);
insert into sample_workers (sample_id, worker_id)   values (538,23);
insert into samples (site_id, date_and_time, moon, qa_code, session_id, temperature, salinity, dissolved_oxygen, dissolved_oxygen_pct, ph, turbidity_1, turbidity_2, turbidity_3)   values (33,'2018-01-10 8:25',24,162,32,23.9,34.8,6.87,99.0,8.16,1.39,1.99,1.57);
insert into sample_workers (sample_id, worker_id)   values (539,26);
insert into sample_workers (sample_id, worker_id)   values (539,25);
insert into sample_workers (sample_id, worker_id)   values (539,23);
insert into samples (site_id, date_and_time, moon, qa_code, session_id, temperature, salinity, dissolved_oxygen, dissolved_oxygen_pct, ph, turbidity_1, turbidity_2, turbidity_3)   values (34,'2018-01-10 8:52',24,162,32,24.3,34.9,6.81,98.7,8.13,2.39,2.13,2.16);
insert into sample_workers (sample_id, worker_id)   values (540,26);
insert into sample_workers (sample_id, worker_id)   values (540,25);
insert into sample_workers (sample_id, worker_id)   values (540,23);
insert into samples (site_id, date_and_time, moon, qa_code, session_id, temperature, salinity, dissolved_oxygen, dissolved_oxygen_pct, ph, turbidity_1, turbidity_2, turbidity_3)   values (35,'2018-01-10 9:15',24,162,32,24.6,35.3,6.72,98.2,8.20,0.44,0.46,0.44);
insert into sample_workers (sample_id, worker_id)   values (541,26);
insert into sample_workers (sample_id, worker_id)   values (541,25);
insert into sample_workers (sample_id, worker_id)   values (541,23);
insert into samples (site_id, date_and_time, moon, qa_code, session_id, temperature, salinity, dissolved_oxygen, dissolved_oxygen_pct, ph, turbidity_1, turbidity_2, turbidity_3)   values (36,'2018-01-10 9:45',24,162,32,24.7,35.1,7.11,104.1,8.10,0.86,0.80,0.85);
insert into sample_workers (sample_id, worker_id)   values (542,26);
insert into sample_workers (sample_id, worker_id)   values (542,25);
insert into sample_workers (sample_id, worker_id)   values (542,23);
insert into samples (site_id, date_and_time, moon, qa_code, session_id, temperature, salinity, dissolved_oxygen, dissolved_oxygen_pct, ph, turbidity_1, turbidity_2, turbidity_3)   values (37,'2018-01-10 10:10',24,162,32,24.5,35.2,6.67,97.3,8.10,0.57,0.56,0.83);
insert into sample_workers (sample_id, worker_id)   values (543,26);
insert into sample_workers (sample_id, worker_id)   values (543,25);
insert into sample_workers (sample_id, worker_id)   values (543,23);
-- session :  6 session_id auto_increment : 33

-- insert this session
insert into sessions (lab_id, session_number, start_date) values (2, 6, '2018-01-23');
insert into samples (site_id, date_and_time, moon, qa_code, session_id, temperature, salinity, dissolved_oxygen, dissolved_oxygen_pct, ph, turbidity_1, turbidity_2, turbidity_3)   values (26,'2018-01-23 7:55',8,162,33,23.3,35.2,6.53,93.4,8.08,23.50,25.20,25.50);
insert into sample_workers (sample_id, worker_id)   values (544,20);
insert into sample_workers (sample_id, worker_id)   values (544,21);
insert into sample_workers (sample_id, worker_id)   values (544,22);
insert into samples (site_id, date_and_time, moon, qa_code, session_id, temperature, salinity, dissolved_oxygen, dissolved_oxygen_pct, ph, turbidity_1, turbidity_2, turbidity_3)   values (27,'2018-01-23 8:21',8,162,33,23.4,33.8,6.26,89.1,8.13,10.10,11.30,10.50);
insert into sample_workers (sample_id, worker_id)   values (545,20);
insert into sample_workers (sample_id, worker_id)   values (545,21);
insert into sample_workers (sample_id, worker_id)   values (545,22);
insert into samples (site_id, date_and_time, moon, qa_code, session_id, temperature, salinity, dissolved_oxygen, dissolved_oxygen_pct, ph, turbidity_1, turbidity_2, turbidity_3)   values (28,'2018-01-23 8:35',8,162,33,23.9,35.2,6.76,97.7,8.15,11.10,11.30,10.90);
insert into sample_workers (sample_id, worker_id)   values (546,20);
insert into sample_workers (sample_id, worker_id)   values (546,21);
insert into sample_workers (sample_id, worker_id)   values (546,22);
insert into samples (site_id, date_and_time, moon, qa_code, session_id, temperature, salinity, dissolved_oxygen, dissolved_oxygen_pct, ph, turbidity_1, turbidity_2, turbidity_3)   values (29,'2018-01-23 9:00',8,162,33,24.4,34.0,6.70,97.1,8.13,7.83,8.08,7.91);
insert into sample_workers (sample_id, worker_id)   values (547,20);
insert into sample_workers (sample_id, worker_id)   values (547,21);
insert into sample_workers (sample_id, worker_id)   values (547,22);
insert into samples (site_id, date_and_time, moon, qa_code, session_id, temperature, salinity, dissolved_oxygen, dissolved_oxygen_pct, ph, turbidity_1, turbidity_2, turbidity_3)   values (30,'2018-01-23 9:15',8,162,33,24.9,35.5,6.69,98.7,8.18,2.98,2.88,3.04);
insert into sample_workers (sample_id, worker_id)   values (548,20);
insert into sample_workers (sample_id, worker_id)   values (548,21);
insert into sample_workers (sample_id, worker_id)   values (548,22);
insert into samples (site_id, date_and_time, moon, qa_code, session_id, temperature, salinity, dissolved_oxygen, dissolved_oxygen_pct, ph, turbidity_1, turbidity_2, turbidity_3)   values (31,'2018-01-23 9:30',8,162,33,24.6,35.7,6.67,98.3,8.17,1.29,1.13,1.25);
insert into sample_workers (sample_id, worker_id)   values (549,20);
insert into sample_workers (sample_id, worker_id)   values (549,21);
insert into sample_workers (sample_id, worker_id)   values (549,22);
insert into samples (site_id, date_and_time, moon, qa_code, session_id, temperature, salinity, dissolved_oxygen, dissolved_oxygen_pct, ph, turbidity_1, turbidity_2, turbidity_3)   values (32,'2018-01-24 8:00',9,162,33,24.4,35.4,6.67,99.6,8.17,1.18,1.23,1.36);
insert into sample_workers (sample_id, worker_id)   values (550,11);
insert into sample_workers (sample_id, worker_id)   values (550,23);
insert into sample_workers (sample_id, worker_id)   values (550,26);
insert into samples (site_id, date_and_time, moon, qa_code, session_id, temperature, salinity, dissolved_oxygen, dissolved_oxygen_pct, ph, turbidity_1, turbidity_2, turbidity_3)   values (33,'2018-01-24 8:31',9,162,33,24.5,35.7,6.84,100.7,8.19,1.03,1.14,1.18);
insert into sample_workers (sample_id, worker_id)   values (551,11);
insert into sample_workers (sample_id, worker_id)   values (551,23);
insert into sample_workers (sample_id, worker_id)   values (551,26);
insert into samples (site_id, date_and_time, moon, qa_code, session_id, temperature, salinity, dissolved_oxygen, dissolved_oxygen_pct, ph, turbidity_1, turbidity_2, turbidity_3)   values (34,'2018-01-24 8:58',9,162,33,24.4,35.6,6.79,99.5,8.13,3.54,3.34,3.63);
insert into sample_workers (sample_id, worker_id)   values (552,11);
insert into sample_workers (sample_id, worker_id)   values (552,23);
insert into sample_workers (sample_id, worker_id)   values (552,26);
insert into samples (site_id, date_and_time, moon, qa_code, session_id, temperature, salinity, dissolved_oxygen, dissolved_oxygen_pct, ph, turbidity_1, turbidity_2, turbidity_3)   values (35,'2018-01-24 9:22',9,162,33,24.8,35.8,6.72,99.2,8.19,0.52,0.58,0.57);
insert into sample_workers (sample_id, worker_id)   values (553,11);
insert into sample_workers (sample_id, worker_id)   values (553,23);
insert into sample_workers (sample_id, worker_id)   values (553,26);
insert into samples (site_id, date_and_time, moon, qa_code, session_id, temperature, salinity, dissolved_oxygen, dissolved_oxygen_pct, ph, turbidity_1, turbidity_2, turbidity_3)   values (36,'2018-01-24 9:50',9,162,33,24.9,35.5,7.21,106.6,8.14,0.68,0.61,0.78);
insert into sample_workers (sample_id, worker_id)   values (554,11);
insert into sample_workers (sample_id, worker_id)   values (554,23);
insert into sample_workers (sample_id, worker_id)   values (554,26);
insert into samples (site_id, date_and_time, moon, qa_code, session_id, temperature, salinity, dissolved_oxygen, dissolved_oxygen_pct, ph, turbidity_1, turbidity_2, turbidity_3)   values (37,'2018-01-24 9:55',9,162,33,24.8,35.3,6.68,98.5,8.13,0.97,0.83,0.96);
insert into sample_workers (sample_id, worker_id)   values (555,11);
insert into sample_workers (sample_id, worker_id)   values (555,23);
insert into sample_workers (sample_id, worker_id)   values (555,26);
-- session :  7 session_id auto_increment : 34

-- insert this session
insert into sessions (lab_id, session_number, start_date) values (2, 7, '2018-02-06');
insert into samples (site_id, date_and_time, moon, qa_code, session_id, temperature, salinity, dissolved_oxygen, dissolved_oxygen_pct, ph, turbidity_1, turbidity_2, turbidity_3)   values (26,'2018-02-06 7:55',21,162,34,23.7,34.9,6.63,95.9,8.11,35.00,33.10,33.70);
insert into sample_workers (sample_id, worker_id)   values (556,20);
insert into sample_workers (sample_id, worker_id)   values (556,19);
insert into sample_workers (sample_id, worker_id)   values (556,21);
insert into samples (site_id, date_and_time, moon, qa_code, session_id, temperature, salinity, dissolved_oxygen, dissolved_oxygen_pct, ph, turbidity_1, turbidity_2, turbidity_3)   values (27,'2018-02-06 8:15',21,162,34,23.7,34.1,6.73,97.0,8.11,17.70,17.30,17.40);
insert into sample_workers (sample_id, worker_id)   values (557,20);
insert into sample_workers (sample_id, worker_id)   values (557,19);
insert into sample_workers (sample_id, worker_id)   values (557,21);
insert into samples (site_id, date_and_time, moon, qa_code, session_id, temperature, salinity, dissolved_oxygen, dissolved_oxygen_pct, ph, turbidity_1, turbidity_2, turbidity_3)   values (28,'2018-02-06 8:33',21,162,34,24.2,35.2,6.66,97.5,8.11,15.40,16.50,15.70);
insert into sample_workers (sample_id, worker_id)   values (558,20);
insert into sample_workers (sample_id, worker_id)   values (558,19);
insert into sample_workers (sample_id, worker_id)   values (558,21);
insert into samples (site_id, date_and_time, moon, qa_code, session_id, temperature, salinity, dissolved_oxygen, dissolved_oxygen_pct, ph, turbidity_1, turbidity_2, turbidity_3)   values (29,'2018-02-06 8:49',21,162,34,24.2,34.3,6.80,98.6,8.14,7.51,8.33,7.92);
insert into sample_workers (sample_id, worker_id)   values (559,20);
insert into sample_workers (sample_id, worker_id)   values (559,19);
insert into sample_workers (sample_id, worker_id)   values (559,21);
insert into samples (site_id, date_and_time, moon, qa_code, session_id, temperature, salinity, dissolved_oxygen, dissolved_oxygen_pct, ph, turbidity_1, turbidity_2, turbidity_3)   values (30,'2018-02-06 9:10',21,162,34,24.8,35.4,6.72,99.6,8.18,5.79,6.30,6.17);
insert into sample_workers (sample_id, worker_id)   values (560,20);
insert into sample_workers (sample_id, worker_id)   values (560,19);
insert into sample_workers (sample_id, worker_id)   values (560,21);
insert into samples (site_id, date_and_time, moon, qa_code, session_id, temperature, salinity, dissolved_oxygen, dissolved_oxygen_pct, ph, turbidity_1, turbidity_2, turbidity_3)   values (31,'2018-02-06 9:23',21,162,34,24.7,35.4,6.71,99.3,8.18,2.74,3.26,3.26);
insert into sample_workers (sample_id, worker_id)   values (561,20);
insert into sample_workers (sample_id, worker_id)   values (561,19);
insert into sample_workers (sample_id, worker_id)   values (561,21);
insert into samples (site_id, date_and_time, moon, qa_code, session_id, temperature, salinity, dissolved_oxygen, dissolved_oxygen_pct, ph, turbidity_1, turbidity_2, turbidity_3)   values (32,'2018-02-07 8:00',22,162,34,24.4,34.4,6.72,98.1,8.16,1.13,1.22,1.15);
insert into sample_workers (sample_id, worker_id)   values (562,25);
insert into sample_workers (sample_id, worker_id)   values (562,23);
insert into sample_workers (sample_id, worker_id)   values (562,35);
insert into samples (site_id, date_and_time, moon, qa_code, session_id, temperature, salinity, dissolved_oxygen, dissolved_oxygen_pct, ph, turbidity_1, turbidity_2, turbidity_3)   values (33,'2018-02-07 8:25',22,162,34,24.4,35.0,6.82,100.1,8.16,2.39,2.05,1.77);
insert into sample_workers (sample_id, worker_id)   values (563,25);
insert into sample_workers (sample_id, worker_id)   values (563,23);
insert into sample_workers (sample_id, worker_id)   values (563,35);
insert into samples (site_id, date_and_time, moon, qa_code, session_id, temperature, salinity, dissolved_oxygen, dissolved_oxygen_pct, ph, turbidity_1, turbidity_2, turbidity_3)   values (34,'2018-02-07 8:45',22,162,34,24.5,35.1,6.85,100.7,8.14,5.78,6.25,5.61);
insert into sample_workers (sample_id, worker_id)   values (564,25);
insert into sample_workers (sample_id, worker_id)   values (564,23);
insert into sample_workers (sample_id, worker_id)   values (564,35);
insert into samples (site_id, date_and_time, moon, qa_code, session_id, temperature, salinity, dissolved_oxygen, dissolved_oxygen_pct, ph, turbidity_1, turbidity_2, turbidity_3)   values (35,'2018-02-07 9:05',22,162,34,24.9,35.4,6.74,99.8,8.20,0.39,0.45,0.42);
insert into sample_workers (sample_id, worker_id)   values (565,25);
insert into sample_workers (sample_id, worker_id)   values (565,23);
insert into sample_workers (sample_id, worker_id)   values (565,35);
insert into samples (site_id, date_and_time, moon, qa_code, session_id, temperature, salinity, dissolved_oxygen, dissolved_oxygen_pct, ph, turbidity_1, turbidity_2, turbidity_3)   values (36,'2018-02-07 9:25',22,162,34,24.6,35.1,6.95,102.3,8.10,1.41,1.31,1.43);
insert into sample_workers (sample_id, worker_id)   values (566,25);
insert into sample_workers (sample_id, worker_id)   values (566,23);
insert into sample_workers (sample_id, worker_id)   values (566,35);
insert into samples (site_id, date_and_time, moon, qa_code, session_id, temperature, salinity, dissolved_oxygen, dissolved_oxygen_pct, ph, turbidity_1, turbidity_2, turbidity_3)   values (37,'2018-02-07 9:35',22,162,34,25.0,35.1,6.68,99.1,8.13,1.41,1.44,1.57);
insert into sample_workers (sample_id, worker_id)   values (567,25);
insert into sample_workers (sample_id, worker_id)   values (567,23);
insert into sample_workers (sample_id, worker_id)   values (567,35);
-- session :  8 session_id auto_increment : 35

-- insert this session
insert into sessions (lab_id, session_number, start_date) values (2, 8, '2018-02-20');
insert into samples (site_id, date_and_time, moon, qa_code, session_id, temperature, salinity, dissolved_oxygen, dissolved_oxygen_pct, ph, turbidity_1, turbidity_2, turbidity_3)   values (26,'2018-02-20 7:54',5,162,35,22.5,33.6,6.68,93.5,8.08,27.70,27.20,28.30);
insert into sample_workers (sample_id, worker_id)   values (568,20);
insert into sample_workers (sample_id, worker_id)   values (568,19);
insert into sample_workers (sample_id, worker_id)   values (568,21);
insert into samples (site_id, date_and_time, moon, qa_code, session_id, temperature, salinity, dissolved_oxygen, dissolved_oxygen_pct, ph, turbidity_1, turbidity_2, turbidity_3)   values (27,'2018-02-20 8:20',5,162,35,24.0,33.9,6.50,93.6,8.14,9.26,10.40,9.94);
insert into sample_workers (sample_id, worker_id)   values (569,20);
insert into sample_workers (sample_id, worker_id)   values (569,19);
insert into sample_workers (sample_id, worker_id)   values (569,21);
insert into samples (site_id, date_and_time, moon, qa_code, session_id, temperature, salinity, dissolved_oxygen, dissolved_oxygen_pct, ph, turbidity_1, turbidity_2, turbidity_3)   values (28,'2018-02-20 8:42',5,162,35,23.8,34.5,6.77,97.5,8.17,7.72,8.00,8.48);
insert into sample_workers (sample_id, worker_id)   values (570,20);
insert into sample_workers (sample_id, worker_id)   values (570,19);
insert into sample_workers (sample_id, worker_id)   values (570,21);
insert into samples (site_id, date_and_time, moon, qa_code, session_id, temperature, salinity, dissolved_oxygen, dissolved_oxygen_pct, ph, turbidity_1, turbidity_2, turbidity_3)   values (29,'2018-02-20 9:01',5,162,35,24.7,33.5,6.47,94.0,8.13,1.58,1.91,1.59);
insert into sample_workers (sample_id, worker_id)   values (571,20);
insert into sample_workers (sample_id, worker_id)   values (571,19);
insert into sample_workers (sample_id, worker_id)   values (571,21);
insert into samples (site_id, date_and_time, moon, qa_code, session_id, temperature, salinity, dissolved_oxygen, dissolved_oxygen_pct, ph, turbidity_1, turbidity_2, turbidity_3)   values (30,'2018-02-20 9:14',5,162,35,24.9,35.4,6.88,101.4,8.18,2.55,2.49,2.66);
insert into sample_workers (sample_id, worker_id)   values (572,20);
insert into sample_workers (sample_id, worker_id)   values (572,19);
insert into sample_workers (sample_id, worker_id)   values (572,21);
insert into samples (site_id, date_and_time, moon, qa_code, session_id, temperature, salinity, dissolved_oxygen, dissolved_oxygen_pct, ph, turbidity_1, turbidity_2, turbidity_3)   values (31,'2018-02-20 9:36',5,162,35,24.9,35.4,6.66,98.6,8.17,0.74,1.07,1.00);
insert into sample_workers (sample_id, worker_id)   values (573,20);
insert into sample_workers (sample_id, worker_id)   values (573,19);
insert into sample_workers (sample_id, worker_id)   values (573,21);
insert into samples (site_id, date_and_time, moon, qa_code, session_id, temperature, salinity, dissolved_oxygen, dissolved_oxygen_pct, ph, turbidity_1, turbidity_2, turbidity_3)   values (32,'2018-02-21 8:00',6,162,35,24.2,35.4,6.75,98.2,8.16,2.55,3.15,2.91);
insert into sample_workers (sample_id, worker_id)   values (574,24);
insert into sample_workers (sample_id, worker_id)   values (574,23);
insert into sample_workers (sample_id, worker_id)   values (574,36);
insert into samples (site_id, date_and_time, moon, qa_code, session_id, temperature, salinity, dissolved_oxygen, dissolved_oxygen_pct, ph, turbidity_1, turbidity_2, turbidity_3)   values (33,'2018-02-21 8:30',6,162,35,24.2,35.3,6.88,100.3,8.17,1.52,1.61,1.61);
insert into sample_workers (sample_id, worker_id)   values (575,24);
insert into sample_workers (sample_id, worker_id)   values (575,23);
insert into sample_workers (sample_id, worker_id)   values (575,36);
insert into samples (site_id, date_and_time, moon, qa_code, session_id, temperature, salinity, dissolved_oxygen, dissolved_oxygen_pct, ph, turbidity_1, turbidity_2, turbidity_3)   values (34,'2018-02-21 8:56',6,162,35,24.5,35.7,6.72,98.6,8.13,3.24,3.19,3.46);
insert into sample_workers (sample_id, worker_id)   values (576,24);
insert into sample_workers (sample_id, worker_id)   values (576,23);
insert into sample_workers (sample_id, worker_id)   values (576,36);
insert into samples (site_id, date_and_time, moon, qa_code, session_id, temperature, salinity, dissolved_oxygen, dissolved_oxygen_pct, ph, turbidity_1, turbidity_2, turbidity_3)   values (35,'2018-02-21 9:15',6,162,35,24.7,35.8,6.79,100.1,8.18,0.53,0.46,0.45);
insert into sample_workers (sample_id, worker_id)   values (577,24);
insert into sample_workers (sample_id, worker_id)   values (577,23);
insert into sample_workers (sample_id, worker_id)   values (577,36);
insert into samples (site_id, date_and_time, moon, qa_code, session_id, temperature, salinity, dissolved_oxygen, dissolved_oxygen_pct, ph, turbidity_1, turbidity_2, turbidity_3)   values (36,'2018-02-21 10:06',6,162,35,24.9,35.3,7.56,111.8,8.11,0.95,1.13,1.11);
insert into sample_workers (sample_id, worker_id)   values (578,24);
insert into sample_workers (sample_id, worker_id)   values (578,23);
insert into sample_workers (sample_id, worker_id)   values (578,36);
insert into samples (site_id, date_and_time, moon, qa_code, session_id, temperature, salinity, dissolved_oxygen, dissolved_oxygen_pct, ph, turbidity_1, turbidity_2, turbidity_3)   values (37,'2018-02-21 10:08',6,162,35,25.3,35.6,6.64,98.7,8.12,0.97,1.09,1.29);
insert into sample_workers (sample_id, worker_id)   values (579,24);
insert into sample_workers (sample_id, worker_id)   values (579,23);
insert into sample_workers (sample_id, worker_id)   values (579,36);
insert into samples (site_id, date_and_time, moon, qa_code, session_id, temperature, salinity, dissolved_oxygen, dissolved_oxygen_pct, ph, turbidity_1, turbidity_2, turbidity_3)   values (38,'2018-02-22 8:30',8,162,35,24.4,34.7,6.7,97.5,8.14,6.05,6.02,6.09);
insert into sample_workers (sample_id, worker_id)   values (580,29);
insert into sample_workers (sample_id, worker_id)   values (580,30);
insert into sample_workers (sample_id, worker_id)   values (580,31);
insert into samples (site_id, date_and_time, moon, qa_code, session_id, temperature, salinity, dissolved_oxygen, dissolved_oxygen_pct, ph, turbidity_1, turbidity_2, turbidity_3)   values (39,'2018-02-22 9:00',8,162,35,24.4,35.7,6.84,100,8.18,3.55,3.63,4.06);
insert into sample_workers (sample_id, worker_id)   values (581,29);
insert into sample_workers (sample_id, worker_id)   values (581,30);
insert into sample_workers (sample_id, worker_id)   values (581,31);
insert into samples (site_id, date_and_time, moon, qa_code, session_id, temperature, salinity, dissolved_oxygen, dissolved_oxygen_pct, ph, turbidity_1, turbidity_2, turbidity_3)   values (40,'2018-02-22 9:25',8,162,35,24.6,35.5,6.78,99.3,8.17,6.34,6.34,6.92);
insert into sample_workers (sample_id, worker_id)   values (582,29);
insert into sample_workers (sample_id, worker_id)   values (582,30);
insert into sample_workers (sample_id, worker_id)   values (582,31);
insert into samples (site_id, date_and_time, moon, qa_code, session_id, temperature, salinity, dissolved_oxygen, dissolved_oxygen_pct, ph, turbidity_1, turbidity_2, turbidity_3)   values (41,'2018-02-22 9:48',8,162,35,24.8,34.9,6.72,98.5,8.14,3,3.69,3.55);
insert into sample_workers (sample_id, worker_id)   values (583,29);
insert into sample_workers (sample_id, worker_id)   values (583,30);
insert into sample_workers (sample_id, worker_id)   values (583,31);
insert into samples (site_id, date_and_time, moon, qa_code, session_id, temperature, salinity, dissolved_oxygen, dissolved_oxygen_pct, ph, turbidity_1, turbidity_2, turbidity_3)   values (42,'2018-02-22 10:00',8,162,35,24.7,34.3,6.65,97.1,8.14,4.62,4.34,5.12);
insert into sample_workers (sample_id, worker_id)   values (584,29);
insert into sample_workers (sample_id, worker_id)   values (584,30);
insert into sample_workers (sample_id, worker_id)   values (584,31);
insert into samples (site_id, date_and_time, moon, qa_code, session_id, temperature, salinity, dissolved_oxygen, dissolved_oxygen_pct, ph, turbidity_1, turbidity_2, turbidity_3)   values (43,'2018-02-22 10:21',8,162,35,24.7,33.1,6.55,95.02,8.14,14.6,15.9,13.4);
insert into sample_workers (sample_id, worker_id)   values (585,29);
insert into sample_workers (sample_id, worker_id)   values (585,30);
insert into sample_workers (sample_id, worker_id)   values (585,31);
insert into samples (site_id, date_and_time, moon, qa_code, session_id, temperature, salinity, dissolved_oxygen, dissolved_oxygen_pct, ph, turbidity_1, turbidity_2, turbidity_3)   values (44,'2018-02-23 8:05',9,162,35,24.3,35.7,6.87,100.5,8.18,0.68,0.73,0.73);
insert into sample_workers (sample_id, worker_id)   values (586,32);
insert into sample_workers (sample_id, worker_id)   values (586,33);
insert into sample_workers (sample_id, worker_id)   values (586,34);
insert into samples (site_id, date_and_time, moon, qa_code, session_id, temperature, salinity, dissolved_oxygen, dissolved_oxygen_pct, ph, turbidity_1, turbidity_2, turbidity_3)   values (45,'2018-02-23 8:42',9,162,35,24.6,35.6,6.87,100.9,8.16,0.87,0.96,0.98);
insert into sample_workers (sample_id, worker_id)   values (587,32);
insert into sample_workers (sample_id, worker_id)   values (587,33);
insert into sample_workers (sample_id, worker_id)   values (587,34);
insert into samples (site_id, date_and_time, moon, qa_code, session_id, temperature, salinity, dissolved_oxygen, dissolved_oxygen_pct, ph, turbidity_1, turbidity_2, turbidity_3)   values (46,'2018-02-23 9:15',9,162,35,24.9,35.3,6.92,102.1,8.16,1.45,1.65,1.58);
insert into sample_workers (sample_id, worker_id)   values (588,32);
insert into sample_workers (sample_id, worker_id)   values (588,33);
insert into sample_workers (sample_id, worker_id)   values (588,34);
insert into samples (site_id, date_and_time, moon, qa_code, session_id, temperature, salinity, dissolved_oxygen, dissolved_oxygen_pct, ph, turbidity_1, turbidity_2, turbidity_3)   values (47,'2018-02-23 9:47',9,162,35,24.9,35.7,6.9,101.9,8.17,1.52,1.63,1.64);
insert into sample_workers (sample_id, worker_id)   values (589,32);
insert into sample_workers (sample_id, worker_id)   values (589,33);
insert into sample_workers (sample_id, worker_id)   values (589,34);
insert into samples (site_id, date_and_time, moon, qa_code, session_id, temperature, salinity, dissolved_oxygen, dissolved_oxygen_pct, ph, turbidity_1, turbidity_2, turbidity_3)   values (48,'2018-02-23 10:19',9,162,35,24.7,35.7,6.91,101.5,8.17,1.85,2.22,2.29);
insert into sample_workers (sample_id, worker_id)   values (590,32);
insert into sample_workers (sample_id, worker_id)   values (590,33);
insert into sample_workers (sample_id, worker_id)   values (590,34);
insert into samples (site_id, date_and_time, moon, qa_code, session_id, temperature, salinity, dissolved_oxygen, dissolved_oxygen_pct, ph, turbidity_1, turbidity_2, turbidity_3)   values (49,'2018-02-23 10:40',9,162,35,24.9,35.6,6.9,101.7,8.2,0.6,0.63,0.69);
insert into sample_workers (sample_id, worker_id)   values (591,32);
insert into sample_workers (sample_id, worker_id)   values (591,33);
insert into sample_workers (sample_id, worker_id)   values (591,34);
-- session :  28 session_id auto_increment : 36

-- insert this session
insert into sessions (lab_id, session_number, start_date) values (1, 28, '2017-10-03');
insert into samples (site_id, date_and_time, moon, qa_code, session_id, temperature, salinity, dissolved_oxygen, dissolved_oxygen_pct, ph, turbidity_1, turbidity_2, turbidity_3)   values (13,'2017-10-05 7:10',15,162,36,26.0,34.7,5.80,87.0,8.10,3.05,2.57,2.60);
insert into sample_workers (sample_id, worker_id)   values (592,14);
insert into sample_workers (sample_id, worker_id)   values (592,13);
insert into sample_workers (sample_id, worker_id)   values (592,15);
insert into samples (site_id, date_and_time, moon, qa_code, session_id, temperature, salinity, dissolved_oxygen, dissolved_oxygen_pct, ph, turbidity_1, turbidity_2, turbidity_3)   values (14,'2017-10-05 7:35',15,162,36,26.0,34.6,6.19,92.6,8.07,6.71,6.81,7.00);
insert into sample_workers (sample_id, worker_id)   values (593,14);
insert into sample_workers (sample_id, worker_id)   values (593,13);
insert into sample_workers (sample_id, worker_id)   values (593,15);
insert into samples (site_id, date_and_time, moon, qa_code, session_id, temperature, salinity, dissolved_oxygen, dissolved_oxygen_pct, ph, turbidity_1, turbidity_2, turbidity_3)   values (15,'2017-10-05 7:52',15,162,36,25.7,34.5,5.99,89.1,8.02,7.95,7.79,7.83);
insert into sample_workers (sample_id, worker_id)   values (594,14);
insert into sample_workers (sample_id, worker_id)   values (594,13);
insert into sample_workers (sample_id, worker_id)   values (594,15);
insert into samples (site_id, date_and_time, moon, qa_code, session_id, temperature, salinity, dissolved_oxygen, dissolved_oxygen_pct, ph, turbidity_1, turbidity_2, turbidity_3)   values (16,'2017-10-05 8:13',15,162,36,25.7,34.6,6.61,98.4,8.12,10.50,10.60,10.10);
insert into sample_workers (sample_id, worker_id)   values (595,14);
insert into sample_workers (sample_id, worker_id)   values (595,13);
insert into sample_workers (sample_id, worker_id)   values (595,15);
insert into samples (site_id, date_and_time, moon, qa_code, session_id, temperature, salinity, dissolved_oxygen, dissolved_oxygen_pct, ph, turbidity_1, turbidity_2, turbidity_3)   values (17,'2017-10-05 8:25',15,162,36,25.9,34.6,6.85,102.2,8.15,7.56,8.04,8.11);
insert into sample_workers (sample_id, worker_id)   values (596,14);
insert into sample_workers (sample_id, worker_id)   values (596,13);
insert into sample_workers (sample_id, worker_id)   values (596,15);
insert into samples (site_id, date_and_time, moon, qa_code, session_id, temperature, salinity, dissolved_oxygen, dissolved_oxygen_pct, ph, turbidity_1, turbidity_2, turbidity_3)   values (18,'2017-10-05 8:38',15,162,36,26.3,34.2,6.71,100.6,8.13,3.64,3.48,3.13);
insert into sample_workers (sample_id, worker_id)   values (597,14);
insert into sample_workers (sample_id, worker_id)   values (597,13);
insert into sample_workers (sample_id, worker_id)   values (597,15);
insert into samples (site_id, date_and_time, moon, qa_code, session_id, temperature, salinity, dissolved_oxygen, dissolved_oxygen_pct, ph, turbidity_1, turbidity_2, turbidity_3)   values (7,'2017-10-04 8:20',14,162,36,27.6,34.0,5.54,84.9,8.04,10.10,10.30,10.60);
insert into sample_workers (sample_id, worker_id)   values (598,7);
insert into sample_workers (sample_id, worker_id)   values (598,5);
insert into sample_workers (sample_id, worker_id)   values (598,18);
insert into samples (site_id, date_and_time, moon, qa_code, session_id, temperature, salinity, dissolved_oxygen, dissolved_oxygen_pct, ph, turbidity_1, turbidity_2, turbidity_3)   values (8,'2017-10-04 8:40',14,162,36,27.8,33.8,5.64,86.7,8.03,4.04,4.14,4.08);
insert into sample_workers (sample_id, worker_id)   values (599,7);
insert into sample_workers (sample_id, worker_id)   values (599,5);
insert into sample_workers (sample_id, worker_id)   values (599,18);
insert into samples (site_id, date_and_time, moon, qa_code, session_id, temperature, salinity, dissolved_oxygen, dissolved_oxygen_pct, ph, turbidity_1, turbidity_2, turbidity_3)   values (9,'2017-10-04 9:00',14,162,36,29.3,33.7,5.67,87.7,8.05,3.29,4.30,4.79);
insert into sample_workers (sample_id, worker_id)   values (600,7);
insert into sample_workers (sample_id, worker_id)   values (600,5);
insert into sample_workers (sample_id, worker_id)   values (600,18);
insert into samples (site_id, date_and_time, moon, qa_code, session_id, temperature, salinity, dissolved_oxygen, dissolved_oxygen_pct, ph, turbidity_1, turbidity_2, turbidity_3)   values (10,'2017-10-04 9:25',14,162,36,28.1,34.5,6.46,100.1,8.18,2.24,2.65,2.42);
insert into sample_workers (sample_id, worker_id)   values (601,7);
insert into sample_workers (sample_id, worker_id)   values (601,5);
insert into sample_workers (sample_id, worker_id)   values (601,18);
insert into samples (site_id, date_and_time, moon, qa_code, session_id, temperature, salinity, dissolved_oxygen, dissolved_oxygen_pct, ph, turbidity_1, turbidity_2, turbidity_3)   values (11,'2017-10-04 9:42',14,162,36,28.4,34.6,6.52,101.4,8.14,1.51,1.94,1.55);
insert into sample_workers (sample_id, worker_id)   values (602,7);
insert into sample_workers (sample_id, worker_id)   values (602,5);
insert into sample_workers (sample_id, worker_id)   values (602,18);
insert into samples (site_id, date_and_time, moon, qa_code, session_id, temperature, salinity, dissolved_oxygen, dissolved_oxygen_pct, ph, turbidity_1, turbidity_2, turbidity_3)   values (12,'2017-10-04 10:10',14,162,36,27.9,34.6,6.81,105.3,8.15,1.02,1.43,1.23);
insert into sample_workers (sample_id, worker_id)   values (603,7);
insert into sample_workers (sample_id, worker_id)   values (603,5);
insert into sample_workers (sample_id, worker_id)   values (603,18);
insert into samples (site_id, date_and_time, moon, qa_code, session_id, temperature, salinity, dissolved_oxygen, dissolved_oxygen_pct, ph, turbidity_1, turbidity_2, turbidity_3)   values (19,'2017-10-06 7:56',17,162,36,25.3,33.7,6.32,93.2,8.10,37.20,37.90,40.50);
insert into sample_workers (sample_id, worker_id)   values (604,12);
insert into sample_workers (sample_id, worker_id)   values (604,10);
insert into sample_workers (sample_id, worker_id)   values (604,17);
insert into samples (site_id, date_and_time, moon, qa_code, session_id, temperature, salinity, dissolved_oxygen, dissolved_oxygen_pct, ph, turbidity_1, turbidity_2, turbidity_3)   values (21,'2017-10-06 8:40',17,162,36,26.4,34.1,6.64,99.9,8.16,2.65,1.82,2.26);
insert into sample_workers (sample_id, worker_id)   values (605,12);
insert into sample_workers (sample_id, worker_id)   values (605,10);
insert into sample_workers (sample_id, worker_id)   values (605,17);
insert into samples (site_id, date_and_time, moon, qa_code, session_id, temperature, salinity, dissolved_oxygen, dissolved_oxygen_pct, ph, turbidity_1, turbidity_2, turbidity_3)   values (22,'2017-10-06 9:15',17,162,36,27.0,34.6,6.60,100.9,8.19,0.65,0.65,0.61);
insert into sample_workers (sample_id, worker_id)   values (606,12);
insert into sample_workers (sample_id, worker_id)   values (606,10);
insert into sample_workers (sample_id, worker_id)   values (606,17);
insert into samples (site_id, date_and_time, moon, qa_code, session_id, temperature, salinity, dissolved_oxygen, dissolved_oxygen_pct, ph, turbidity_1, turbidity_2, turbidity_3)   values (23,'2017-10-06 9:35',17,162,36,26.9,33.4,6.81,103.0,8.16,3.36,2.70,3.04);
insert into sample_workers (sample_id, worker_id)   values (607,12);
insert into sample_workers (sample_id, worker_id)   values (607,10);
insert into sample_workers (sample_id, worker_id)   values (607,17);
insert into samples (site_id, date_and_time, moon, qa_code, session_id, temperature, salinity, dissolved_oxygen, dissolved_oxygen_pct, ph, turbidity_1, turbidity_2, turbidity_3)   values (24,'2017-10-06 9:55',17,162,36,26.4,33.7,6.62,99.5,8.11,14.00,13.60,12.80);
insert into sample_workers (sample_id, worker_id)   values (608,12);
insert into sample_workers (sample_id, worker_id)   values (608,10);
insert into sample_workers (sample_id, worker_id)   values (608,17);
insert into samples (site_id, date_and_time, moon, qa_code, session_id, temperature, salinity, dissolved_oxygen, dissolved_oxygen_pct, ph, turbidity_1, turbidity_2, turbidity_3)   values (25,'2017-10-06 10:15',17,162,36,27.9,34.7,7.24,112.1,8.33,3.94,4.63,4.45);
insert into sample_workers (sample_id, worker_id)   values (609,12);
insert into sample_workers (sample_id, worker_id)   values (609,10);
insert into sample_workers (sample_id, worker_id)   values (609,17);
insert into samples (site_id, date_and_time, moon, qa_code, session_id, temperature, salinity, dissolved_oxygen, dissolved_oxygen_pct, ph, turbidity_1, turbidity_2, turbidity_3)   values (1,'2017-10-03 8:14',14,162,36,27.0,33.7,6.59,101.0,8.14,2.33,2.48,2.51);
insert into sample_workers (sample_id, worker_id)   values (610,2);
insert into sample_workers (sample_id, worker_id)   values (610,3);
insert into sample_workers (sample_id, worker_id)   values (610,4);
insert into samples (site_id, date_and_time, moon, qa_code, session_id, temperature, salinity, dissolved_oxygen, dissolved_oxygen_pct, ph, turbidity_1, turbidity_2, turbidity_3)   values (2,'2017-10-03 8:40',14,162,36,26.8,32.4,6.29,94.6,8.15,3.15,3.46,5.79);
insert into sample_workers (sample_id, worker_id)   values (611,2);
insert into sample_workers (sample_id, worker_id)   values (611,3);
insert into sample_workers (sample_id, worker_id)   values (611,4);
insert into samples (site_id, date_and_time, moon, qa_code, session_id, temperature, salinity, dissolved_oxygen, dissolved_oxygen_pct, ph, turbidity_1, turbidity_2, turbidity_3)   values (3,'2017-10-03 8:58',14,162,36,27.1,34.2,6.41,97.8,8.11,3.05,3.22,3.39);
insert into sample_workers (sample_id, worker_id)   values (612,2);
insert into sample_workers (sample_id, worker_id)   values (612,3);
insert into sample_workers (sample_id, worker_id)   values (612,4);
insert into samples (site_id, date_and_time, moon, qa_code, session_id, temperature, salinity, dissolved_oxygen, dissolved_oxygen_pct, ph, turbidity_1, turbidity_2, turbidity_3)   values (4,'2017-10-03 9:16',14,162,36,27.9,34.0,6.49,100.0,8.19,0.50,0.79,0.67);
insert into sample_workers (sample_id, worker_id)   values (613,2);
insert into sample_workers (sample_id, worker_id)   values (613,3);
insert into sample_workers (sample_id, worker_id)   values (613,4);
insert into samples (site_id, date_and_time, moon, qa_code, session_id, temperature, salinity, dissolved_oxygen, dissolved_oxygen_pct, ph, turbidity_1, turbidity_2, turbidity_3)   values (5,'2017-10-03 9:36',14,162,36,28.0,33.3,6.59,101.3,8.19,5.65,6.58,6.00);
insert into sample_workers (sample_id, worker_id)   values (614,2);
insert into sample_workers (sample_id, worker_id)   values (614,3);
insert into sample_workers (sample_id, worker_id)   values (614,4);
insert into samples (site_id, date_and_time, moon, qa_code, session_id, temperature, salinity, dissolved_oxygen, dissolved_oxygen_pct, ph, turbidity_1, turbidity_2, turbidity_3)   values (6,'2017-10-03 9:52',14,162,36,27.6,33.4,6.52,99.8,8.20,0.50,0.50,0.49);
insert into sample_workers (sample_id, worker_id)   values (615,2);
insert into sample_workers (sample_id, worker_id)   values (615,3);
insert into sample_workers (sample_id, worker_id)   values (615,4);
-- session :  29 session_id auto_increment : 37

-- insert this session
insert into sessions (lab_id, session_number, start_date) values (1, 29, '2017-10-24');
insert into samples (site_id, date_and_time, moon, qa_code, session_id, temperature, salinity, dissolved_oxygen, dissolved_oxygen_pct, ph, turbidity_1, turbidity_2, turbidity_3)   values (13,'2017-10-26 7:01',6,162,37,26.0,34.7,5.78,86.6,7.96,6.06,6.52,6.32);
insert into sample_workers (sample_id, worker_id)   values (616,11);
insert into sample_workers (sample_id, worker_id)   values (616,14);
insert into samples (site_id, date_and_time, moon, qa_code, session_id, temperature, salinity, dissolved_oxygen, dissolved_oxygen_pct, ph, turbidity_1, turbidity_2, turbidity_3)   values (14,'2017-10-26 7:31',6,162,37,26.7,34.5,6.25,94.7,8.01,4.72,4.81,4.73);
insert into sample_workers (sample_id, worker_id)   values (617,11);
insert into sample_workers (sample_id, worker_id)   values (617,14);
insert into samples (site_id, date_and_time, moon, qa_code, session_id, temperature, salinity, dissolved_oxygen, dissolved_oxygen_pct, ph, turbidity_1, turbidity_2, turbidity_3)   values (15,'2017-10-26 7:51',6,162,37,26.8,34.5,5.45,82.7,7.96,5.43,5.34,4.99);
insert into sample_workers (sample_id, worker_id)   values (618,11);
insert into sample_workers (sample_id, worker_id)   values (618,14);
insert into samples (site_id, date_and_time, moon, qa_code, session_id, temperature, salinity, dissolved_oxygen, dissolved_oxygen_pct, ph, turbidity_1, turbidity_2, turbidity_3)   values (16,'2017-10-26 8:14',6,162,37,26.8,34.8,6.37,96.9,8.06,10.50,9.99,10.80);
insert into sample_workers (sample_id, worker_id)   values (619,11);
insert into sample_workers (sample_id, worker_id)   values (619,14);
insert into samples (site_id, date_and_time, moon, qa_code, session_id, temperature, salinity, dissolved_oxygen, dissolved_oxygen_pct, ph, turbidity_1, turbidity_2, turbidity_3)   values (17,'2017-10-26 8:40',6,162,37,26.9,34.7,6.47,98.5,8.05,20.00,21.60,21.50);
insert into sample_workers (sample_id, worker_id)   values (620,11);
insert into sample_workers (sample_id, worker_id)   values (620,14);
insert into samples (site_id, date_and_time, moon, qa_code, session_id, temperature, salinity, dissolved_oxygen, dissolved_oxygen_pct, ph, turbidity_1, turbidity_2, turbidity_3)   values (18,'2017-10-26 9:05',6,162,37,27.0,34.8,6.67,101.8,8.07,4.89,4.96,5.10);
insert into sample_workers (sample_id, worker_id)   values (621,11);
insert into sample_workers (sample_id, worker_id)   values (621,14);
insert into samples (site_id, date_and_time, moon, qa_code, session_id, temperature, salinity, dissolved_oxygen, dissolved_oxygen_pct, ph, turbidity_1, turbidity_2, turbidity_3)   values (7,'2017-10-25 8:22',5,162,37,26.7,34.7,6.58,99.6,8.06,6.63,7.11,8.14);
insert into sample_workers (sample_id, worker_id)   values (622,7);
insert into sample_workers (sample_id, worker_id)   values (622,5);
insert into sample_workers (sample_id, worker_id)   values (622,18);
insert into samples (site_id, date_and_time, moon, qa_code, session_id, temperature, salinity, dissolved_oxygen, dissolved_oxygen_pct, ph, turbidity_1, turbidity_2, turbidity_3)   values (8,'2017-10-25 8:47',5,162,37,26.7,34.1,6.50,98.2,8.07,19.20,19.10,19.40);
insert into sample_workers (sample_id, worker_id)   values (623,7);
insert into sample_workers (sample_id, worker_id)   values (623,5);
insert into sample_workers (sample_id, worker_id)   values (623,18);
insert into samples (site_id, date_and_time, moon, qa_code, session_id, temperature, salinity, dissolved_oxygen, dissolved_oxygen_pct, ph, turbidity_1, turbidity_2, turbidity_3)   values (9,'2017-10-25 9:10',5,162,37,26.8,34.2,6.39,96.7,8.07,15.00,15.90,15.20);
insert into sample_workers (sample_id, worker_id)   values (624,7);
insert into sample_workers (sample_id, worker_id)   values (624,5);
insert into sample_workers (sample_id, worker_id)   values (624,18);
insert into samples (site_id, date_and_time, moon, qa_code, session_id, temperature, salinity, dissolved_oxygen, dissolved_oxygen_pct, ph, turbidity_1, turbidity_2, turbidity_3)   values (10,'2017-10-25 9:35',5,162,37,27.2,34.7,6.65,101.6,8.14,13.00,13.80,13.60);
insert into sample_workers (sample_id, worker_id)   values (625,7);
insert into sample_workers (sample_id, worker_id)   values (625,5);
insert into sample_workers (sample_id, worker_id)   values (625,18);
insert into samples (site_id, date_and_time, moon, qa_code, session_id, temperature, salinity, dissolved_oxygen, dissolved_oxygen_pct, ph, turbidity_1, turbidity_2, turbidity_3)   values (11,'2017-10-25 9:55',5,162,37,27.9,34.4,6.60,100.5,8.09,11.70,11.10,11.30);
insert into sample_workers (sample_id, worker_id)   values (626,7);
insert into sample_workers (sample_id, worker_id)   values (626,5);
insert into sample_workers (sample_id, worker_id)   values (626,18);
insert into samples (site_id, date_and_time, moon, qa_code, session_id, temperature, salinity, dissolved_oxygen, dissolved_oxygen_pct, ph, turbidity_1, turbidity_2, turbidity_3)   values (12,'2017-10-25 10:15',5,162,37,27.1,34.6,6.59,100.5,8.10,1.47,1.63,1.82);
insert into sample_workers (sample_id, worker_id)   values (627,7);
insert into sample_workers (sample_id, worker_id)   values (627,5);
insert into sample_workers (sample_id, worker_id)   values (627,18);
insert into samples (site_id, date_and_time, moon, qa_code, session_id, temperature, salinity, dissolved_oxygen, dissolved_oxygen_pct, ph, turbidity_1, turbidity_2, turbidity_3)   values (19,'2017-10-27 8:05',8,162,37,25.4,33.0,6.58,96.9,8.11,156.00,164.00,158.00);
insert into sample_workers (sample_id, worker_id)   values (628,12);
insert into sample_workers (sample_id, worker_id)   values (628,10);
insert into sample_workers (sample_id, worker_id)   values (628,17);
insert into samples (site_id, date_and_time, moon, qa_code, session_id, temperature, salinity, dissolved_oxygen, dissolved_oxygen_pct, ph, turbidity_1, turbidity_2, turbidity_3)   values (21,'2017-10-27 8:45',8,162,37,26.4,34.8,6.83,103.3,8.17,3.72,3.28,3.43);
insert into sample_workers (sample_id, worker_id)   values (629,12);
insert into sample_workers (sample_id, worker_id)   values (629,10);
insert into sample_workers (sample_id, worker_id)   values (629,17);
insert into samples (site_id, date_and_time, moon, qa_code, session_id, temperature, salinity, dissolved_oxygen, dissolved_oxygen_pct, ph, turbidity_1, turbidity_2, turbidity_3)   values (22,'2017-10-27 9:20',8,162,37,27.0,35.0,6.79,104.1,8.18,1.22,1.28,1.33);
insert into sample_workers (sample_id, worker_id)   values (630,12);
insert into sample_workers (sample_id, worker_id)   values (630,10);
insert into sample_workers (sample_id, worker_id)   values (630,17);
insert into samples (site_id, date_and_time, moon, qa_code, session_id, temperature, salinity, dissolved_oxygen, dissolved_oxygen_pct, ph, turbidity_1, turbidity_2, turbidity_3)   values (23,'2017-10-27 9:53',8,162,37,26.7,34.8,6.99,106.6,8.21,2.91,2.60,2.37);
insert into sample_workers (sample_id, worker_id)   values (631,12);
insert into sample_workers (sample_id, worker_id)   values (631,10);
insert into sample_workers (sample_id, worker_id)   values (631,17);
insert into samples (site_id, date_and_time, moon, qa_code, session_id, temperature, salinity, dissolved_oxygen, dissolved_oxygen_pct, ph, turbidity_1, turbidity_2, turbidity_3)   values (24,'2017-10-27 10:23',8,162,37,25.9,34.3,6.84,102.6,8.13,26.60,27.00,26.10);
insert into sample_workers (sample_id, worker_id)   values (632,12);
insert into sample_workers (sample_id, worker_id)   values (632,10);
insert into sample_workers (sample_id, worker_id)   values (632,17);
insert into samples (site_id, date_and_time, moon, qa_code, session_id, temperature, salinity, dissolved_oxygen, dissolved_oxygen_pct, ph, turbidity_1, turbidity_2, turbidity_3)   values (25,'2017-10-27 10:46',8,162,37,27.4,35.0,6.83,105.1,8.23,11.60,10.80,11.70);
insert into sample_workers (sample_id, worker_id)   values (633,12);
insert into sample_workers (sample_id, worker_id)   values (633,10);
insert into sample_workers (sample_id, worker_id)   values (633,17);
insert into samples (site_id, date_and_time, moon, qa_code, session_id, temperature, salinity, dissolved_oxygen, dissolved_oxygen_pct, ph, turbidity_1, turbidity_2, turbidity_3)   values (1,'2017-10-24 8:24',5,162,37,26.3,33.5,6.31,94.8,8.10,17.50,16.20,16.50);
insert into sample_workers (sample_id, worker_id)   values (634,2);
insert into sample_workers (sample_id, worker_id)   values (634,6);
insert into samples (site_id, date_and_time, moon, qa_code, session_id, temperature, salinity, dissolved_oxygen, dissolved_oxygen_pct, ph, turbidity_1, turbidity_2, turbidity_3)   values (2,'2017-10-24 8:50',5,162,37,26.5,33.3,6.34,96.3,8.15,14.50,15.60,15.30);
insert into sample_workers (sample_id, worker_id)   values (635,2);
insert into sample_workers (sample_id, worker_id)   values (635,6);
insert into samples (site_id, date_and_time, moon, qa_code, session_id, temperature, salinity, dissolved_oxygen, dissolved_oxygen_pct, ph, turbidity_1, turbidity_2, turbidity_3)   values (3,'2017-10-24 9:13',5,162,37,26.7,33.2,6.60,99.5,8.16,5.48,5.43,5.47);
insert into sample_workers (sample_id, worker_id)   values (636,2);
insert into sample_workers (sample_id, worker_id)   values (636,6);
insert into samples (site_id, date_and_time, moon, qa_code, session_id, temperature, salinity, dissolved_oxygen, dissolved_oxygen_pct, ph, turbidity_1, turbidity_2, turbidity_3)   values (4,'2017-10-24 9:35',5,162,37,27.0,33.6,6.57,99.8,8.18,1.81,1.78,1.66);
insert into sample_workers (sample_id, worker_id)   values (637,2);
insert into sample_workers (sample_id, worker_id)   values (637,6);
insert into samples (site_id, date_and_time, moon, qa_code, session_id, temperature, salinity, dissolved_oxygen, dissolved_oxygen_pct, ph, turbidity_1, turbidity_2, turbidity_3)   values (5,'2017-10-24 9:57',5,162,37,26.9,33.2,6.68,101.1,8.17,9.88,9.97,9.81);
insert into sample_workers (sample_id, worker_id)   values (638,2);
insert into sample_workers (sample_id, worker_id)   values (638,6);
insert into samples (site_id, date_and_time, moon, qa_code, session_id, temperature, salinity, dissolved_oxygen, dissolved_oxygen_pct, ph, turbidity_1, turbidity_2, turbidity_3)   values (6,'2017-10-24 10:20',5,162,37,26.9,33.1,6.67,100.9,8.19,6.20,5.87,7.69);
insert into sample_workers (sample_id, worker_id)   values (639,2);
insert into sample_workers (sample_id, worker_id)   values (639,6);
-- session :  30 session_id auto_increment : 38

-- insert this session
insert into sessions (lab_id, session_number, start_date) values (1, 30, '2017-11-14');
insert into samples (site_id, date_and_time, moon, qa_code, session_id, temperature, salinity, dissolved_oxygen, dissolved_oxygen_pct, ph, turbidity_1, turbidity_2, turbidity_3)   values (13,'2017-11-16 7:11',28,162,38,23.8,34.8,5.99,86.6,8.10,3.64,3.22,3.61);
insert into sample_workers (sample_id, worker_id)   values (640,11);
insert into sample_workers (sample_id, worker_id)   values (640,13);
insert into sample_workers (sample_id, worker_id)   values (640,14);
insert into samples (site_id, date_and_time, moon, qa_code, session_id, temperature, salinity, dissolved_oxygen, dissolved_oxygen_pct, ph, turbidity_1, turbidity_2, turbidity_3)   values (14,'2017-11-16 7:35',28,162,38,23.8,35.1,6.33,91.5,8.12,2.15,2.24,2.28);
insert into sample_workers (sample_id, worker_id)   values (641,11);
insert into sample_workers (sample_id, worker_id)   values (641,13);
insert into sample_workers (sample_id, worker_id)   values (641,14);
insert into samples (site_id, date_and_time, moon, qa_code, session_id, temperature, salinity, dissolved_oxygen, dissolved_oxygen_pct, ph, turbidity_1, turbidity_2, turbidity_3)   values (15,'2017-11-16 7:50',28,162,38,24.0,35.0,5.83,84.5,8.07,3.02,2.29,2.52);
insert into sample_workers (sample_id, worker_id)   values (642,11);
insert into sample_workers (sample_id, worker_id)   values (642,13);
insert into sample_workers (sample_id, worker_id)   values (642,14);
insert into samples (site_id, date_and_time, moon, qa_code, session_id, temperature, salinity, dissolved_oxygen, dissolved_oxygen_pct, ph, turbidity_1, turbidity_2, turbidity_3)   values (16,'2017-11-16 8:10',28,162,38,23.5,35.0,6.73,96.9,8.15,5.61,5.61,5.71);
insert into sample_workers (sample_id, worker_id)   values (643,11);
insert into sample_workers (sample_id, worker_id)   values (643,13);
insert into sample_workers (sample_id, worker_id)   values (643,14);
insert into samples (site_id, date_and_time, moon, qa_code, session_id, temperature, salinity, dissolved_oxygen, dissolved_oxygen_pct, ph, turbidity_1, turbidity_2, turbidity_3)   values (17,'2017-11-16 8:27',28,162,38,24.2,34.9,7.03,102.2,8.17,5.63,5.55,5.81);
insert into sample_workers (sample_id, worker_id)   values (644,11);
insert into sample_workers (sample_id, worker_id)   values (644,13);
insert into sample_workers (sample_id, worker_id)   values (644,14);
insert into samples (site_id, date_and_time, moon, qa_code, session_id, temperature, salinity, dissolved_oxygen, dissolved_oxygen_pct, ph, turbidity_1, turbidity_2, turbidity_3)   values (18,'2017-11-16 8:45',28,162,38,25.0,34.7,6.75,99.4,8.14,1.53,1.52,1.86);
insert into sample_workers (sample_id, worker_id)   values (645,11);
insert into sample_workers (sample_id, worker_id)   values (645,13);
insert into sample_workers (sample_id, worker_id)   values (645,14);
insert into samples (site_id, date_and_time, moon, qa_code, session_id, temperature, salinity, dissolved_oxygen, dissolved_oxygen_pct, ph, turbidity_1, turbidity_2, turbidity_3)   values (7,'2017-11-15 8:10',27,162,38,25.9,35.2,6.46,96.7,8.11,4.31,4.89,4.68);
insert into sample_workers (sample_id, worker_id)   values (646,11);
insert into sample_workers (sample_id, worker_id)   values (646,7);
insert into sample_workers (sample_id, worker_id)   values (646,27);
insert into samples (site_id, date_and_time, moon, qa_code, session_id, temperature, salinity, dissolved_oxygen, dissolved_oxygen_pct, ph, turbidity_1, turbidity_2, turbidity_3)   values (8,'2017-11-15 8:35',27,162,38,26.0,34.5,6.37,95.2,8.11,3.16,3.65,3.84);
insert into sample_workers (sample_id, worker_id)   values (647,11);
insert into sample_workers (sample_id, worker_id)   values (647,7);
insert into sample_workers (sample_id, worker_id)   values (647,27);
insert into samples (site_id, date_and_time, moon, qa_code, session_id, temperature, salinity, dissolved_oxygen, dissolved_oxygen_pct, ph, turbidity_1, turbidity_2, turbidity_3)   values (9,'2017-11-15 8:55',27,162,38,26.2,34.6,6.30,94.6,8.11,2.39,2.61,2.47);
insert into sample_workers (sample_id, worker_id)   values (648,11);
insert into sample_workers (sample_id, worker_id)   values (648,7);
insert into sample_workers (sample_id, worker_id)   values (648,27);
insert into samples (site_id, date_and_time, moon, qa_code, session_id, temperature, salinity, dissolved_oxygen, dissolved_oxygen_pct, ph, turbidity_1, turbidity_2, turbidity_3)   values (10,'2017-11-15 9:15',27,162,38,26.7,34.7,6.71,101.6,8.19,1.27,1.66,1.36);
insert into sample_workers (sample_id, worker_id)   values (649,11);
insert into sample_workers (sample_id, worker_id)   values (649,7);
insert into sample_workers (sample_id, worker_id)   values (649,27);
insert into samples (site_id, date_and_time, moon, qa_code, session_id, temperature, salinity, dissolved_oxygen, dissolved_oxygen_pct, ph, turbidity_1, turbidity_2, turbidity_3)   values (11,'2017-11-15 9:40',27,162,38,26.5,35.0,6.74,102,8.15,2.41,2.04,2.00);
insert into sample_workers (sample_id, worker_id)   values (650,11);
insert into sample_workers (sample_id, worker_id)   values (650,7);
insert into sample_workers (sample_id, worker_id)   values (650,27);
insert into samples (site_id, date_and_time, moon, qa_code, session_id, temperature, salinity, dissolved_oxygen, dissolved_oxygen_pct, ph, turbidity_1, turbidity_2, turbidity_3)   values (12,'2017-11-15 10:05',27,162,38,25.5,35.0,6.62,98.4,8.09,1.34,1.32,1.55);
insert into sample_workers (sample_id, worker_id)   values (651,11);
insert into sample_workers (sample_id, worker_id)   values (651,7);
insert into sample_workers (sample_id, worker_id)   values (651,27);
insert into samples (site_id, date_and_time, moon, qa_code, session_id, temperature, salinity, dissolved_oxygen, dissolved_oxygen_pct, ph, turbidity_1, turbidity_2, turbidity_3)   values (19,'2017-11-17 7:58',29,162,38,24.3,30.6,6.39,90.9,8.15,20.90,21.10,21.50);
insert into sample_workers (sample_id, worker_id)   values (652,12);
insert into sample_workers (sample_id, worker_id)   values (652,10);
insert into sample_workers (sample_id, worker_id)   values (652,17);
insert into samples (site_id, date_and_time, moon, qa_code, session_id, temperature, salinity, dissolved_oxygen, dissolved_oxygen_pct, ph, turbidity_1, turbidity_2, turbidity_3)   values (21,'2017-11-17 8:40',29,162,38,25.7,34.4,6.71,99.7,8.15,1.35,1.73,1.67);
insert into sample_workers (sample_id, worker_id)   values (653,12);
insert into sample_workers (sample_id, worker_id)   values (653,10);
insert into sample_workers (sample_id, worker_id)   values (653,17);
insert into samples (site_id, date_and_time, moon, qa_code, session_id, temperature, salinity, dissolved_oxygen, dissolved_oxygen_pct, ph, turbidity_1, turbidity_2, turbidity_3)   values (22,'2017-11-17 9:15',29,162,38,26.0,35.0,6.66,100.2,8.19,0.65,0.65,0.69);
insert into sample_workers (sample_id, worker_id)   values (654,12);
insert into sample_workers (sample_id, worker_id)   values (654,10);
insert into sample_workers (sample_id, worker_id)   values (654,17);
insert into samples (site_id, date_and_time, moon, qa_code, session_id, temperature, salinity, dissolved_oxygen, dissolved_oxygen_pct, ph, turbidity_1, turbidity_2, turbidity_3)   values (23,'2017-11-17 9:50',29,162,38,26.3,34.1,6.86,103.1,8.16,2.77,2.66,2.27);
insert into sample_workers (sample_id, worker_id)   values (655,12);
insert into sample_workers (sample_id, worker_id)   values (655,10);
insert into sample_workers (sample_id, worker_id)   values (655,17);
insert into samples (site_id, date_and_time, moon, qa_code, session_id, temperature, salinity, dissolved_oxygen, dissolved_oxygen_pct, ph, turbidity_1, turbidity_2, turbidity_3)   values (24,'2017-11-17 10:15',29,162,38,25.3,34.0,6.81,100.5,8.16,17.30,16.70,17.20);
insert into sample_workers (sample_id, worker_id)   values (656,12);
insert into sample_workers (sample_id, worker_id)   values (656,10);
insert into sample_workers (sample_id, worker_id)   values (656,17);
insert into samples (site_id, date_and_time, moon, qa_code, session_id, temperature, salinity, dissolved_oxygen, dissolved_oxygen_pct, ph, turbidity_1, turbidity_2, turbidity_3)   values (25,'2017-11-17 10:38',29,162,38,26.4,35.0,7.09,107.2,8.28,7.27,6.83,6.90);
insert into sample_workers (sample_id, worker_id)   values (657,12);
insert into sample_workers (sample_id, worker_id)   values (657,10);
insert into sample_workers (sample_id, worker_id)   values (657,17);
insert into samples (site_id, date_and_time, moon, qa_code, session_id, temperature, salinity, dissolved_oxygen, dissolved_oxygen_pct, ph, turbidity_1, turbidity_2, turbidity_3)   values (1,'2017-11-14 8:16',26,162,38,26.0,34.9,6.71,100.8,8.16,1.15,1.08,1.20);
insert into sample_workers (sample_id, worker_id)   values (658,2);
insert into sample_workers (sample_id, worker_id)   values (658,3);
insert into sample_workers (sample_id, worker_id)   values (658,28);
insert into samples (site_id, date_and_time, moon, qa_code, session_id, temperature, salinity, dissolved_oxygen, dissolved_oxygen_pct, ph, turbidity_1, turbidity_2, turbidity_3)   values (2,'2017-11-14 8:45',26,162,38,25.9,32.2,6.77,99.7,8.17,8.73,8.62,9.81);
insert into sample_workers (sample_id, worker_id)   values (659,2);
insert into sample_workers (sample_id, worker_id)   values (659,3);
insert into sample_workers (sample_id, worker_id)   values (659,28);
insert into samples (site_id, date_and_time, moon, qa_code, session_id, temperature, salinity, dissolved_oxygen, dissolved_oxygen_pct, ph, turbidity_1, turbidity_2, turbidity_3)   values (3,'2017-11-14 9:10',26,162,38,26.1,34.8,6.73,101.0,8.18,2.84,2.70,2.83);
insert into sample_workers (sample_id, worker_id)   values (660,2);
insert into sample_workers (sample_id, worker_id)   values (660,3);
insert into sample_workers (sample_id, worker_id)   values (660,28);
insert into samples (site_id, date_and_time, moon, qa_code, session_id, temperature, salinity, dissolved_oxygen, dissolved_oxygen_pct, ph, turbidity_1, turbidity_2, turbidity_3)   values (4,'2017-11-14 9:29',26,162,38,26.5,34.5,6.61,99.7,8.17,2.87,2.68,2.36);
insert into sample_workers (sample_id, worker_id)   values (661,2);
insert into sample_workers (sample_id, worker_id)   values (661,3);
insert into sample_workers (sample_id, worker_id)   values (661,28);
insert into samples (site_id, date_and_time, moon, qa_code, session_id, temperature, salinity, dissolved_oxygen, dissolved_oxygen_pct, ph, turbidity_1, turbidity_2, turbidity_3)   values (5,'2017-11-14 9:49',26,162,38,27.1,34.1,6.44,98.0,8.18,4.21,3.50,3.36);
insert into sample_workers (sample_id, worker_id)   values (662,2);
insert into sample_workers (sample_id, worker_id)   values (662,3);
insert into sample_workers (sample_id, worker_id)   values (662,28);
insert into samples (site_id, date_and_time, moon, qa_code, session_id, temperature, salinity, dissolved_oxygen, dissolved_oxygen_pct, ph, turbidity_1, turbidity_2, turbidity_3)   values (6,'2017-11-14 10:04',26,162,38,27.2,34.5,6.50,99.2,8.20,1.27,1.20,1.15);
insert into sample_workers (sample_id, worker_id)   values (663,2);
insert into sample_workers (sample_id, worker_id)   values (663,3);
insert into sample_workers (sample_id, worker_id)   values (663,28);
-- session :  31 session_id auto_increment : 39

-- insert this session
insert into sessions (lab_id, session_number, start_date) values (1, 31, '2017-12-05');
insert into samples (site_id, date_and_time, moon, qa_code, session_id, temperature, salinity, dissolved_oxygen, dissolved_oxygen_pct, ph, turbidity_1, turbidity_2, turbidity_3)   values (13,'2017-12-07 7:08',20,162,39,23.3,34.8,6.27,89.5,8.09,6.48,6.56,6.95);
insert into sample_workers (sample_id, worker_id)   values (664,11);
insert into sample_workers (sample_id, worker_id)   values (664,15);
insert into sample_workers (sample_id, worker_id)   values (664,14);
insert into samples (site_id, date_and_time, moon, qa_code, session_id, temperature, salinity, dissolved_oxygen, dissolved_oxygen_pct, ph, turbidity_1, turbidity_2, turbidity_3)   values (14,'2017-12-07 7:30',20,162,39,23.7,34.9,6.38,91.6,8.13,3.59,3.59,3.52);
insert into sample_workers (sample_id, worker_id)   values (665,11);
insert into sample_workers (sample_id, worker_id)   values (665,15);
insert into sample_workers (sample_id, worker_id)   values (665,14);
insert into samples (site_id, date_and_time, moon, qa_code, session_id, temperature, salinity, dissolved_oxygen, dissolved_oxygen_pct, ph, turbidity_1, turbidity_2, turbidity_3)   values (15,'2017-12-07 7:47',20,162,39,24.2,35.0,6.07,87.9,8.11,3.25,3.39,3.32);
insert into sample_workers (sample_id, worker_id)   values (666,11);
insert into sample_workers (sample_id, worker_id)   values (666,15);
insert into sample_workers (sample_id, worker_id)   values (666,14);
insert into samples (site_id, date_and_time, moon, qa_code, session_id, temperature, salinity, dissolved_oxygen, dissolved_oxygen_pct, ph, turbidity_1, turbidity_2, turbidity_3)   values (16,'2017-12-07 8:04',20,162,39,24.6,34.9,6.55,95.5,8.14,5.75,5.63,5.97);
insert into sample_workers (sample_id, worker_id)   values (667,11);
insert into sample_workers (sample_id, worker_id)   values (667,15);
insert into sample_workers (sample_id, worker_id)   values (667,14);
insert into samples (site_id, date_and_time, moon, qa_code, session_id, temperature, salinity, dissolved_oxygen, dissolved_oxygen_pct, ph, turbidity_1, turbidity_2, turbidity_3)   values (17,'2017-12-07 8:20',20,162,39,24.6,35.0,6.67,97.2,8.18,4.39,4.58,4.15);
insert into sample_workers (sample_id, worker_id)   values (668,11);
insert into sample_workers (sample_id, worker_id)   values (668,15);
insert into sample_workers (sample_id, worker_id)   values (668,14);
insert into samples (site_id, date_and_time, moon, qa_code, session_id, temperature, salinity, dissolved_oxygen, dissolved_oxygen_pct, ph, turbidity_1, turbidity_2, turbidity_3)   values (18,'2017-12-07 8:33',20,162,39,24.3,34.8,6.80,98.8,8.18,2.02,2.12,1.99);
insert into sample_workers (sample_id, worker_id)   values (669,11);
insert into sample_workers (sample_id, worker_id)   values (669,15);
insert into sample_workers (sample_id, worker_id)   values (669,14);
insert into samples (site_id, date_and_time, moon, qa_code, session_id, temperature, salinity, dissolved_oxygen, dissolved_oxygen_pct, ph, turbidity_1, turbidity_2, turbidity_3)   values (7,'2017-12-06 8:15',19,162,39,24.5,35.0,6.72,97.8,8.17,3.48,3.54,3.67);
insert into sample_workers (sample_id, worker_id)   values (670,7);
insert into sample_workers (sample_id, worker_id)   values (670,5);
insert into sample_workers (sample_id, worker_id)   values (670,27);
insert into samples (site_id, date_and_time, moon, qa_code, session_id, temperature, salinity, dissolved_oxygen, dissolved_oxygen_pct, ph, turbidity_1, turbidity_2, turbidity_3)   values (8,'2017-12-06 8:35',19,162,39,23.8,34.6,6.67,95.7,8.15,11.90,12.00,12.90);
insert into sample_workers (sample_id, worker_id)   values (671,7);
insert into sample_workers (sample_id, worker_id)   values (671,5);
insert into sample_workers (sample_id, worker_id)   values (671,27);
insert into samples (site_id, date_and_time, moon, qa_code, session_id, temperature, salinity, dissolved_oxygen, dissolved_oxygen_pct, ph, turbidity_1, turbidity_2, turbidity_3)   values (9,'2017-12-06 8:55',19,162,39,23.6,34.3,6.59,94.2,8.13,15.90,16.90,16.00);
insert into sample_workers (sample_id, worker_id)   values (672,7);
insert into sample_workers (sample_id, worker_id)   values (672,5);
insert into sample_workers (sample_id, worker_id)   values (672,27);
insert into samples (site_id, date_and_time, moon, qa_code, session_id, temperature, salinity, dissolved_oxygen, dissolved_oxygen_pct, ph, turbidity_1, turbidity_2, turbidity_3)   values (10,'2017-12-06 9:20',19,162,39,24.6,34.6,6.98,101.5,8.21,1.78,2.26,2.10);
insert into sample_workers (sample_id, worker_id)   values (673,7);
insert into sample_workers (sample_id, worker_id)   values (673,5);
insert into sample_workers (sample_id, worker_id)   values (673,27);
insert into samples (site_id, date_and_time, moon, qa_code, session_id, temperature, salinity, dissolved_oxygen, dissolved_oxygen_pct, ph, turbidity_1, turbidity_2, turbidity_3)   values (11,'2017-12-06 9:45',19,162,39,24.7,34.9,6.95,101.6,8.19,1.86,1.69,1.85);
insert into sample_workers (sample_id, worker_id)   values (674,7);
insert into sample_workers (sample_id, worker_id)   values (674,5);
insert into sample_workers (sample_id, worker_id)   values (674,27);
insert into samples (site_id, date_and_time, moon, qa_code, session_id, temperature, salinity, dissolved_oxygen, dissolved_oxygen_pct, ph, turbidity_1, turbidity_2, turbidity_3)   values (12,'2017-12-06 10:08',19,162,39,24.6,34.8,6.96,101.4,8.16,1.39,1.41,1.33);
insert into sample_workers (sample_id, worker_id)   values (675,7);
insert into sample_workers (sample_id, worker_id)   values (675,5);
insert into sample_workers (sample_id, worker_id)   values (675,27);
insert into samples (site_id, date_and_time, moon, qa_code, session_id, temperature, salinity, dissolved_oxygen, dissolved_oxygen_pct, ph, turbidity_1, turbidity_2, turbidity_3)   values (19,'2017-12-08 7:50',21,162,39,23.2,34.5,6.78,96.2,8.14,23.90,28.50,25.20);
insert into sample_workers (sample_id, worker_id)   values (676,12);
insert into sample_workers (sample_id, worker_id)   values (676,10);
insert into sample_workers (sample_id, worker_id)   values (676,17);
insert into samples (site_id, date_and_time, moon, qa_code, session_id, temperature, salinity, dissolved_oxygen, dissolved_oxygen_pct, ph, turbidity_1, turbidity_2, turbidity_3)   values (21,'2017-12-08 8:40',21,162,39,24.7,35.1,6.95,101.6,8.18,1.41,1.71,1.54);
insert into sample_workers (sample_id, worker_id)   values (677,12);
insert into sample_workers (sample_id, worker_id)   values (677,10);
insert into sample_workers (sample_id, worker_id)   values (677,17);
insert into samples (site_id, date_and_time, moon, qa_code, session_id, temperature, salinity, dissolved_oxygen, dissolved_oxygen_pct, ph, turbidity_1, turbidity_2, turbidity_3)   values (22,'2017-12-08 9:15',21,162,39,25.1,35.1,6.91,101.8,8.18,0.59,0.69,0.64);
insert into sample_workers (sample_id, worker_id)   values (678,12);
insert into sample_workers (sample_id, worker_id)   values (678,10);
insert into sample_workers (sample_id, worker_id)   values (678,17);
insert into samples (site_id, date_and_time, moon, qa_code, session_id, temperature, salinity, dissolved_oxygen, dissolved_oxygen_pct, ph, turbidity_1, turbidity_2, turbidity_3)   values (23,'2017-12-08 9:45',21,162,39,25.4,35.1,7.03,104.0,8.19,1.17,1.60,1.45);
insert into sample_workers (sample_id, worker_id)   values (679,12);
insert into sample_workers (sample_id, worker_id)   values (679,10);
insert into sample_workers (sample_id, worker_id)   values (679,17);
insert into samples (site_id, date_and_time, moon, qa_code, session_id, temperature, salinity, dissolved_oxygen, dissolved_oxygen_pct, ph, turbidity_1, turbidity_2, turbidity_3)   values (24,'2017-12-08 10:10',21,162,39,24.7,34.6,6.99,102.0,8.19,14.60,15.80,15.60);
insert into sample_workers (sample_id, worker_id)   values (680,12);
insert into sample_workers (sample_id, worker_id)   values (680,10);
insert into sample_workers (sample_id, worker_id)   values (680,17);
insert into samples (site_id, date_and_time, moon, qa_code, session_id, temperature, salinity, dissolved_oxygen, dissolved_oxygen_pct, ph, turbidity_1, turbidity_2, turbidity_3)   values (25,'2017-12-08 10:35',21,162,39,25.5,34.8,6.96,102.9,8.22,21.50,20.60,21.40);
insert into sample_workers (sample_id, worker_id)   values (681,12);
insert into sample_workers (sample_id, worker_id)   values (681,10);
insert into sample_workers (sample_id, worker_id)   values (681,17);
insert into samples (site_id, date_and_time, moon, qa_code, session_id, temperature, salinity, dissolved_oxygen, dissolved_oxygen_pct, ph, turbidity_1, turbidity_2, turbidity_3)   values (1,'2017-12-05 8:06',18,162,39,24.2,35.2,6.89,100.0,8.17,1.04,1.14,1.08);
insert into sample_workers (sample_id, worker_id)   values (682,2);
insert into sample_workers (sample_id, worker_id)   values (682,28);
insert into sample_workers (sample_id, worker_id)   values (682,9);
insert into samples (site_id, date_and_time, moon, qa_code, session_id, temperature, salinity, dissolved_oxygen, dissolved_oxygen_pct, ph, turbidity_1, turbidity_2, turbidity_3)   values (2,'2017-12-05 8:31',18,162,39,23.5,34.5,6.96,99.3,8.17,31.10,31.80,32.60);
insert into sample_workers (sample_id, worker_id)   values (683,2);
insert into sample_workers (sample_id, worker_id)   values (683,28);
insert into sample_workers (sample_id, worker_id)   values (683,9);
insert into samples (site_id, date_and_time, moon, qa_code, session_id, temperature, salinity, dissolved_oxygen, dissolved_oxygen_pct, ph, turbidity_1, turbidity_2, turbidity_3)   values (3,'2017-12-05 8:52',18,162,39,23.5,34.0,7.01,99.8,8.17,10.10,9.83,10.40);
insert into sample_workers (sample_id, worker_id)   values (684,2);
insert into sample_workers (sample_id, worker_id)   values (684,28);
insert into sample_workers (sample_id, worker_id)   values (684,9);
insert into samples (site_id, date_and_time, moon, qa_code, session_id, temperature, salinity, dissolved_oxygen, dissolved_oxygen_pct, ph, turbidity_1, turbidity_2, turbidity_3)   values (4,'2017-12-05 9:13',18,162,39,24.5,34.5,6.82,99.0,8.18,6.41,6.78,6.52);
insert into sample_workers (sample_id, worker_id)   values (685,2);
insert into sample_workers (sample_id, worker_id)   values (685,28);
insert into sample_workers (sample_id, worker_id)   values (685,9);
insert into samples (site_id, date_and_time, moon, qa_code, session_id, temperature, salinity, dissolved_oxygen, dissolved_oxygen_pct, ph, turbidity_1, turbidity_2, turbidity_3)   values (5,'2017-12-05 9:33',18,162,39,25.5,34.4,6.84,101.0,8.20,2.13,2.10,2.27);
insert into sample_workers (sample_id, worker_id)   values (686,2);
insert into sample_workers (sample_id, worker_id)   values (686,28);
insert into sample_workers (sample_id, worker_id)   values (686,9);
insert into samples (site_id, date_and_time, moon, qa_code, session_id, temperature, salinity, dissolved_oxygen, dissolved_oxygen_pct, ph, turbidity_1, turbidity_2, turbidity_3)   values (6,'2017-12-05 9:51',18,162,39,25.1,33.8,6.83,100.0,8.23,1.55,1.57,1.58);
insert into sample_workers (sample_id, worker_id)   values (687,2);
insert into sample_workers (sample_id, worker_id)   values (687,28);
insert into sample_workers (sample_id, worker_id)   values (687,9);
-- session :  32 session_id auto_increment : 40

-- insert this session
insert into sessions (lab_id, session_number, start_date) values (1, 32, '2017-12-19');
insert into samples (site_id, date_and_time, moon, qa_code, session_id, temperature, salinity, dissolved_oxygen, dissolved_oxygen_pct, ph, turbidity_1, turbidity_2, turbidity_3)   values (13,'2017-12-21 8:21',4,162,40,23.5,34.7,6.46,92.8,8.03,9.07,10.40,10.40);
insert into sample_workers (sample_id, worker_id)   values (688,9);
insert into sample_workers (sample_id, worker_id)   values (688,15);
insert into samples (site_id, date_and_time, moon, qa_code, session_id, temperature, salinity, dissolved_oxygen, dissolved_oxygen_pct, ph, turbidity_1, turbidity_2, turbidity_3)   values (14,'2017-12-21 8:45',4,162,40,24.1,34.8,5.91,85.9,8.02,2.35,2.23,2.65);
insert into sample_workers (sample_id, worker_id)   values (689,9);
insert into sample_workers (sample_id, worker_id)   values (689,15);
insert into samples (site_id, date_and_time, moon, qa_code, session_id, temperature, salinity, dissolved_oxygen, dissolved_oxygen_pct, ph, turbidity_1, turbidity_2, turbidity_3)   values (15,'2017-12-21 9:04',4,162,40,24.2,34.6,5.87,85.4,8.00,4.36,4.27,4.38);
insert into sample_workers (sample_id, worker_id)   values (690,9);
insert into sample_workers (sample_id, worker_id)   values (690,15);
insert into samples (site_id, date_and_time, moon, qa_code, session_id, temperature, salinity, dissolved_oxygen, dissolved_oxygen_pct, ph, turbidity_1, turbidity_2, turbidity_3)   values (16,'2017-12-21 9:24',4,162,40,24.2,34.6,6.63,96.5,8.11,3.66,3.56,3.52);
insert into sample_workers (sample_id, worker_id)   values (691,9);
insert into sample_workers (sample_id, worker_id)   values (691,15);
insert into samples (site_id, date_and_time, moon, qa_code, session_id, temperature, salinity, dissolved_oxygen, dissolved_oxygen_pct, ph, turbidity_1, turbidity_2, turbidity_3)   values (17,'2017-12-21 9:43',4,162,40,24.7,34.6,6.63,97.4,8.09,50.00,50.40,49.10);
insert into sample_workers (sample_id, worker_id)   values (692,9);
insert into sample_workers (sample_id, worker_id)   values (692,15);
insert into samples (site_id, date_and_time, moon, qa_code, session_id, temperature, salinity, dissolved_oxygen, dissolved_oxygen_pct, ph, turbidity_1, turbidity_2, turbidity_3)   values (18,'2017-12-21 9:58',4,162,40,25.0,35.1,6.24,92.3,8.11,13.30,13.10,13.20);
insert into sample_workers (sample_id, worker_id)   values (693,9);
insert into sample_workers (sample_id, worker_id)   values (693,15);
insert into samples (site_id, date_and_time, moon, qa_code, session_id, temperature, salinity, dissolved_oxygen, dissolved_oxygen_pct, ph, turbidity_1, turbidity_2, turbidity_3)   values (7,'2017-12-20 8:20',3,162,40,24.0,35.4,6.68,97.2,8.15,5.42,5.43,5.33);
insert into sample_workers (sample_id, worker_id)   values (694,9);
insert into sample_workers (sample_id, worker_id)   values (694,5);
insert into sample_workers (sample_id, worker_id)   values (694,27);
insert into samples (site_id, date_and_time, moon, qa_code, session_id, temperature, salinity, dissolved_oxygen, dissolved_oxygen_pct, ph, turbidity_1, turbidity_2, turbidity_3)   values (8,'2017-12-20 8:41',3,162,40,24.1,34.9,6.59,96,8.14,7.31,6.83,6.69);
insert into sample_workers (sample_id, worker_id)   values (695,9);
insert into sample_workers (sample_id, worker_id)   values (695,5);
insert into sample_workers (sample_id, worker_id)   values (695,27);
insert into samples (site_id, date_and_time, moon, qa_code, session_id, temperature, salinity, dissolved_oxygen, dissolved_oxygen_pct, ph, turbidity_1, turbidity_2, turbidity_3)   values (9,'2017-12-20 9:05',3,162,40,23.9,34.5,6.61,95.5,8.13,10.30,10.00,9.88);
insert into sample_workers (sample_id, worker_id)   values (696,9);
insert into sample_workers (sample_id, worker_id)   values (696,5);
insert into sample_workers (sample_id, worker_id)   values (696,27);
insert into samples (site_id, date_and_time, moon, qa_code, session_id, temperature, salinity, dissolved_oxygen, dissolved_oxygen_pct, ph, turbidity_1, turbidity_2, turbidity_3)   values (10,'2017-12-20 9:35',3,162,40,24.4,34.9,6.85,100.2,8.17,5.09,5.19,5.75);
insert into sample_workers (sample_id, worker_id)   values (697,9);
insert into sample_workers (sample_id, worker_id)   values (697,5);
insert into sample_workers (sample_id, worker_id)   values (697,27);
insert into samples (site_id, date_and_time, moon, qa_code, session_id, temperature, salinity, dissolved_oxygen, dissolved_oxygen_pct, ph, turbidity_1, turbidity_2, turbidity_3)   values (11,'2017-12-20 9:55',3,162,40,24.6,35.0,6.77,99.5,8.13,4.96,4.59,4.94);
insert into sample_workers (sample_id, worker_id)   values (698,9);
insert into sample_workers (sample_id, worker_id)   values (698,5);
insert into sample_workers (sample_id, worker_id)   values (698,27);
insert into samples (site_id, date_and_time, moon, qa_code, session_id, temperature, salinity, dissolved_oxygen, dissolved_oxygen_pct, ph, turbidity_1, turbidity_2, turbidity_3)   values (12,'2017-12-20 10:15',3,162,40,24.6,35.0,6.35,93.2,8.08,2.48,2.89,2.56);
insert into sample_workers (sample_id, worker_id)   values (699,9);
insert into sample_workers (sample_id, worker_id)   values (699,5);
insert into sample_workers (sample_id, worker_id)   values (699,27);
insert into samples (site_id, date_and_time, moon, qa_code, session_id, temperature, salinity, dissolved_oxygen, dissolved_oxygen_pct, ph, turbidity_1, turbidity_2, turbidity_3)   values (19,'2017-12-22 7:59',6,162,40,22.6,28.5,7.04,96.1,8.17,21.20,21.30,20.00);
insert into sample_workers (sample_id, worker_id)   values (700,9);
insert into sample_workers (sample_id, worker_id)   values (700,12);
insert into sample_workers (sample_id, worker_id)   values (700,17);
insert into samples (site_id, date_and_time, moon, qa_code, session_id, temperature, salinity, dissolved_oxygen, dissolved_oxygen_pct, ph, turbidity_1, turbidity_2, turbidity_3)   values (21,'2017-12-22 8:42',6,162,40,23.4,33.9,6.98,99.5,8.17,7.26,7.37,7.55);
insert into sample_workers (sample_id, worker_id)   values (701,9);
insert into sample_workers (sample_id, worker_id)   values (701,12);
insert into sample_workers (sample_id, worker_id)   values (701,17);
insert into samples (site_id, date_and_time, moon, qa_code, session_id, temperature, salinity, dissolved_oxygen, dissolved_oxygen_pct, ph, turbidity_1, turbidity_2, turbidity_3)   values (22,'2017-12-22 9:17',6,162,40,24.0,35.1,6.93,100.7,8.19,4.55,4.11,4.26);
insert into sample_workers (sample_id, worker_id)   values (702,9);
insert into sample_workers (sample_id, worker_id)   values (702,12);
insert into sample_workers (sample_id, worker_id)   values (702,17);
insert into samples (site_id, date_and_time, moon, qa_code, session_id, temperature, salinity, dissolved_oxygen, dissolved_oxygen_pct, ph, turbidity_1, turbidity_2, turbidity_3)   values (23,'2017-12-22 9:50',6,162,40,24.5,34.7,6.95,101.8,8.18,3.12,3.49,3.53);
insert into sample_workers (sample_id, worker_id)   values (703,9);
insert into sample_workers (sample_id, worker_id)   values (703,12);
insert into sample_workers (sample_id, worker_id)   values (703,17);
insert into samples (site_id, date_and_time, moon, qa_code, session_id, temperature, salinity, dissolved_oxygen, dissolved_oxygen_pct, ph, turbidity_1, turbidity_2, turbidity_3)   values (24,'2017-12-22 10:18',6,162,40,23.4,33.9,6.93,99.1,8.14,36.40,35.90,36.20);
insert into sample_workers (sample_id, worker_id)   values (704,9);
insert into sample_workers (sample_id, worker_id)   values (704,12);
insert into sample_workers (sample_id, worker_id)   values (704,17);
insert into samples (site_id, date_and_time, moon, qa_code, session_id, temperature, salinity, dissolved_oxygen, dissolved_oxygen_pct, ph, turbidity_1, turbidity_2, turbidity_3)   values (25,'2017-12-22 10:43',6,162,40,24.3,33.7,7.18,103.9,8.19,16.50,17.00,16.60);
insert into sample_workers (sample_id, worker_id)   values (705,9);
insert into sample_workers (sample_id, worker_id)   values (705,12);
insert into sample_workers (sample_id, worker_id)   values (705,17);
insert into samples (site_id, date_and_time, moon, qa_code, session_id, temperature, salinity, dissolved_oxygen, dissolved_oxygen_pct, ph, turbidity_1, turbidity_2, turbidity_3)   values (1,'2017-12-19 8:21',3,162,40,24.8,35.2,6.72,98.9,8.16,1.15,1.28,1.08);
insert into sample_workers (sample_id, worker_id)   values (706,9);
insert into sample_workers (sample_id, worker_id)   values (706,2);
insert into samples (site_id, date_and_time, moon, qa_code, session_id, temperature, salinity, dissolved_oxygen, dissolved_oxygen_pct, ph, turbidity_1, turbidity_2, turbidity_3)   values (2,'2017-12-19 8:55',3,162,40,24.8,34.0,6.74,98.7,8.16,24.50,23.50,22.20);
insert into sample_workers (sample_id, worker_id)   values (707,9);
insert into sample_workers (sample_id, worker_id)   values (707,2);
insert into samples (site_id, date_and_time, moon, qa_code, session_id, temperature, salinity, dissolved_oxygen, dissolved_oxygen_pct, ph, turbidity_1, turbidity_2, turbidity_3)   values (3,'2017-12-19 9:21',3,162,40,24.9,34.9,6.68,98.4,8.18,26.20,25.50,24.90);
insert into sample_workers (sample_id, worker_id)   values (708,9);
insert into sample_workers (sample_id, worker_id)   values (708,2);
insert into samples (site_id, date_and_time, moon, qa_code, session_id, temperature, salinity, dissolved_oxygen, dissolved_oxygen_pct, ph, turbidity_1, turbidity_2, turbidity_3)   values (4,'2017-12-19 9:46',3,162,40,25.1,34.8,6.46,95.4,8.18,5.57,5.00,4.46);
insert into sample_workers (sample_id, worker_id)   values (709,9);
insert into sample_workers (sample_id, worker_id)   values (709,2);
insert into samples (site_id, date_and_time, moon, qa_code, session_id, temperature, salinity, dissolved_oxygen, dissolved_oxygen_pct, ph, turbidity_1, turbidity_2, turbidity_3)   values (5,'2017-12-19 10:10',3,162,40,25.2,34.2,6.64,97.9,8.20,2.03,1.96,2.13);
insert into sample_workers (sample_id, worker_id)   values (710,9);
insert into sample_workers (sample_id, worker_id)   values (710,2);
insert into samples (site_id, date_and_time, moon, qa_code, session_id, temperature, salinity, dissolved_oxygen, dissolved_oxygen_pct, ph, turbidity_1, turbidity_2, turbidity_3)   values (6,'2017-12-19 10:30',3,162,40,24.9,33.1,6.74,98.5,8.21,1.35,1.15,1.14);
insert into sample_workers (sample_id, worker_id)   values (711,9);
insert into sample_workers (sample_id, worker_id)   values (711,2);
-- session :  33 session_id auto_increment : 41

-- insert this session
insert into sessions (lab_id, session_number, start_date) values (1, 33, '2018-01-09');
insert into samples (site_id, date_and_time, moon, qa_code, session_id, temperature, salinity, dissolved_oxygen, dissolved_oxygen_pct, ph, turbidity_1, turbidity_2, turbidity_3)   values (13,'2018-01-11 7:14',25,162,41,23.1,34.3,5.88,83.4,8.06,2.66,2.53,2.48);
insert into sample_workers (sample_id, worker_id)   values (712,13);
insert into sample_workers (sample_id, worker_id)   values (712,15);
insert into sample_workers (sample_id, worker_id)   values (712,14);
insert into samples (site_id, date_and_time, moon, qa_code, session_id, temperature, salinity, dissolved_oxygen, dissolved_oxygen_pct, ph, turbidity_1, turbidity_2, turbidity_3)   values (14,'2018-01-11 7:34',25,162,41,24.1,34.6,6.47,93.4,8.10,1.10,0.90,0.83);
insert into sample_workers (sample_id, worker_id)   values (713,13);
insert into sample_workers (sample_id, worker_id)   values (713,15);
insert into sample_workers (sample_id, worker_id)   values (713,14);
insert into samples (site_id, date_and_time, moon, qa_code, session_id, temperature, salinity, dissolved_oxygen, dissolved_oxygen_pct, ph, turbidity_1, turbidity_2, turbidity_3)   values (15,'2018-01-11 7:46',25,162,41,23.9,34.4,6.29,90.3,8.09,1.14,1.09,1.20);
insert into sample_workers (sample_id, worker_id)   values (714,13);
insert into sample_workers (sample_id, worker_id)   values (714,15);
insert into sample_workers (sample_id, worker_id)   values (714,14);
insert into samples (site_id, date_and_time, moon, qa_code, session_id, temperature, salinity, dissolved_oxygen, dissolved_oxygen_pct, ph, turbidity_1, turbidity_2, turbidity_3)   values (16,'2018-01-11 8:00',25,162,41,24.2,34.6,6.65,96.0,8.14,2.09,2.16,2.10);
insert into sample_workers (sample_id, worker_id)   values (715,13);
insert into sample_workers (sample_id, worker_id)   values (715,15);
insert into sample_workers (sample_id, worker_id)   values (715,14);
insert into samples (site_id, date_and_time, moon, qa_code, session_id, temperature, salinity, dissolved_oxygen, dissolved_oxygen_pct, ph, turbidity_1, turbidity_2, turbidity_3)   values (17,'2018-01-11 8:12',25,162,41,24.2,34.8,6.85,99.3,8.14,4.19,5.02,3.85);
insert into sample_workers (sample_id, worker_id)   values (716,13);
insert into sample_workers (sample_id, worker_id)   values (716,15);
insert into sample_workers (sample_id, worker_id)   values (716,14);
insert into samples (site_id, date_and_time, moon, qa_code, session_id, temperature, salinity, dissolved_oxygen, dissolved_oxygen_pct, ph, turbidity_1, turbidity_2, turbidity_3)   values (18,'2018-01-11 8:30',25,162,41,24.4,34.6,6.82,99.0,8.13,1.53,1.67,1.70);
insert into sample_workers (sample_id, worker_id)   values (717,13);
insert into sample_workers (sample_id, worker_id)   values (717,15);
insert into sample_workers (sample_id, worker_id)   values (717,14);
insert into samples (site_id, date_and_time, moon, qa_code, session_id, temperature, salinity, dissolved_oxygen, dissolved_oxygen_pct, ph, turbidity_1, turbidity_2, turbidity_3)   values (7,'2018-01-10 8:27',24,162,41,23.9,34.7,5.85,84.1,8.07,1.46,1.68,1.59);
insert into sample_workers (sample_id, worker_id)   values (718,5);
insert into sample_workers (sample_id, worker_id)   values (718,27);
insert into sample_workers (sample_id, worker_id)   values (718,18);
insert into samples (site_id, date_and_time, moon, qa_code, session_id, temperature, salinity, dissolved_oxygen, dissolved_oxygen_pct, ph, turbidity_1, turbidity_2, turbidity_3)   values (8,'2018-01-10 8:45',24,162,41,24.0,34.1,6.10,87.7,8.07,2.38,3.00,2.55);
insert into sample_workers (sample_id, worker_id)   values (719,5);
insert into sample_workers (sample_id, worker_id)   values (719,27);
insert into sample_workers (sample_id, worker_id)   values (719,18);
insert into samples (site_id, date_and_time, moon, qa_code, session_id, temperature, salinity, dissolved_oxygen, dissolved_oxygen_pct, ph, turbidity_1, turbidity_2, turbidity_3)   values (9,'2018-01-10 9:07',24,162,41,24.0,34.2,6.03,86.6,8.06,2.57,2.34,2.49);
insert into sample_workers (sample_id, worker_id)   values (720,5);
insert into sample_workers (sample_id, worker_id)   values (720,27);
insert into sample_workers (sample_id, worker_id)   values (720,18);
insert into samples (site_id, date_and_time, moon, qa_code, session_id, temperature, salinity, dissolved_oxygen, dissolved_oxygen_pct, ph, turbidity_1, turbidity_2, turbidity_3)   values (10,'2018-01-10 9:33',24,162,41,24.3,34.2,7.03,101.5,8.14,1.24,1.41,1.31);
insert into sample_workers (sample_id, worker_id)   values (721,5);
insert into sample_workers (sample_id, worker_id)   values (721,27);
insert into sample_workers (sample_id, worker_id)   values (721,18);
insert into samples (site_id, date_and_time, moon, qa_code, session_id, temperature, salinity, dissolved_oxygen, dissolved_oxygen_pct, ph, turbidity_1, turbidity_2, turbidity_3)   values (11,'2018-01-10 9:52',24,162,41,25.0,34.5,7.11,104,8.15,1.02,1.03,1.18);
insert into sample_workers (sample_id, worker_id)   values (722,5);
insert into sample_workers (sample_id, worker_id)   values (722,27);
insert into sample_workers (sample_id, worker_id)   values (722,18);
insert into samples (site_id, date_and_time, moon, qa_code, session_id, temperature, salinity, dissolved_oxygen, dissolved_oxygen_pct, ph, turbidity_1, turbidity_2, turbidity_3)   values (12,'2018-01-10 10:19',24,162,41,24.5,34.5,7.38,107.2,8.13,2.92,2.37,2.75);
insert into sample_workers (sample_id, worker_id)   values (723,5);
insert into sample_workers (sample_id, worker_id)   values (723,27);
insert into sample_workers (sample_id, worker_id)   values (723,18);
insert into samples (site_id, date_and_time, moon, qa_code, session_id, temperature, salinity, dissolved_oxygen, dissolved_oxygen_pct, ph, turbidity_1, turbidity_2, turbidity_3)   values (19,'2018-01-12 7:55',26,162,41,22.8,33.1,6.82,95.4,8.07,59.60,65.30,68.80);
insert into sample_workers (sample_id, worker_id)   values (724,12);
insert into sample_workers (sample_id, worker_id)   values (724,17);
insert into sample_workers (sample_id, worker_id)   values (724,10);
insert into samples (site_id, date_and_time, moon, qa_code, session_id, temperature, salinity, dissolved_oxygen, dissolved_oxygen_pct, ph, turbidity_1, turbidity_2, turbidity_3)   values (21,'2018-01-12 8:45',26,162,41,24.0,34.3,7.04,101.3,8.16,3.27,4.44,3.68);
insert into sample_workers (sample_id, worker_id)   values (725,12);
insert into sample_workers (sample_id, worker_id)   values (725,17);
insert into sample_workers (sample_id, worker_id)   values (725,10);
insert into samples (site_id, date_and_time, moon, qa_code, session_id, temperature, salinity, dissolved_oxygen, dissolved_oxygen_pct, ph, turbidity_1, turbidity_2, turbidity_3)   values (22,'2018-01-12 9:15',26,162,41,24.5,34.7,7.02,102.4,8.17,1.04,1.00,1.17);
insert into sample_workers (sample_id, worker_id)   values (726,12);
insert into sample_workers (sample_id, worker_id)   values (726,17);
insert into sample_workers (sample_id, worker_id)   values (726,10);
insert into samples (site_id, date_and_time, moon, qa_code, session_id, temperature, salinity, dissolved_oxygen, dissolved_oxygen_pct, ph, turbidity_1, turbidity_2, turbidity_3)   values (23,'2018-01-12 9:40',26,162,41,24.8,33.9,7.04,102.6,8.16,2.83,2.41,2.57);
insert into sample_workers (sample_id, worker_id)   values (727,12);
insert into sample_workers (sample_id, worker_id)   values (727,17);
insert into sample_workers (sample_id, worker_id)   values (727,10);
insert into samples (site_id, date_and_time, moon, qa_code, session_id, temperature, salinity, dissolved_oxygen, dissolved_oxygen_pct, ph, turbidity_1, turbidity_2, turbidity_3)   values (24,'2018-01-12 10:10',26,162,41,24.4,33.8,6.99,101.1,8.15,16.80,17.70,18.60);
insert into sample_workers (sample_id, worker_id)   values (728,12);
insert into sample_workers (sample_id, worker_id)   values (728,17);
insert into sample_workers (sample_id, worker_id)   values (728,10);
insert into samples (site_id, date_and_time, moon, qa_code, session_id, temperature, salinity, dissolved_oxygen, dissolved_oxygen_pct, ph, turbidity_1, turbidity_2, turbidity_3)   values (25,'2018-01-12 10:30',26,162,41,25.4,34.5,7.20,106.3,8.23,7.79,9.47,8.58);
insert into sample_workers (sample_id, worker_id)   values (729,12);
insert into sample_workers (sample_id, worker_id)   values (729,17);
insert into sample_workers (sample_id, worker_id)   values (729,10);
insert into samples (site_id, date_and_time, moon, qa_code, session_id, temperature, salinity, dissolved_oxygen, dissolved_oxygen_pct, ph, turbidity_1, turbidity_2, turbidity_3)   values (1,'2018-01-09 8:15',23,162,41,23.6,34.0,6.95,99.3,8.10,0.60,0.55,0.50);
insert into sample_workers (sample_id, worker_id)   values (730,2);
insert into sample_workers (sample_id, worker_id)   values (730,3);
insert into sample_workers (sample_id, worker_id)   values (730,28);
insert into samples (site_id, date_and_time, moon, qa_code, session_id, temperature, salinity, dissolved_oxygen, dissolved_oxygen_pct, ph, turbidity_1, turbidity_2, turbidity_3)   values (2,'2018-01-09 8:47',23,162,41,24.1,33.9,6.80,97.6,8.16,2.32,2.60,2.42);
insert into sample_workers (sample_id, worker_id)   values (731,2);
insert into sample_workers (sample_id, worker_id)   values (731,3);
insert into sample_workers (sample_id, worker_id)   values (731,28);
insert into samples (site_id, date_and_time, moon, qa_code, session_id, temperature, salinity, dissolved_oxygen, dissolved_oxygen_pct, ph, turbidity_1, turbidity_2, turbidity_3)   values (3,'2018-01-09 9:09',23,162,41,23.7,34.5,6.97,99.8,8.15,11.90,12.70,12.60);
insert into sample_workers (sample_id, worker_id)   values (732,2);
insert into sample_workers (sample_id, worker_id)   values (732,3);
insert into sample_workers (sample_id, worker_id)   values (732,28);
insert into samples (site_id, date_and_time, moon, qa_code, session_id, temperature, salinity, dissolved_oxygen, dissolved_oxygen_pct, ph, turbidity_1, turbidity_2, turbidity_3)   values (4,'2018-01-09 9:26',23,162,41,24.8,34.2,6.64,96.8,8.17,1.38,1.32,1.56);
insert into sample_workers (sample_id, worker_id)   values (733,2);
insert into sample_workers (sample_id, worker_id)   values (733,3);
insert into sample_workers (sample_id, worker_id)   values (733,28);
insert into samples (site_id, date_and_time, moon, qa_code, session_id, temperature, salinity, dissolved_oxygen, dissolved_oxygen_pct, ph, turbidity_1, turbidity_2, turbidity_3)   values (5,'2018-01-09 9:46',23,162,41,25.0,34.4,6.74,98.7,8.18,7.32,8.02,7.62);
insert into sample_workers (sample_id, worker_id)   values (734,2);
insert into sample_workers (sample_id, worker_id)   values (734,3);
insert into sample_workers (sample_id, worker_id)   values (734,28);
insert into samples (site_id, date_and_time, moon, qa_code, session_id, temperature, salinity, dissolved_oxygen, dissolved_oxygen_pct, ph, turbidity_1, turbidity_2, turbidity_3)   values (6,'2018-01-09 10:03',23,162,41,24.9,33.5,6.99,101.6,8.20,1.98,2.06,2.02);
insert into sample_workers (sample_id, worker_id)   values (735,2);
insert into sample_workers (sample_id, worker_id)   values (735,3);
insert into sample_workers (sample_id, worker_id)   values (735,28);
-- session :  34 session_id auto_increment : 42

-- insert this session
insert into sessions (lab_id, session_number, start_date) values (1, 34, '2018-01-30');
insert into samples (site_id, date_and_time, moon, qa_code, session_id, temperature, salinity, dissolved_oxygen, dissolved_oxygen_pct, ph, turbidity_1, turbidity_2, turbidity_3)   values (13,'2018-02-01 7:07',16,162,42,24.2,34.9,6.27,91.6,8.08,20.80,21.20,22.70);
insert into sample_workers (sample_id, worker_id)   values (736,11);
insert into sample_workers (sample_id, worker_id)   values (736,15);
insert into sample_workers (sample_id, worker_id)   values (736,14);
insert into samples (site_id, date_and_time, moon, qa_code, session_id, temperature, salinity, dissolved_oxygen, dissolved_oxygen_pct, ph, turbidity_1, turbidity_2, turbidity_3)   values (14,'2018-02-01 7:27',16,162,42,25.2,34.2,6.44,95.4,8.08,2.96,2.92,3.25);
insert into sample_workers (sample_id, worker_id)   values (737,11);
insert into sample_workers (sample_id, worker_id)   values (737,15);
insert into sample_workers (sample_id, worker_id)   values (737,14);
insert into samples (site_id, date_and_time, moon, qa_code, session_id, temperature, salinity, dissolved_oxygen, dissolved_oxygen_pct, ph, turbidity_1, turbidity_2, turbidity_3)   values (15,'2018-02-01 7:44',16,162,42,25.1,34.5,6.26,92.5,8.07,4.57,4.34,4.23);
insert into sample_workers (sample_id, worker_id)   values (738,11);
insert into sample_workers (sample_id, worker_id)   values (738,15);
insert into sample_workers (sample_id, worker_id)   values (738,14);
insert into samples (site_id, date_and_time, moon, qa_code, session_id, temperature, salinity, dissolved_oxygen, dissolved_oxygen_pct, ph, turbidity_1, turbidity_2, turbidity_3)   values (16,'2018-02-01 7:58',16,162,42,24.6,34.7,6.54,95.9,8.12,5.91,6.20,5.72);
insert into sample_workers (sample_id, worker_id)   values (739,11);
insert into sample_workers (sample_id, worker_id)   values (739,15);
insert into sample_workers (sample_id, worker_id)   values (739,14);
insert into samples (site_id, date_and_time, moon, qa_code, session_id, temperature, salinity, dissolved_oxygen, dissolved_oxygen_pct, ph, turbidity_1, turbidity_2, turbidity_3)   values (17,'2018-02-01 8:12',16,162,42,25.0,34.8,6.59,97.5,8.10,7.42,8.99,7.38);
insert into sample_workers (sample_id, worker_id)   values (740,11);
insert into sample_workers (sample_id, worker_id)   values (740,15);
insert into sample_workers (sample_id, worker_id)   values (740,14);
insert into samples (site_id, date_and_time, moon, qa_code, session_id, temperature, salinity, dissolved_oxygen, dissolved_oxygen_pct, ph, turbidity_1, turbidity_2, turbidity_3)   values (18,'2018-02-01 8:28',16,162,42,24.9,34.7,6.53,96.4,8.14,2.65,2.47,2.96);
insert into sample_workers (sample_id, worker_id)   values (741,11);
insert into sample_workers (sample_id, worker_id)   values (741,15);
insert into sample_workers (sample_id, worker_id)   values (741,14);
insert into samples (site_id, date_and_time, moon, qa_code, session_id, temperature, salinity, dissolved_oxygen, dissolved_oxygen_pct, ph, turbidity_1, turbidity_2, turbidity_3)   values (7,'2018-01-31 8:07',15,162,42,23.8,33.4,6.38,91.8,8.09,10.50,11.40,11.50);
insert into sample_workers (sample_id, worker_id)   values (742,7);
insert into sample_workers (sample_id, worker_id)   values (742,5);
insert into sample_workers (sample_id, worker_id)   values (742,27);
insert into samples (site_id, date_and_time, moon, qa_code, session_id, temperature, salinity, dissolved_oxygen, dissolved_oxygen_pct, ph, turbidity_1, turbidity_2, turbidity_3)   values (8,'2018-01-31 8:30',15,162,42,23.8,33.8,6.31,91,8.09,11.80,12.20,12.90);
insert into sample_workers (sample_id, worker_id)   values (743,7);
insert into sample_workers (sample_id, worker_id)   values (743,5);
insert into sample_workers (sample_id, worker_id)   values (743,27);
insert into samples (site_id, date_and_time, moon, qa_code, session_id, temperature, salinity, dissolved_oxygen, dissolved_oxygen_pct, ph, turbidity_1, turbidity_2, turbidity_3)   values (9,'2018-01-31 8:50',15,162,42,24.0,34.1,6.60,95.7,8.13,4.15,4.83,4.74);
insert into sample_workers (sample_id, worker_id)   values (744,7);
insert into sample_workers (sample_id, worker_id)   values (744,5);
insert into sample_workers (sample_id, worker_id)   values (744,27);
insert into samples (site_id, date_and_time, moon, qa_code, session_id, temperature, salinity, dissolved_oxygen, dissolved_oxygen_pct, ph, turbidity_1, turbidity_2, turbidity_3)   values (10,'2018-01-31 9:12',15,162,42,24.1,34.1,6.94,100.6,8.18,3.79,4.31,4.61);
insert into sample_workers (sample_id, worker_id)   values (745,7);
insert into sample_workers (sample_id, worker_id)   values (745,5);
insert into sample_workers (sample_id, worker_id)   values (745,27);
insert into samples (site_id, date_and_time, moon, qa_code, session_id, temperature, salinity, dissolved_oxygen, dissolved_oxygen_pct, ph, turbidity_1, turbidity_2, turbidity_3)   values (11,'2018-01-31 9:32',15,162,42,24.7,34.7,6.85,100.7,8.15,3.35,3.17,4.45);
insert into sample_workers (sample_id, worker_id)   values (746,7);
insert into sample_workers (sample_id, worker_id)   values (746,5);
insert into sample_workers (sample_id, worker_id)   values (746,27);
insert into samples (site_id, date_and_time, moon, qa_code, session_id, temperature, salinity, dissolved_oxygen, dissolved_oxygen_pct, ph, turbidity_1, turbidity_2, turbidity_3)   values (12,'2018-01-31 9:55',15,162,42,24.6,34.6,6.92,101.5,8.07,4.46,5.28,4.69);
insert into sample_workers (sample_id, worker_id)   values (747,7);
insert into sample_workers (sample_id, worker_id)   values (747,5);
insert into sample_workers (sample_id, worker_id)   values (747,27);
insert into samples (site_id, date_and_time, moon, qa_code, session_id, temperature, salinity, dissolved_oxygen, dissolved_oxygen_pct, ph, turbidity_1, turbidity_2, turbidity_3)   values (19,'2018-02-02 7:55',17,162,42,23.5,34.5,6.74,96.7,8.13,13.00,12.80,13.10);
insert into sample_workers (sample_id, worker_id)   values (748,12);
insert into sample_workers (sample_id, worker_id)   values (748,17);
insert into sample_workers (sample_id, worker_id)   values (748,10);
insert into samples (site_id, date_and_time, moon, qa_code, session_id, temperature, salinity, dissolved_oxygen, dissolved_oxygen_pct, ph, turbidity_1, turbidity_2, turbidity_3)   values (21,'2018-02-02 8:35',17,162,42,24.0,34.8,6.91,100.0,8.19,6.82,7.13,6.98);
insert into sample_workers (sample_id, worker_id)   values (749,12);
insert into sample_workers (sample_id, worker_id)   values (749,17);
insert into sample_workers (sample_id, worker_id)   values (749,10);
insert into samples (site_id, date_and_time, moon, qa_code, session_id, temperature, salinity, dissolved_oxygen, dissolved_oxygen_pct, ph, turbidity_1, turbidity_2, turbidity_3)   values (22,'2018-02-02 9:00',17,162,42,24.0,34.8,6.93,100.5,8.18,0.90,0.95,0.82);
insert into sample_workers (sample_id, worker_id)   values (750,12);
insert into sample_workers (sample_id, worker_id)   values (750,17);
insert into sample_workers (sample_id, worker_id)   values (750,10);
insert into samples (site_id, date_and_time, moon, qa_code, session_id, temperature, salinity, dissolved_oxygen, dissolved_oxygen_pct, ph, turbidity_1, turbidity_2, turbidity_3)   values (23,'2018-02-02 9:30',17,162,42,24.2,34.3,6.91,100.3,8.16,1.88,1.80,1.73);
insert into sample_workers (sample_id, worker_id)   values (751,12);
insert into sample_workers (sample_id, worker_id)   values (751,17);
insert into sample_workers (sample_id, worker_id)   values (751,10);
insert into samples (site_id, date_and_time, moon, qa_code, session_id, temperature, salinity, dissolved_oxygen, dissolved_oxygen_pct, ph, turbidity_1, turbidity_2, turbidity_3)   values (24,'2018-02-02 9:55',17,162,42,24.3,34.2,6.83,99.3,8.13,11.60,12.20,11.90);
insert into sample_workers (sample_id, worker_id)   values (752,12);
insert into sample_workers (sample_id, worker_id)   values (752,17);
insert into sample_workers (sample_id, worker_id)   values (752,10);
insert into samples (site_id, date_and_time, moon, qa_code, session_id, temperature, salinity, dissolved_oxygen, dissolved_oxygen_pct, ph, turbidity_1, turbidity_2, turbidity_3)   values (25,'2018-02-02 10:10',17,162,42,24.6,33.8,6.87,99.9,8.13,8.81,8.56,8.29);
insert into sample_workers (sample_id, worker_id)   values (753,12);
insert into sample_workers (sample_id, worker_id)   values (753,17);
insert into sample_workers (sample_id, worker_id)   values (753,10);
insert into samples (site_id, date_and_time, moon, qa_code, session_id, temperature, salinity, dissolved_oxygen, dissolved_oxygen_pct, ph, turbidity_1, turbidity_2, turbidity_3)   values (1,'2018-01-30 8:15',14,162,42,23.7,34.5,6.89,99.8,8.18,2.32,1.75,1.88);
insert into sample_workers (sample_id, worker_id)   values (754,4);
insert into sample_workers (sample_id, worker_id)   values (754,28);
insert into sample_workers (sample_id, worker_id)   values (754,6);
insert into samples (site_id, date_and_time, moon, qa_code, session_id, temperature, salinity, dissolved_oxygen, dissolved_oxygen_pct, ph, turbidity_1, turbidity_2, turbidity_3)   values (2,'2018-01-30 8:48',14,162,42,23.8,33.3,6.97,100.2,8.17,19.70,21.30,20.30);
insert into sample_workers (sample_id, worker_id)   values (755,4);
insert into sample_workers (sample_id, worker_id)   values (755,28);
insert into sample_workers (sample_id, worker_id)   values (755,6);
insert into samples (site_id, date_and_time, moon, qa_code, session_id, temperature, salinity, dissolved_oxygen, dissolved_oxygen_pct, ph, turbidity_1, turbidity_2, turbidity_3)   values (3,'2018-01-30 9:10',14,162,42,23.9,34.6,6.84,99.5,8.18,6.40,6.76,6.52);
insert into sample_workers (sample_id, worker_id)   values (756,4);
insert into sample_workers (sample_id, worker_id)   values (756,28);
insert into sample_workers (sample_id, worker_id)   values (756,6);
insert into samples (site_id, date_and_time, moon, qa_code, session_id, temperature, salinity, dissolved_oxygen, dissolved_oxygen_pct, ph, turbidity_1, turbidity_2, turbidity_3)   values (4,'2018-01-30 9:39',14,162,42,24.1,34.4,6.83,99.3,8.19,9.22,7.24,9.87);
insert into sample_workers (sample_id, worker_id)   values (757,4);
insert into sample_workers (sample_id, worker_id)   values (757,28);
insert into sample_workers (sample_id, worker_id)   values (757,6);
insert into samples (site_id, date_and_time, moon, qa_code, session_id, temperature, salinity, dissolved_oxygen, dissolved_oxygen_pct, ph, turbidity_1, turbidity_2, turbidity_3)   values (5,'2018-01-30 10:03',14,162,42,24.1,33.0,6.89,99.6,8.20,1.42,1.54,1.64);
insert into sample_workers (sample_id, worker_id)   values (758,4);
insert into sample_workers (sample_id, worker_id)   values (758,28);
insert into sample_workers (sample_id, worker_id)   values (758,6);
insert into samples (site_id, date_and_time, moon, qa_code, session_id, temperature, salinity, dissolved_oxygen, dissolved_oxygen_pct, ph, turbidity_1, turbidity_2, turbidity_3)   values (6,'2018-01-30 10:25',14,162,42,24.2,33.2,6.84,99.0,8.20,2.16,2.19,2.22);
insert into sample_workers (sample_id, worker_id)   values (759,4);
insert into sample_workers (sample_id, worker_id)   values (759,28);
insert into sample_workers (sample_id, worker_id)   values (759,6);
-- session :  35 session_id auto_increment : 43

-- insert this session
insert into sessions (lab_id, session_number, start_date) values (1, 35, '2018-02-20');
insert into samples (site_id, date_and_time, moon, qa_code, session_id, temperature, salinity, dissolved_oxygen, dissolved_oxygen_pct, ph, turbidity_1, turbidity_2, turbidity_3)   values (13,'2018-02-22 7:15',7,162,43,24.0,34.0,5.85,84.2,8.02,6.68,6.73,6.92);
insert into sample_workers (sample_id, worker_id)   values (760,9);
insert into sample_workers (sample_id, worker_id)   values (760,15);
insert into sample_workers (sample_id, worker_id)   values (760,14);
insert into samples (site_id, date_and_time, moon, qa_code, session_id, temperature, salinity, dissolved_oxygen, dissolved_oxygen_pct, ph, turbidity_1, turbidity_2, turbidity_3)   values (14,'2018-02-22 7:45',7,162,43,24.7,34.5,6.19,90.2,8.07,3.13,3.06,3.14);
insert into sample_workers (sample_id, worker_id)   values (761,9);
insert into sample_workers (sample_id, worker_id)   values (761,15);
insert into sample_workers (sample_id, worker_id)   values (761,14);
insert into samples (site_id, date_and_time, moon, qa_code, session_id, temperature, salinity, dissolved_oxygen, dissolved_oxygen_pct, ph, turbidity_1, turbidity_2, turbidity_3)   values (15,'2018-02-22 8:02',7,162,43,24.6,34.4,5.90,85.7,8.03,3.28,3.19,3.31);
insert into sample_workers (sample_id, worker_id)   values (762,9);
insert into sample_workers (sample_id, worker_id)   values (762,15);
insert into sample_workers (sample_id, worker_id)   values (762,14);
insert into samples (site_id, date_and_time, moon, qa_code, session_id, temperature, salinity, dissolved_oxygen, dissolved_oxygen_pct, ph, turbidity_1, turbidity_2, turbidity_3)   values (16,'2018-02-22 8:20',7,162,43,24.4,34.6,6.61,96.0,8.10,3.87,4.09,3.97);
insert into sample_workers (sample_id, worker_id)   values (763,9);
insert into sample_workers (sample_id, worker_id)   values (763,15);
insert into sample_workers (sample_id, worker_id)   values (763,14);
insert into samples (site_id, date_and_time, moon, qa_code, session_id, temperature, salinity, dissolved_oxygen, dissolved_oxygen_pct, ph, turbidity_1, turbidity_2, turbidity_3)   values (17,'2018-02-22 8:36',7,162,43,24.6,34.7,6.82,99.3,8.10,10.70,10.20,10.20);
insert into sample_workers (sample_id, worker_id)   values (764,9);
insert into sample_workers (sample_id, worker_id)   values (764,15);
insert into sample_workers (sample_id, worker_id)   values (764,14);
insert into samples (site_id, date_and_time, moon, qa_code, session_id, temperature, salinity, dissolved_oxygen, dissolved_oxygen_pct, ph, turbidity_1, turbidity_2, turbidity_3)   values (18,'2018-02-22 8:52',7,162,43,24.6,34.7,6.51,94.9,8.11,3.96,4.73,4.38);
insert into sample_workers (sample_id, worker_id)   values (765,9);
insert into sample_workers (sample_id, worker_id)   values (765,15);
insert into sample_workers (sample_id, worker_id)   values (765,14);
insert into samples (site_id, date_and_time, moon, qa_code, session_id, temperature, salinity, dissolved_oxygen, dissolved_oxygen_pct, ph, turbidity_1, turbidity_2, turbidity_3)   values (7,'2018-02-21 8:10',6,162,43,23.7,34.2,6.11,87.3,8.04,1.23,1.20,0.94);
insert into sample_workers (sample_id, worker_id)   values (766,7);
insert into sample_workers (sample_id, worker_id)   values (766,5);
insert into sample_workers (sample_id, worker_id)   values (766,18);
insert into samples (site_id, date_and_time, moon, qa_code, session_id, temperature, salinity, dissolved_oxygen, dissolved_oxygen_pct, ph, turbidity_1, turbidity_2, turbidity_3)   values (8,'2018-02-21 8:38',6,162,43,23.8,34.1,6.49,93.1,8.07,3.39,4.58,3.19);
insert into sample_workers (sample_id, worker_id)   values (767,7);
insert into sample_workers (sample_id, worker_id)   values (767,5);
insert into sample_workers (sample_id, worker_id)   values (767,18);
insert into samples (site_id, date_and_time, moon, qa_code, session_id, temperature, salinity, dissolved_oxygen, dissolved_oxygen_pct, ph, turbidity_1, turbidity_2, turbidity_3)   values (9,'2018-02-21 9:00',6,162,43,24.3,33.9,6.28,90.8,8.08,5.88,5.36,5.01);
insert into sample_workers (sample_id, worker_id)   values (768,7);
insert into sample_workers (sample_id, worker_id)   values (768,5);
insert into sample_workers (sample_id, worker_id)   values (768,18);
insert into samples (site_id, date_and_time, moon, qa_code, session_id, temperature, salinity, dissolved_oxygen, dissolved_oxygen_pct, ph, turbidity_1, turbidity_2, turbidity_3)   values (10,'2018-02-21 9:25',6,162,43,24.4,33.4,7.10,102.5,8.19,3.12,3.53,4.67);
insert into sample_workers (sample_id, worker_id)   values (769,7);
insert into sample_workers (sample_id, worker_id)   values (769,5);
insert into sample_workers (sample_id, worker_id)   values (769,18);
insert into samples (site_id, date_and_time, moon, qa_code, session_id, temperature, salinity, dissolved_oxygen, dissolved_oxygen_pct, ph, turbidity_1, turbidity_2, turbidity_3)   values (11,'2018-02-21 9:41',6,162,43,24.7,34.5,7.08,103.4,8.15,2.62,2.89,2.76);
insert into sample_workers (sample_id, worker_id)   values (770,7);
insert into sample_workers (sample_id, worker_id)   values (770,5);
insert into sample_workers (sample_id, worker_id)   values (770,18);
insert into samples (site_id, date_and_time, moon, qa_code, session_id, temperature, salinity, dissolved_oxygen, dissolved_oxygen_pct, ph, turbidity_1, turbidity_2, turbidity_3)   values (12,'2018-02-21 10:00',6,162,43,24.7,34.6,6.92,101.3,8.07,2.33,2.64,2.83);
insert into sample_workers (sample_id, worker_id)   values (771,7);
insert into sample_workers (sample_id, worker_id)   values (771,5);
insert into sample_workers (sample_id, worker_id)   values (771,18);
insert into samples (site_id, date_and_time, moon, qa_code, session_id, temperature, salinity, dissolved_oxygen, dissolved_oxygen_pct, ph, turbidity_1, turbidity_2, turbidity_3)   values (19,'2018-02-23 7:50',8,162,43,23.3,33.9,6.43,91.3,8.08,24.40,28.10,24.30);
insert into sample_workers (sample_id, worker_id)   values (772,17);
insert into sample_workers (sample_id, worker_id)   values (772,6);
insert into sample_workers (sample_id, worker_id)   values (772,37);
insert into samples (site_id, date_and_time, moon, qa_code, session_id, temperature, salinity, dissolved_oxygen, dissolved_oxygen_pct, ph, turbidity_1, turbidity_2, turbidity_3)   values (21,'2018-02-23 8:40',8,162,43,24.0,34.4,7.06,101.7,8.15,2.28,2.39,2.51);
insert into sample_workers (sample_id, worker_id)   values (773,17);
insert into sample_workers (sample_id, worker_id)   values (773,6);
insert into sample_workers (sample_id, worker_id)   values (773,37);
insert into samples (site_id, date_and_time, moon, qa_code, session_id, temperature, salinity, dissolved_oxygen, dissolved_oxygen_pct, ph, turbidity_1, turbidity_2, turbidity_3)   values (22,'2018-02-23 9:05',8,162,43,24.3,34.7,7.00,101.7,8.16,0.52,0.55,0.58);
insert into sample_workers (sample_id, worker_id)   values (774,17);
insert into sample_workers (sample_id, worker_id)   values (774,6);
insert into sample_workers (sample_id, worker_id)   values (774,37);
insert into samples (site_id, date_and_time, moon, qa_code, session_id, temperature, salinity, dissolved_oxygen, dissolved_oxygen_pct, ph, turbidity_1, turbidity_2, turbidity_3)   values (23,'2018-02-23 9:35',8,162,43,24.5,33.7,7.16,103.7,8.14,0.97,0.81,0.92);
insert into sample_workers (sample_id, worker_id)   values (775,17);
insert into sample_workers (sample_id, worker_id)   values (775,6);
insert into sample_workers (sample_id, worker_id)   values (775,37);
insert into samples (site_id, date_and_time, moon, qa_code, session_id, temperature, salinity, dissolved_oxygen, dissolved_oxygen_pct, ph, turbidity_1, turbidity_2, turbidity_3)   values (24,'2018-02-23 10:00',8,162,43,24.3,33.8,6.84,98.9,8.09,9.80,9.95,10.10);
insert into sample_workers (sample_id, worker_id)   values (776,17);
insert into sample_workers (sample_id, worker_id)   values (776,6);
insert into sample_workers (sample_id, worker_id)   values (776,37);
insert into samples (site_id, date_and_time, moon, qa_code, session_id, temperature, salinity, dissolved_oxygen, dissolved_oxygen_pct, ph, turbidity_1, turbidity_2, turbidity_3)   values (25,'2018-02-23 10:20',8,162,43,25.1,34.0,7.17,105.1,8.15,4.65,5.13,5.94);
insert into sample_workers (sample_id, worker_id)   values (777,17);
insert into sample_workers (sample_id, worker_id)   values (777,6);
insert into sample_workers (sample_id, worker_id)   values (777,37);
insert into samples (site_id, date_and_time, moon, qa_code, session_id, temperature, salinity, dissolved_oxygen, dissolved_oxygen_pct, ph, turbidity_1, turbidity_2, turbidity_3)   values (1,'2018-02-20 8:20',6,162,43,23.5,34.2,7.01,100.2,8.08,1.19,1.27,1.27);
insert into sample_workers (sample_id, worker_id)   values (778,4);
insert into sample_workers (sample_id, worker_id)   values (778,2);
insert into sample_workers (sample_id, worker_id)   values (778,3);
insert into samples (site_id, date_and_time, moon, qa_code, session_id, temperature, salinity, dissolved_oxygen, dissolved_oxygen_pct, ph, turbidity_1, turbidity_2, turbidity_3)   values (2,'2018-02-20 8:42',6,162,43,24.0,34.1,6.65,95.8,8.13,2.45,2.74,2.81);
insert into sample_workers (sample_id, worker_id)   values (779,4);
insert into sample_workers (sample_id, worker_id)   values (779,2);
insert into sample_workers (sample_id, worker_id)   values (779,3);
insert into samples (site_id, date_and_time, moon, qa_code, session_id, temperature, salinity, dissolved_oxygen, dissolved_oxygen_pct, ph, turbidity_1, turbidity_2, turbidity_3)   values (3,'2018-02-20 9:05',6,162,43,23.3,32.8,7.09,100.2,8.15,2.90,2.97,2.95);
insert into sample_workers (sample_id, worker_id)   values (780,4);
insert into sample_workers (sample_id, worker_id)   values (780,2);
insert into sample_workers (sample_id, worker_id)   values (780,3);
insert into samples (site_id, date_and_time, moon, qa_code, session_id, temperature, salinity, dissolved_oxygen, dissolved_oxygen_pct, ph, turbidity_1, turbidity_2, turbidity_3)   values (4,'2018-02-20 9:23',6,162,43,24.3,34.2,6.90,99.9,8.17,1.75,1.92,1.75);
insert into sample_workers (sample_id, worker_id)   values (781,4);
insert into sample_workers (sample_id, worker_id)   values (781,2);
insert into sample_workers (sample_id, worker_id)   values (781,3);
insert into samples (site_id, date_and_time, moon, qa_code, session_id, temperature, salinity, dissolved_oxygen, dissolved_oxygen_pct, ph, turbidity_1, turbidity_2, turbidity_3)   values (5,'2018-02-20 9:41',6,162,43,24.7,34.3,6.85,99.8,8.18,1.73,1.76,1.76);
insert into sample_workers (sample_id, worker_id)   values (782,4);
insert into sample_workers (sample_id, worker_id)   values (782,2);
insert into sample_workers (sample_id, worker_id)   values (782,3);
insert into samples (site_id, date_and_time, moon, qa_code, session_id, temperature, salinity, dissolved_oxygen, dissolved_oxygen_pct, ph, turbidity_1, turbidity_2, turbidity_3)   values (6,'2018-02-20 9:58',6,162,43,24.4,32.5,6.99,100.4,8.19,1.25,1.33,1.39);
insert into sample_workers (sample_id, worker_id)   values (783,4);
insert into sample_workers (sample_id, worker_id)   values (783,2);
insert into sample_workers (sample_id, worker_id)   values (783,3);
