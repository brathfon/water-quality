-- Database is connected

-- lab id for West Maui 1

-- max session id 0

-- max sample id 0

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
-- session :  1 session_id auto_increment : 1

-- insert this session
insert into sessions (lab_id, session_number, first_sample_day) values (1, 1, '2016-6-14');
insert into samples (site_id, the_date, the_time, qa_code, session_id, temperature, salinity, dissolved_oxygen, dissolved_oxygen_pct, ph, turbidity_1, turbidity_2, turbidity_3)   values (2,'2016-6-14','08:03',162,1,25.7,33.3,6.86,102.1,8.11,13.9,13.9,13.9);
insert into samples (site_id, the_date, the_time, qa_code, session_id, temperature, salinity, dissolved_oxygen, dissolved_oxygen_pct, ph, turbidity_1, turbidity_2, turbidity_3)   values (3,'2016-6-14','08:37',162,1,24.9,23.8,6.86,100.6,8.07,16.8,16.8,16.8);
insert into samples (site_id, the_date, the_time, qa_code, session_id, temperature, salinity, dissolved_oxygen, dissolved_oxygen_pct, ph, turbidity_1, turbidity_2, turbidity_3)   values (4,'2016-6-14','09:15',162,1,26.8,35,6.72,101.6,8.06,2.62,2.62,2.62);
insert into samples (site_id, the_date, the_time, qa_code, session_id, temperature, salinity, dissolved_oxygen, dissolved_oxygen_pct, ph, turbidity_1, turbidity_2, turbidity_3)   values (5,'2016-6-14','09:50',162,1,27.2,34.7,6.78,103.5,8.06,5.86,5.86,5.86);
insert into samples (site_id, the_date, the_time, qa_code, session_id, temperature, salinity, dissolved_oxygen, dissolved_oxygen_pct, ph, turbidity_1, turbidity_2, turbidity_3)   values (6,'2016-6-14','10:24',162,1,27.3,34.6,6.66,101.8,8.15,3.47,3.47,3.47);
insert into samples (site_id, the_date, the_time, qa_code, session_id, temperature, salinity, dissolved_oxygen, dissolved_oxygen_pct, ph, turbidity_1, turbidity_2, turbidity_3)   values (7,'2016-6-15','07:37',162,1,26.7,27.8,6.27,94.7,8.05,2.89,2.89,2.89);
insert into samples (site_id, the_date, the_time, qa_code, session_id, temperature, salinity, dissolved_oxygen, dissolved_oxygen_pct, ph, turbidity_1, turbidity_2, turbidity_3)   values (8,'2016-6-15','08:28',162,1,26.8,28.1,6.57,99.6,7.99,2.8,2.8,2.8);
insert into samples (site_id, the_date, the_time, qa_code, session_id, temperature, salinity, dissolved_oxygen, dissolved_oxygen_pct, ph, turbidity_1, turbidity_2, turbidity_3)   values (9,'2016-6-15','08:59',162,1,27.2,28.2,6.72,102.4,8.09,2.91,2.91,2.91);
insert into samples (site_id, the_date, the_time, qa_code, session_id, temperature, salinity, dissolved_oxygen, dissolved_oxygen_pct, ph, turbidity_1, turbidity_2, turbidity_3)   values (12,'2016-6-15','10:42',162,1,27.4,29.6,6.94,106.1,8.11,1.19,1.19,1.19);
insert into samples (site_id, the_date, the_time, qa_code, session_id, temperature, salinity, dissolved_oxygen, dissolved_oxygen_pct, ph, turbidity_1, turbidity_2, turbidity_3)   values (14,'2016-6-16','07:45',162,1,25.3,29.3,6.86,101.2,7.96,23.3,23.3,23.3);
insert into samples (site_id, the_date, the_time, qa_code, session_id, temperature, salinity, dissolved_oxygen, dissolved_oxygen_pct, ph, turbidity_1, turbidity_2, turbidity_3)   values (15,'2016-6-16','08:20',162,1,25.4,27.7,6.61,97.8,7.91,5.48,5.48,5.48);
insert into samples (site_id, the_date, the_time, qa_code, session_id, temperature, salinity, dissolved_oxygen, dissolved_oxygen_pct, ph, turbidity_1, turbidity_2, turbidity_3)   values (16,'2016-6-16','09:17',162,1,25.2,28.1,7,103.1,8.06,16.87,16.87,16.87);
insert into samples (site_id, the_date, the_time, qa_code, session_id, temperature, salinity, dissolved_oxygen, dissolved_oxygen_pct, ph, turbidity_1, turbidity_2, turbidity_3)   values (17,'2016-6-16','09:40',162,1,25.6,28,7.1,105.2,8.08,10.71,10.71,10.71);
insert into samples (site_id, the_date, the_time, qa_code, session_id, temperature, salinity, dissolved_oxygen, dissolved_oxygen_pct, ph, turbidity_1, turbidity_2, turbidity_3)   values (18,'2016-6-16','10:00',162,1,26,36,7.01,104.6,8.07,5.37,5.37,5.37);
-- session :  2 session_id auto_increment : 2

-- insert this session
insert into sessions (lab_id, session_number, first_sample_day) values (1, 2, '2016-6-28');
insert into samples (site_id, the_date, the_time, qa_code, session_id, temperature, salinity, dissolved_oxygen, dissolved_oxygen_pct, ph, turbidity_1, turbidity_2, turbidity_3)   values (2,'2016-6-28','07:25',162,2,25.7,26.4,6.71,100,8.09,11.73,11.73,11.73);
insert into samples (site_id, the_date, the_time, qa_code, session_id, temperature, salinity, dissolved_oxygen, dissolved_oxygen_pct, ph, turbidity_1, turbidity_2, turbidity_3)   values (3,'2016-6-28','07:54',162,2,24.2,22.2,6.9,100.3,8.13,9.79,9.79,9.79);
insert into samples (site_id, the_date, the_time, qa_code, session_id, temperature, salinity, dissolved_oxygen, dissolved_oxygen_pct, ph, turbidity_1, turbidity_2, turbidity_3)   values (4,'2016-6-28','08:22',162,2,26.4,27.6,6.59,99.3,8.1,1.77,1.77,1.77);
insert into samples (site_id, the_date, the_time, qa_code, session_id, temperature, salinity, dissolved_oxygen, dissolved_oxygen_pct, ph, turbidity_1, turbidity_2, turbidity_3)   values (5,'2016-6-28','08:46',162,2,26.6,28.2,6.81,103,8.09,3.43,3.43,3.43);
insert into samples (site_id, the_date, the_time, qa_code, session_id, temperature, salinity, dissolved_oxygen, dissolved_oxygen_pct, ph, turbidity_1, turbidity_2, turbidity_3)   values (6,'2016-6-28','09:06',162,2,26.9,27.9,6.77,103,8.13,3.13,3.13,3.13);
insert into samples (site_id, the_date, the_time, qa_code, session_id, temperature, salinity, dissolved_oxygen, dissolved_oxygen_pct, ph, turbidity_1, turbidity_2, turbidity_3)   values (7,'2016-6-29','07:43',162,2,27,30.1,6.34,96.5,7.98,1.65,1.65,1.65);
insert into samples (site_id, the_date, the_time, qa_code, session_id, temperature, salinity, dissolved_oxygen, dissolved_oxygen_pct, ph, turbidity_1, turbidity_2, turbidity_3)   values (8,'2016-6-29','08:24',162,2,27.2,29.1,6.29,96,8.04,3.43,3.43,3.43);
insert into samples (site_id, the_date, the_time, qa_code, session_id, temperature, salinity, dissolved_oxygen, dissolved_oxygen_pct, ph, turbidity_1, turbidity_2, turbidity_3)   values (9,'2016-6-29','08:50',162,2,27.3,28.9,6.21,95,8.02,1.98,1.98,1.98);
insert into samples (site_id, the_date, the_time, qa_code, session_id, temperature, salinity, dissolved_oxygen, dissolved_oxygen_pct, ph, turbidity_1, turbidity_2, turbidity_3)   values (11,'2016-6-29','10:04',162,2,28.5,29.9,6.6,102.1,8.07,4.53,4.53,4.53);
insert into samples (site_id, the_date, the_time, qa_code, session_id, temperature, salinity, dissolved_oxygen, dissolved_oxygen_pct, ph, turbidity_1, turbidity_2, turbidity_3)   values (12,'2016-6-29','10:39',162,2,28,29.3,7.17,111.1,8.1,1.07,1.07,1.07);
insert into samples (site_id, the_date, the_time, qa_code, session_id, temperature, salinity, dissolved_oxygen, dissolved_oxygen_pct, ph, turbidity_1, turbidity_2, turbidity_3)   values (14,'2016-6-30','07:33',162,2,27.7,30.3,6.43,98.9,8.01,7.4,7.4,7.4);
insert into samples (site_id, the_date, the_time, qa_code, session_id, temperature, salinity, dissolved_oxygen, dissolved_oxygen_pct, ph, turbidity_1, turbidity_2, turbidity_3)   values (15,'2016-6-30','08:00',162,2,27.1,29.1,6.08,92.7,8.01,2.61,2.61,2.61);
insert into samples (site_id, the_date, the_time, qa_code, session_id, temperature, salinity, dissolved_oxygen, dissolved_oxygen_pct, ph, turbidity_1, turbidity_2, turbidity_3)   values (16,'2016-6-30','08:31',162,2,26.9,29.7,6.81,103.4,8.05,10.6,10.6,10.6);
insert into samples (site_id, the_date, the_time, qa_code, session_id, temperature, salinity, dissolved_oxygen, dissolved_oxygen_pct, ph, turbidity_1, turbidity_2, turbidity_3)   values (17,'2016-6-30','08:50',162,2,27.4,29.3,6.88,105.2,8.1,3.37,3.37,3.37);
insert into samples (site_id, the_date, the_time, qa_code, session_id, temperature, salinity, dissolved_oxygen, dissolved_oxygen_pct, ph, turbidity_1, turbidity_2, turbidity_3)   values (18,'2016-6-30','09:15',162,2,27.7,29.5,6.7,103.1,8.07,4.54,4.54,4.54);
-- session :  3 session_id auto_increment : 3

-- insert this session
insert into sessions (lab_id, session_number, first_sample_day) values (1, 3, '2016-7-12');
insert into samples (site_id, the_date, the_time, qa_code, session_id, temperature, salinity, dissolved_oxygen, dissolved_oxygen_pct, ph, turbidity_1, turbidity_2, turbidity_3)   values (2,'2016-7-12','07:19',162,3,26.6,33.1,6.49,97.4,8.09,5.14,5.14,5.14);
insert into samples (site_id, the_date, the_time, qa_code, session_id, temperature, salinity, dissolved_oxygen, dissolved_oxygen_pct, ph, turbidity_1, turbidity_2, turbidity_3)   values (3,'2016-7-12','07:49',162,3,26,39.1,6.53,100.1,8.07,3.9,3.9,3.9);
insert into samples (site_id, the_date, the_time, qa_code, session_id, temperature, salinity, dissolved_oxygen, dissolved_oxygen_pct, ph, turbidity_1, turbidity_2, turbidity_3)   values (4,'2016-7-12','08:16',162,3,27,36.3,6.46,99.5,8.09,0.94,0.94,0.94);
insert into samples (site_id, the_date, the_time, qa_code, session_id, temperature, salinity, dissolved_oxygen, dissolved_oxygen_pct, ph, turbidity_1, turbidity_2, turbidity_3)   values (5,'2016-7-12','08:38',162,3,27.2,35,6.79,104,8.12,2.43,2.43,2.43);
insert into samples (site_id, the_date, the_time, qa_code, session_id, temperature, salinity, dissolved_oxygen, dissolved_oxygen_pct, ph, turbidity_1, turbidity_2, turbidity_3)   values (6,'2016-7-12','09:02',162,3,27.4,35.7,6.66,102.7,8.16,3.41,3.41,3.41);
insert into samples (site_id, the_date, the_time, qa_code, session_id, temperature, salinity, dissolved_oxygen, dissolved_oxygen_pct, ph, turbidity_1, turbidity_2, turbidity_3)   values (7,'2016-7-13','07:35',162,3,26.9,36.2,5.9,90.6,8.04,2.64,2.64,2.64);
insert into samples (site_id, the_date, the_time, qa_code, session_id, temperature, salinity, dissolved_oxygen, dissolved_oxygen_pct, ph, turbidity_1, turbidity_2, turbidity_3)   values (8,'2016-7-13','08:07',162,3,27,36,5.49,84.5,8.01,2.01,2.01,2.01);
insert into samples (site_id, the_date, the_time, qa_code, session_id, temperature, salinity, dissolved_oxygen, dissolved_oxygen_pct, ph, turbidity_1, turbidity_2, turbidity_3)   values (9,'2016-7-13','08:29',162,3,27.4,36,5.39,83.3,8,4.96,4.96,4.96);
insert into samples (site_id, the_date, the_time, qa_code, session_id, temperature, salinity, dissolved_oxygen, dissolved_oxygen_pct, ph, turbidity_1, turbidity_2, turbidity_3)   values (11,'2016-7-13','09:20',162,3,28.1,37.8,6.56,103.6,8.1,2.57,2.57,2.57);
insert into samples (site_id, the_date, the_time, qa_code, session_id, temperature, salinity, dissolved_oxygen, dissolved_oxygen_pct, ph, turbidity_1, turbidity_2, turbidity_3)   values (12,'2016-7-13','09:48',162,3,28,37.4,6.98,109.8,8.04,1.86,1.86,1.86);
insert into samples (site_id, the_date, the_time, qa_code, session_id, temperature, salinity, dissolved_oxygen, dissolved_oxygen_pct, ph, turbidity_1, turbidity_2, turbidity_3)   values (13,'2016-7-14','07:38',162,3,27,36.9,5.55,85.7,7.99,1.07,1.07,1.07);
insert into samples (site_id, the_date, the_time, qa_code, session_id, temperature, salinity, dissolved_oxygen, dissolved_oxygen_pct, ph, turbidity_1, turbidity_2, turbidity_3)   values (14,'2016-7-14','08:12',162,3,28.2,37.4,6.22,98.1,8.02,22.8,22.8,22.8);
insert into samples (site_id, the_date, the_time, qa_code, session_id, temperature, salinity, dissolved_oxygen, dissolved_oxygen_pct, ph, turbidity_1, turbidity_2, turbidity_3)   values (15,'2016-7-14','08:37',162,3,27.6,36.9,5.92,92.1,7.96,4.21,4.21,4.21);
insert into samples (site_id, the_date, the_time, qa_code, session_id, temperature, salinity, dissolved_oxygen, dissolved_oxygen_pct, ph, turbidity_1, turbidity_2, turbidity_3)   values (16,'2016-7-14','09:00',162,3,27.8,37.2,6.65,103.9,8.09,4.15,4.15,4.15);
insert into samples (site_id, the_date, the_time, qa_code, session_id, temperature, salinity, dissolved_oxygen, dissolved_oxygen_pct, ph, turbidity_1, turbidity_2, turbidity_3)   values (17,'2016-7-14','09:25',162,3,28.1,37.8,6.74,106.3,8.12,3.96,3.96,3.96);
insert into samples (site_id, the_date, the_time, qa_code, session_id, temperature, salinity, dissolved_oxygen, dissolved_oxygen_pct, ph, turbidity_1, turbidity_2, turbidity_3)   values (18,'2016-7-14','09:48',162,3,28.4,37.5,6.69,106.7,8.05,2.41,2.41,2.41);
-- session :  4 session_id auto_increment : 4

-- insert this session
insert into sessions (lab_id, session_number, first_sample_day) values (1, 4, '2016-7-26');
insert into samples (site_id, the_date, the_time, qa_code, session_id, temperature, salinity, dissolved_oxygen, dissolved_oxygen_pct, ph, turbidity_1, turbidity_2, turbidity_3)   values (2,'2016-7-26','07:21',162,4,26.8,34.1,6.28,94.9,8.12,9.22,9.22,9.22);
insert into samples (site_id, the_date, the_time, qa_code, session_id, temperature, salinity, dissolved_oxygen, dissolved_oxygen_pct, ph, turbidity_1, turbidity_2, turbidity_3)   values (3,'2016-7-26','07:50',162,4,26.8,35.3,6.48,98.4,8.07,6.16,6.16,6.16);
insert into samples (site_id, the_date, the_time, qa_code, session_id, temperature, salinity, dissolved_oxygen, dissolved_oxygen_pct, ph, turbidity_1, turbidity_2, turbidity_3)   values (4,'2016-7-26','08:12',162,4,27.2,35.3,6.48,99.1,8.14,1.5,1.5,1.5);
insert into samples (site_id, the_date, the_time, qa_code, session_id, temperature, salinity, dissolved_oxygen, dissolved_oxygen_pct, ph, turbidity_1, turbidity_2, turbidity_3)   values (5,'2016-7-26','08:36',162,4,27.2,34.6,6.57,100.1,8.12,4.39,4.39,4.39);
insert into samples (site_id, the_date, the_time, qa_code, session_id, temperature, salinity, dissolved_oxygen, dissolved_oxygen_pct, ph, turbidity_1, turbidity_2, turbidity_3)   values (6,'2016-7-26','08:59',162,4,27.4,34.8,6.51,99.8,8.15,3.22,3.22,3.22);
insert into samples (site_id, the_date, the_time, qa_code, session_id, temperature, salinity, dissolved_oxygen, dissolved_oxygen_pct, ph, turbidity_1, turbidity_2, turbidity_3)   values (7,'2016-7-27','07:28',162,4,27.4,34.7,5.9,90.2,8.04,null,null,null);
insert into samples (site_id, the_date, the_time, qa_code, session_id, temperature, salinity, dissolved_oxygen, dissolved_oxygen_pct, ph, turbidity_1, turbidity_2, turbidity_3)   values (8,'2016-7-27','08:05',162,4,27.4,35,5.9,90.5,8.02,8.05,8.05,8.05);
insert into samples (site_id, the_date, the_time, qa_code, session_id, temperature, salinity, dissolved_oxygen, dissolved_oxygen_pct, ph, turbidity_1, turbidity_2, turbidity_3)   values (9,'2016-7-27','08:28',162,4,27.6,35.2,5.65,87,8,3.7,3.7,3.7);
insert into samples (site_id, the_date, the_time, qa_code, session_id, temperature, salinity, dissolved_oxygen, dissolved_oxygen_pct, ph, turbidity_1, turbidity_2, turbidity_3)   values (11,'2016-7-27','09:09',162,4,28.1,35.6,6.52,101.4,8.13,0.88,0.88,0.88);
insert into samples (site_id, the_date, the_time, qa_code, session_id, temperature, salinity, dissolved_oxygen, dissolved_oxygen_pct, ph, turbidity_1, turbidity_2, turbidity_3)   values (12,'2016-7-27','09:39',162,4,27.8,35.5,6.89,106.6,8.12,0.98,0.98,0.98);
insert into samples (site_id, the_date, the_time, qa_code, session_id, temperature, salinity, dissolved_oxygen, dissolved_oxygen_pct, ph, turbidity_1, turbidity_2, turbidity_3)   values (13,'2016-7-28','07:25',162,4,26.3,35.3,5.77,86.9,8.03,0.93,0.93,0.93);
insert into samples (site_id, the_date, the_time, qa_code, session_id, temperature, salinity, dissolved_oxygen, dissolved_oxygen_pct, ph, turbidity_1, turbidity_2, turbidity_3)   values (14,'2016-7-28','07:55',162,4,26.6,35.5,6.47,98.1,8.05,12.43,12.43,12.43);
insert into samples (site_id, the_date, the_time, qa_code, session_id, temperature, salinity, dissolved_oxygen, dissolved_oxygen_pct, ph, turbidity_1, turbidity_2, turbidity_3)   values (15,'2016-7-28','08:15',162,4,26.8,35.4,5.83,88.6,7.99,3.18,3.18,3.18);
insert into samples (site_id, the_date, the_time, qa_code, session_id, temperature, salinity, dissolved_oxygen, dissolved_oxygen_pct, ph, turbidity_1, turbidity_2, turbidity_3)   values (16,'2016-7-28','08:40',162,4,27,35.6,6.81,104,8.11,7.46,7.46,7.46);
insert into samples (site_id, the_date, the_time, qa_code, session_id, temperature, salinity, dissolved_oxygen, dissolved_oxygen_pct, ph, turbidity_1, turbidity_2, turbidity_3)   values (17,'2016-7-28','09:10',162,4,26.2,35.6,6.99,105.2,8.13,3.74,3.74,3.74);
insert into samples (site_id, the_date, the_time, qa_code, session_id, temperature, salinity, dissolved_oxygen, dissolved_oxygen_pct, ph, turbidity_1, turbidity_2, turbidity_3)   values (18,'2016-7-28','09:30',162,4,26.8,35.3,6.86,104.2,8.11,1.66,1.66,1.66);
-- session :  5 session_id auto_increment : 5

-- insert this session
insert into sessions (lab_id, session_number, first_sample_day) values (1, 5, '2016-8-10');
insert into samples (site_id, the_date, the_time, qa_code, session_id, temperature, salinity, dissolved_oxygen, dissolved_oxygen_pct, ph, turbidity_1, turbidity_2, turbidity_3)   values (2,'2016-8-9','07:20',162,5,26.5,34.4,6.23,93.8,8.09,4.59,4.59,4.59);
insert into samples (site_id, the_date, the_time, qa_code, session_id, temperature, salinity, dissolved_oxygen, dissolved_oxygen_pct, ph, turbidity_1, turbidity_2, turbidity_3)   values (3,'2016-8-9','07:45',162,5,25.8,34.9,6.38,95.1,8.03,5.81,5.81,5.81);
insert into samples (site_id, the_date, the_time, qa_code, session_id, temperature, salinity, dissolved_oxygen, dissolved_oxygen_pct, ph, turbidity_1, turbidity_2, turbidity_3)   values (4,'2016-8-9','08:11',162,5,27.1,35.4,6.27,96.7,8.12,0.42,0.42,0.42);
insert into samples (site_id, the_date, the_time, qa_code, session_id, temperature, salinity, dissolved_oxygen, dissolved_oxygen_pct, ph, turbidity_1, turbidity_2, turbidity_3)   values (5,'2016-8-9','08:33',162,5,27.3,35.1,6.57,100.5,8.14,2.3,2.3,2.3);
insert into samples (site_id, the_date, the_time, qa_code, session_id, temperature, salinity, dissolved_oxygen, dissolved_oxygen_pct, ph, turbidity_1, turbidity_2, turbidity_3)   values (6,'2016-8-9','08:52',162,5,27.2,35.3,6.58,100.6,8.16,0.73,0.73,0.73);
insert into samples (site_id, the_date, the_time, qa_code, session_id, temperature, salinity, dissolved_oxygen, dissolved_oxygen_pct, ph, turbidity_1, turbidity_2, turbidity_3)   values (7,'2016-8-10','07:26',162,5,27,34.6,5.87,89,8.06,0.96,0.96,0.96);
insert into samples (site_id, the_date, the_time, qa_code, session_id, temperature, salinity, dissolved_oxygen, dissolved_oxygen_pct, ph, turbidity_1, turbidity_2, turbidity_3)   values (8,'2016-8-10','07:52',162,5,27.3,35,5.53,84.5,8.02,5.5,5.5,5.5);
insert into samples (site_id, the_date, the_time, qa_code, session_id, temperature, salinity, dissolved_oxygen, dissolved_oxygen_pct, ph, turbidity_1, turbidity_2, turbidity_3)   values (9,'2016-8-10','08:15',162,5,27.5,35.1,5.74,88.1,8.04,4.34,4.34,4.34);
insert into samples (site_id, the_date, the_time, qa_code, session_id, temperature, salinity, dissolved_oxygen, dissolved_oxygen_pct, ph, turbidity_1, turbidity_2, turbidity_3)   values (11,'2016-8-10','08:56',162,5,28.2,35.8,6.57,102.2,8.1,4.02,4.02,4.02);
insert into samples (site_id, the_date, the_time, qa_code, session_id, temperature, salinity, dissolved_oxygen, dissolved_oxygen_pct, ph, turbidity_1, turbidity_2, turbidity_3)   values (12,'2016-8-10','09:19',162,5,27.9,35.8,6.78,105.1,8.07,1.45,1.45,1.45);
insert into samples (site_id, the_date, the_time, qa_code, session_id, temperature, salinity, dissolved_oxygen, dissolved_oxygen_pct, ph, turbidity_1, turbidity_2, turbidity_3)   values (13,'2016-8-11','07:35',162,5,26.6,35.2,5.41,81.9,7.96,1.65,1.65,1.65);
insert into samples (site_id, the_date, the_time, qa_code, session_id, temperature, salinity, dissolved_oxygen, dissolved_oxygen_pct, ph, turbidity_1, turbidity_2, turbidity_3)   values (14,'2016-8-11','08:00',162,5,27.2,35.6,6.18,94.7,8.06,3.28,3.28,3.28);
insert into samples (site_id, the_date, the_time, qa_code, session_id, temperature, salinity, dissolved_oxygen, dissolved_oxygen_pct, ph, turbidity_1, turbidity_2, turbidity_3)   values (15,'2016-8-11','08:30',162,5,26.6,35.4,6.12,92.7,8.04,5.87,5.87,5.87);
insert into samples (site_id, the_date, the_time, qa_code, session_id, temperature, salinity, dissolved_oxygen, dissolved_oxygen_pct, ph, turbidity_1, turbidity_2, turbidity_3)   values (16,'2016-8-11','08:50',162,5,27.2,35.5,6.66,102,8.08,10.63,10.63,10.63);
insert into samples (site_id, the_date, the_time, qa_code, session_id, temperature, salinity, dissolved_oxygen, dissolved_oxygen_pct, ph, turbidity_1, turbidity_2, turbidity_3)   values (17,'2016-8-11','09:15',162,5,27.4,35.7,6.89,106,8.14,3.81,3.81,3.81);
insert into samples (site_id, the_date, the_time, qa_code, session_id, temperature, salinity, dissolved_oxygen, dissolved_oxygen_pct, ph, turbidity_1, turbidity_2, turbidity_3)   values (18,'2016-8-11','09:40',162,5,27.3,35.3,7.17,109.9,8.14,2.33,2.33,2.33);
-- session :  6 session_id auto_increment : 6

-- insert this session
insert into sessions (lab_id, session_number, first_sample_day) values (1, 6, '2016-8-23');
insert into samples (site_id, the_date, the_time, qa_code, session_id, temperature, salinity, dissolved_oxygen, dissolved_oxygen_pct, ph, turbidity_1, turbidity_2, turbidity_3)   values (2,'2016-8-23','07:15',162,6,27.1,34.5,5.9,90.2,7.86,3.98,3.98,3.98);
insert into samples (site_id, the_date, the_time, qa_code, session_id, temperature, salinity, dissolved_oxygen, dissolved_oxygen_pct, ph, turbidity_1, turbidity_2, turbidity_3)   values (3,'2016-8-23','07:39',162,6,26.6,26.7,6.36,92.5,8.04,10.63,10.63,10.63);
insert into samples (site_id, the_date, the_time, qa_code, session_id, temperature, salinity, dissolved_oxygen, dissolved_oxygen_pct, ph, turbidity_1, turbidity_2, turbidity_3)   values (4,'2016-8-23','08:08',162,6,27.8,35.3,5.84,90.7,8,0.46,0.46,0.46);
insert into samples (site_id, the_date, the_time, qa_code, session_id, temperature, salinity, dissolved_oxygen, dissolved_oxygen_pct, ph, turbidity_1, turbidity_2, turbidity_3)   values (5,'2016-8-23','08:28',162,6,27.9,35.3,6.36,99,8.06,0.71,0.71,0.71);
insert into samples (site_id, the_date, the_time, qa_code, session_id, temperature, salinity, dissolved_oxygen, dissolved_oxygen_pct, ph, turbidity_1, turbidity_2, turbidity_3)   values (6,'2016-8-23','08:47',162,6,28,35.7,6.23,97.4,8.06,0.63,0.63,0.63);
insert into samples (site_id, the_date, the_time, qa_code, session_id, temperature, salinity, dissolved_oxygen, dissolved_oxygen_pct, ph, turbidity_1, turbidity_2, turbidity_3)   values (7,'2016-8-24','07:32',162,6,27.9,35,6.12,94.6,8.05,4.43,4.43,4.43);
insert into samples (site_id, the_date, the_time, qa_code, session_id, temperature, salinity, dissolved_oxygen, dissolved_oxygen_pct, ph, turbidity_1, turbidity_2, turbidity_3)   values (8,'2016-8-24','08:20',162,6,28.4,35.2,5.44,85,8.01,25.4,25.4,25.4);
insert into samples (site_id, the_date, the_time, qa_code, session_id, temperature, salinity, dissolved_oxygen, dissolved_oxygen_pct, ph, turbidity_1, turbidity_2, turbidity_3)   values (9,'2016-8-24','08:42',162,6,28.3,35.7,5.84,91.3,8.03,6.57,6.57,6.57);
insert into samples (site_id, the_date, the_time, qa_code, session_id, temperature, salinity, dissolved_oxygen, dissolved_oxygen_pct, ph, turbidity_1, turbidity_2, turbidity_3)   values (10,'2016-8-24','09:13',162,6,28.4,35.5,6.44,100.7,8.09,null,null,null);
insert into samples (site_id, the_date, the_time, qa_code, session_id, temperature, salinity, dissolved_oxygen, dissolved_oxygen_pct, ph, turbidity_1, turbidity_2, turbidity_3)   values (11,'2016-8-24','09:38',162,6,28.6,36.1,6.39,100.6,8.13,3.77,3.77,3.77);
insert into samples (site_id, the_date, the_time, qa_code, session_id, temperature, salinity, dissolved_oxygen, dissolved_oxygen_pct, ph, turbidity_1, turbidity_2, turbidity_3)   values (12,'2016-8-24','10:00',162,6,29,36,6.85,108.5,8.1,1.3,1.3,1.3);
insert into samples (site_id, the_date, the_time, qa_code, session_id, temperature, salinity, dissolved_oxygen, dissolved_oxygen_pct, ph, turbidity_1, turbidity_2, turbidity_3)   values (13,'2016-8-25','07:20',162,6,27.3,36.2,5.25,80.9,7.95,1.6,1.6,1.6);
insert into samples (site_id, the_date, the_time, qa_code, session_id, temperature, salinity, dissolved_oxygen, dissolved_oxygen_pct, ph, turbidity_1, turbidity_2, turbidity_3)   values (14,'2016-8-25','07:45',162,6,28.2,36.5,5.49,85.7,7.99,2.68,2.68,2.68);
insert into samples (site_id, the_date, the_time, qa_code, session_id, temperature, salinity, dissolved_oxygen, dissolved_oxygen_pct, ph, turbidity_1, turbidity_2, turbidity_3)   values (15,'2016-8-25','08:00',162,6,27.4,36,5.6,86.2,7.94,3.63,3.63,3.63);
insert into samples (site_id, the_date, the_time, qa_code, session_id, temperature, salinity, dissolved_oxygen, dissolved_oxygen_pct, ph, turbidity_1, turbidity_2, turbidity_3)   values (16,'2016-8-25','08:10',162,6,27.8,36.2,6.3,97.6,7.99,15.23,15.23,15.23);
insert into samples (site_id, the_date, the_time, qa_code, session_id, temperature, salinity, dissolved_oxygen, dissolved_oxygen_pct, ph, turbidity_1, turbidity_2, turbidity_3)   values (17,'2016-8-25','08:25',162,6,27.7,35.9,6.6,102.1,8.03,5.75,5.75,5.75);
insert into samples (site_id, the_date, the_time, qa_code, session_id, temperature, salinity, dissolved_oxygen, dissolved_oxygen_pct, ph, turbidity_1, turbidity_2, turbidity_3)   values (18,'2016-8-25','08:35',162,6,27.9,36,6.57,101.9,8.05,2.97,2.97,2.97);
-- session :  7 session_id auto_increment : 7

-- insert this session
insert into sessions (lab_id, session_number, first_sample_day) values (1, 7, '2016-9-6');
insert into samples (site_id, the_date, the_time, qa_code, session_id, temperature, salinity, dissolved_oxygen, dissolved_oxygen_pct, ph, turbidity_1, turbidity_2, turbidity_3)   values (2,'2016-9-6','07:21',162,7,26.7,34.9,6.31,95.4,8.11,10.9,10.9,10.9);
insert into samples (site_id, the_date, the_time, qa_code, session_id, temperature, salinity, dissolved_oxygen, dissolved_oxygen_pct, ph, turbidity_1, turbidity_2, turbidity_3)   values (3,'2016-9-6','07:50',162,7,26.1,35.5,6.42,96.7,8.15,6.16,6.16,6.16);
insert into samples (site_id, the_date, the_time, qa_code, session_id, temperature, salinity, dissolved_oxygen, dissolved_oxygen_pct, ph, turbidity_1, turbidity_2, turbidity_3)   values (4,'2016-9-6','08:10',162,7,27.3,35.3,6.41,98.2,8.21,1.45,1.45,1.45);
insert into samples (site_id, the_date, the_time, qa_code, session_id, temperature, salinity, dissolved_oxygen, dissolved_oxygen_pct, ph, turbidity_1, turbidity_2, turbidity_3)   values (5,'2016-9-6','08:31',162,7,27.7,35.2,6.45,99.6,8.23,2.17,2.17,2.17);
insert into samples (site_id, the_date, the_time, qa_code, session_id, temperature, salinity, dissolved_oxygen, dissolved_oxygen_pct, ph, turbidity_1, turbidity_2, turbidity_3)   values (6,'2016-9-6','08:54',162,7,27.8,35.4,6.42,99.3,8.23,3.24,3.24,3.24);
insert into samples (site_id, the_date, the_time, qa_code, session_id, temperature, salinity, dissolved_oxygen, dissolved_oxygen_pct, ph, turbidity_1, turbidity_2, turbidity_3)   values (7,'2016-9-7','07:48',162,7,27.1,34.5,6.18,94.1,8,6.47,6.47,6.47);
insert into samples (site_id, the_date, the_time, qa_code, session_id, temperature, salinity, dissolved_oxygen, dissolved_oxygen_pct, ph, turbidity_1, turbidity_2, turbidity_3)   values (9,'2016-9-7','08:19',162,7,27.5,36.6,6.06,94,8.01,4.33,4.33,4.33);
insert into samples (site_id, the_date, the_time, qa_code, session_id, temperature, salinity, dissolved_oxygen, dissolved_oxygen_pct, ph, turbidity_1, turbidity_2, turbidity_3)   values (8,'2016-9-7','08:46',162,7,27.5,36.5,6.07,94.2,7.96,6.77,6.77,6.77);
insert into samples (site_id, the_date, the_time, qa_code, session_id, temperature, salinity, dissolved_oxygen, dissolved_oxygen_pct, ph, turbidity_1, turbidity_2, turbidity_3)   values (11,'2016-9-7','09:10',162,7,27.8,36.7,6.26,97.8,7.97,2.31,2.31,2.31);
insert into samples (site_id, the_date, the_time, qa_code, session_id, temperature, salinity, dissolved_oxygen, dissolved_oxygen_pct, ph, turbidity_1, turbidity_2, turbidity_3)   values (12,'2016-9-7','09:39',162,7,28.4,37,6.55,103.3,8.06,1.12,1.12,1.12);
insert into samples (site_id, the_date, the_time, qa_code, session_id, temperature, salinity, dissolved_oxygen, dissolved_oxygen_pct, ph, turbidity_1, turbidity_2, turbidity_3)   values (13,'2016-9-8','07:10',162,7,26.7,36.1,6.03,91.9,8.15,3.03,3.03,3.03);
insert into samples (site_id, the_date, the_time, qa_code, session_id, temperature, salinity, dissolved_oxygen, dissolved_oxygen_pct, ph, turbidity_1, turbidity_2, turbidity_3)   values (14,'2016-9-8','07:35',162,7,25.8,36,6.53,98,8.12,34.6,34.6,34.6);
insert into samples (site_id, the_date, the_time, qa_code, session_id, temperature, salinity, dissolved_oxygen, dissolved_oxygen_pct, ph, turbidity_1, turbidity_2, turbidity_3)   values (15,'2016-9-8','08:00',162,7,26.6,35.9,6.31,96,8.09,9.39,9.39,9.39);
insert into samples (site_id, the_date, the_time, qa_code, session_id, temperature, salinity, dissolved_oxygen, dissolved_oxygen_pct, ph, turbidity_1, turbidity_2, turbidity_3)   values (17,'2016-9-8','08:28',162,7,26.2,35.9,6.65,100.4,8.18,7.54,7.54,7.54);
-- session :  8 session_id auto_increment : 8

-- insert this session
insert into sessions (lab_id, session_number, first_sample_day) values (1, 8, '2016-9-20');
insert into samples (site_id, the_date, the_time, qa_code, session_id, temperature, salinity, dissolved_oxygen, dissolved_oxygen_pct, ph, turbidity_1, turbidity_2, turbidity_3)   values (2,'2016-9-20','07:15',162,8,26.4,35.7,6.22,94.4,7.98,8.26,8.26,8.26);
insert into samples (site_id, the_date, the_time, qa_code, session_id, temperature, salinity, dissolved_oxygen, dissolved_oxygen_pct, ph, turbidity_1, turbidity_2, turbidity_3)   values (3,'2016-9-20','07:30',162,8,25.9,32.4,6.52,96.2,8,12.07,12.07,12.07);
insert into samples (site_id, the_date, the_time, qa_code, session_id, temperature, salinity, dissolved_oxygen, dissolved_oxygen_pct, ph, turbidity_1, turbidity_2, turbidity_3)   values (4,'2016-9-20','07:50',162,8,27.1,35.6,6.31,96.6,8.03,1.27,1.27,1.27);
insert into samples (site_id, the_date, the_time, qa_code, session_id, temperature, salinity, dissolved_oxygen, dissolved_oxygen_pct, ph, turbidity_1, turbidity_2, turbidity_3)   values (5,'2016-9-20','08:10',162,8,27.4,36.1,6.34,97.7,8.02,3.09,3.09,3.09);
insert into samples (site_id, the_date, the_time, qa_code, session_id, temperature, salinity, dissolved_oxygen, dissolved_oxygen_pct, ph, turbidity_1, turbidity_2, turbidity_3)   values (6,'2016-9-20','08:30',162,8,27.4,36.7,6.33,98,8.05,3.19,3.19,3.19);
insert into samples (site_id, the_date, the_time, qa_code, session_id, temperature, salinity, dissolved_oxygen, dissolved_oxygen_pct, ph, turbidity_1, turbidity_2, turbidity_3)   values (7,'2016-9-21','07:22',162,8,27,33.1,6.31,94.9,8.04,12.37,12.37,12.37);
insert into samples (site_id, the_date, the_time, qa_code, session_id, temperature, salinity, dissolved_oxygen, dissolved_oxygen_pct, ph, turbidity_1, turbidity_2, turbidity_3)   values (8,'2016-9-21','07:52',162,8,27.1,34.4,6.08,92.3,8.03,40.1,40.1,40.1);
insert into samples (site_id, the_date, the_time, qa_code, session_id, temperature, salinity, dissolved_oxygen, dissolved_oxygen_pct, ph, turbidity_1, turbidity_2, turbidity_3)   values (9,'2016-9-21','08:20',162,8,26.9,34.3,6,90.8,7.98,45.33,45.33,45.33);
insert into samples (site_id, the_date, the_time, qa_code, session_id, temperature, salinity, dissolved_oxygen, dissolved_oxygen_pct, ph, turbidity_1, turbidity_2, turbidity_3)   values (11,'2016-9-21','09:05',162,8,27.7,34.9,6.36,97.8,8.11,10.26,10.26,10.26);
insert into samples (site_id, the_date, the_time, qa_code, session_id, temperature, salinity, dissolved_oxygen, dissolved_oxygen_pct, ph, turbidity_1, turbidity_2, turbidity_3)   values (12,'2016-9-21','09:36',162,8,27.6,34.8,6.58,101.2,8.17,2.35,2.35,2.35);
insert into samples (site_id, the_date, the_time, qa_code, session_id, temperature, salinity, dissolved_oxygen, dissolved_oxygen_pct, ph, turbidity_1, turbidity_2, turbidity_3)   values (13,'2016-9-22','07:15',162,8,27.1,36.6,6.26,96.5,7.93,11.13,11.13,11.13);
insert into samples (site_id, the_date, the_time, qa_code, session_id, temperature, salinity, dissolved_oxygen, dissolved_oxygen_pct, ph, turbidity_1, turbidity_2, turbidity_3)   values (14,'2016-9-22','07:52',162,8,26.6,36.7,6.44,98.6,7.86,26.07,26.07,26.07);
insert into samples (site_id, the_date, the_time, qa_code, session_id, temperature, salinity, dissolved_oxygen, dissolved_oxygen_pct, ph, turbidity_1, turbidity_2, turbidity_3)   values (15,'2016-9-22','08:21',162,8,27,36.1,6.4,98,7.93,13.8,13.8,13.8);
insert into samples (site_id, the_date, the_time, qa_code, session_id, temperature, salinity, dissolved_oxygen, dissolved_oxygen_pct, ph, turbidity_1, turbidity_2, turbidity_3)   values (16,'2016-9-22','08:50',162,8,27.7,37.1,6.43,100.3,8.03,14.63,14.63,14.63);
insert into samples (site_id, the_date, the_time, qa_code, session_id, temperature, salinity, dissolved_oxygen, dissolved_oxygen_pct, ph, turbidity_1, turbidity_2, turbidity_3)   values (17,'2016-9-22','09:07',162,8,27.5,36.1,6.58,101.8,8.09,14.4,14.4,14.4);
insert into samples (site_id, the_date, the_time, qa_code, session_id, temperature, salinity, dissolved_oxygen, dissolved_oxygen_pct, ph, turbidity_1, turbidity_2, turbidity_3)   values (18,'2016-9-22','09:25',162,8,27.6,36.1,6.5,100.6,8.03,13.03,13.03,13.03);
-- session :  9 session_id auto_increment : 9

-- insert this session
insert into sessions (lab_id, session_number, first_sample_day) values (1, 9, '2016-10-4');
insert into samples (site_id, the_date, the_time, qa_code, session_id, temperature, salinity, dissolved_oxygen, dissolved_oxygen_pct, ph, turbidity_1, turbidity_2, turbidity_3)   values (2,'2016-10-4','07:37',162,9,26.9,34.4,6.03,91.4,8.09,5.38,5.38,5.38);
insert into samples (site_id, the_date, the_time, qa_code, session_id, temperature, salinity, dissolved_oxygen, dissolved_oxygen_pct, ph, turbidity_1, turbidity_2, turbidity_3)   values (3,'2016-10-4','07:58',162,9,26.9,34.4,6.2,94.1,8.08,7.76,7.76,7.76);
insert into samples (site_id, the_date, the_time, qa_code, session_id, temperature, salinity, dissolved_oxygen, dissolved_oxygen_pct, ph, turbidity_1, turbidity_2, turbidity_3)   values (4,'2016-10-4','08:17',162,9,27.8,34.3,6.19,95.2,8.12,0.52,0.52,0.52);
insert into samples (site_id, the_date, the_time, qa_code, session_id, temperature, salinity, dissolved_oxygen, dissolved_oxygen_pct, ph, turbidity_1, turbidity_2, turbidity_3)   values (5,'2016-10-4','08:35',162,9,27.9,34,6.42,98.8,8.15,1.99,1.99,1.99);
insert into samples (site_id, the_date, the_time, qa_code, session_id, temperature, salinity, dissolved_oxygen, dissolved_oxygen_pct, ph, turbidity_1, turbidity_2, turbidity_3)   values (6,'2016-10-4','08:53',162,9,27.8,34.6,6.35,97.9,8.17,1.84,1.84,1.84);
insert into samples (site_id, the_date, the_time, qa_code, session_id, temperature, salinity, dissolved_oxygen, dissolved_oxygen_pct, ph, turbidity_1, turbidity_2, turbidity_3)   values (7,'2016-10-5','08:16',162,9,27.6,35.5,5.9,91.3,7.79,3.32,3.32,3.32);
insert into samples (site_id, the_date, the_time, qa_code, session_id, temperature, salinity, dissolved_oxygen, dissolved_oxygen_pct, ph, turbidity_1, turbidity_2, turbidity_3)   values (8,'2016-10-5','08:48',162,9,27.8,35.4,5.44,84.3,7.89,14.73,14.73,14.73);
insert into samples (site_id, the_date, the_time, qa_code, session_id, temperature, salinity, dissolved_oxygen, dissolved_oxygen_pct, ph, turbidity_1, turbidity_2, turbidity_3)   values (9,'2016-10-5','09:10',162,9,28.2,36,5.53,86.4,7.87,20.37,20.37,20.37);
insert into samples (site_id, the_date, the_time, qa_code, session_id, temperature, salinity, dissolved_oxygen, dissolved_oxygen_pct, ph, turbidity_1, turbidity_2, turbidity_3)   values (10,'2016-10-5','09:35',162,9,28.3,36.5,6.42,100.6,8.11,2.61,2.61,2.61);
insert into samples (site_id, the_date, the_time, qa_code, session_id, temperature, salinity, dissolved_oxygen, dissolved_oxygen_pct, ph, turbidity_1, turbidity_2, turbidity_3)   values (11,'2016-10-5','10:00',162,9,28.8,37.3,6.45,102.4,7.97,3.36,3.36,3.36);
insert into samples (site_id, the_date, the_time, qa_code, session_id, temperature, salinity, dissolved_oxygen, dissolved_oxygen_pct, ph, turbidity_1, turbidity_2, turbidity_3)   values (12,'2016-10-5','10:23',162,9,28.8,37.2,6.73,106.9,7.99,2.07,2.07,2.07);
insert into samples (site_id, the_date, the_time, qa_code, session_id, temperature, salinity, dissolved_oxygen, dissolved_oxygen_pct, ph, turbidity_1, turbidity_2, turbidity_3)   values (13,'2016-10-6','07:30',162,9,26.7,34.9,5.94,89.9,8,7.28,7.28,7.28);
insert into samples (site_id, the_date, the_time, qa_code, session_id, temperature, salinity, dissolved_oxygen, dissolved_oxygen_pct, ph, turbidity_1, turbidity_2, turbidity_3)   values (14,'2016-10-6','07:55',162,9,26.8,34.9,6.23,94.5,8.06,9.11,9.11,9.11);
insert into samples (site_id, the_date, the_time, qa_code, session_id, temperature, salinity, dissolved_oxygen, dissolved_oxygen_pct, ph, turbidity_1, turbidity_2, turbidity_3)   values (15,'2016-10-6','08:15',162,9,26.7,35,6.08,92.1,8.02,6.72,6.72,6.72);
insert into samples (site_id, the_date, the_time, qa_code, session_id, temperature, salinity, dissolved_oxygen, dissolved_oxygen_pct, ph, turbidity_1, turbidity_2, turbidity_3)   values (16,'2016-10-6','08:35',162,9,27.2,34.8,6.41,97.7,8.09,13.27,13.27,13.27);
insert into samples (site_id, the_date, the_time, qa_code, session_id, temperature, salinity, dissolved_oxygen, dissolved_oxygen_pct, ph, turbidity_1, turbidity_2, turbidity_3)   values (17,'2016-10-6','09:02',162,9,27.7,35,6.59,101.3,8.11,7.3,7.3,7.3);
insert into samples (site_id, the_date, the_time, qa_code, session_id, temperature, salinity, dissolved_oxygen, dissolved_oxygen_pct, ph, turbidity_1, turbidity_2, turbidity_3)   values (18,'2016-10-6','09:22',162,9,28.1,34.9,6.47,100.2,8.1,4.07,4.07,4.07);
-- session :  10 session_id auto_increment : 10

-- insert this session
insert into sessions (lab_id, session_number, first_sample_day) values (1, 10, '2016-10-18');
insert into samples (site_id, the_date, the_time, qa_code, session_id, temperature, salinity, dissolved_oxygen, dissolved_oxygen_pct, ph, turbidity_1, turbidity_2, turbidity_3)   values (2,'2016-10-18','07:39',162,10,26.6,36,6.23,95,7.95,8.45,8.45,8.45);
insert into samples (site_id, the_date, the_time, qa_code, session_id, temperature, salinity, dissolved_oxygen, dissolved_oxygen_pct, ph, turbidity_1, turbidity_2, turbidity_3)   values (3,'2016-10-18','08:02',162,10,26.1,35.6,6.31,95.2,7.96,5.78,5.78,5.78);
insert into samples (site_id, the_date, the_time, qa_code, session_id, temperature, salinity, dissolved_oxygen, dissolved_oxygen_pct, ph, turbidity_1, turbidity_2, turbidity_3)   values (4,'2016-10-18','08:22',162,10,26.9,36.7,6.28,96.3,7.99,0.7,0.7,0.7);
insert into samples (site_id, the_date, the_time, qa_code, session_id, temperature, salinity, dissolved_oxygen, dissolved_oxygen_pct, ph, turbidity_1, turbidity_2, turbidity_3)   values (5,'2016-10-18','08:40',162,10,27.2,null,6.22,96.3,8.01,0.93,0.93,0.93);
insert into samples (site_id, the_date, the_time, qa_code, session_id, temperature, salinity, dissolved_oxygen, dissolved_oxygen_pct, ph, turbidity_1, turbidity_2, turbidity_3)   values (6,'2016-10-18','08:57',162,10,27.3,36.6,6.2,95.9,8.09,0.9,0.9,0.9);
insert into samples (site_id, the_date, the_time, qa_code, session_id, temperature, salinity, dissolved_oxygen, dissolved_oxygen_pct, ph, turbidity_1, turbidity_2, turbidity_3)   values (7,'2016-10-19','08:21',162,10,27.1,33.5,6.26,94.5,8.09,8.22,8.22,8.22);
insert into samples (site_id, the_date, the_time, qa_code, session_id, temperature, salinity, dissolved_oxygen, dissolved_oxygen_pct, ph, turbidity_1, turbidity_2, turbidity_3)   values (8,'2016-10-19','08:51',162,10,27.2,34,6.12,92.9,8.03,40.7,40.7,40.7);
insert into samples (site_id, the_date, the_time, qa_code, session_id, temperature, salinity, dissolved_oxygen, dissolved_oxygen_pct, ph, turbidity_1, turbidity_2, turbidity_3)   values (9,'2016-10-19','09:13',162,10,27.5,33.9,6,91.5,7.98,43.67,43.67,43.67);
insert into samples (site_id, the_date, the_time, qa_code, session_id, temperature, salinity, dissolved_oxygen, dissolved_oxygen_pct, ph, turbidity_1, turbidity_2, turbidity_3)   values (10,'2016-10-19','09:40',162,10,27.7,34.6,6.49,99.7,8.15,6.04,6.04,6.04);
insert into samples (site_id, the_date, the_time, qa_code, session_id, temperature, salinity, dissolved_oxygen, dissolved_oxygen_pct, ph, turbidity_1, turbidity_2, turbidity_3)   values (11,'2016-10-19','10:01',162,10,27.7,35,6.28,96.7,8.06,4.35,4.35,4.35);
insert into samples (site_id, the_date, the_time, qa_code, session_id, temperature, salinity, dissolved_oxygen, dissolved_oxygen_pct, ph, turbidity_1, turbidity_2, turbidity_3)   values (12,'2016-10-19','10:37',162,10,27.4,34.9,6.65,102,8.12,2.94,2.94,2.94);
insert into samples (site_id, the_date, the_time, qa_code, session_id, temperature, salinity, dissolved_oxygen, dissolved_oxygen_pct, ph, turbidity_1, turbidity_2, turbidity_3)   values (13,'2016-10-20','07:05',162,10,25.7,36.6,6.01,90.4,7.93,8.81,8.81,8.81);
insert into samples (site_id, the_date, the_time, qa_code, session_id, temperature, salinity, dissolved_oxygen, dissolved_oxygen_pct, ph, turbidity_1, turbidity_2, turbidity_3)   values (14,'2016-10-20','07:40',162,10,25.7,36.6,5.95,89.7,8.01,2.54,2.54,2.54);
insert into samples (site_id, the_date, the_time, qa_code, session_id, temperature, salinity, dissolved_oxygen, dissolved_oxygen_pct, ph, turbidity_1, turbidity_2, turbidity_3)   values (15,'2016-10-20','08:00',162,10,25.4,36.6,5.86,87.8,8.01,5.47,5.47,5.47);
insert into samples (site_id, the_date, the_time, qa_code, session_id, temperature, salinity, dissolved_oxygen, dissolved_oxygen_pct, ph, turbidity_1, turbidity_2, turbidity_3)   values (16,'2016-10-20','08:23',162,10,24.8,36.3,6.47,96,8.08,14.97,14.97,14.97);
insert into samples (site_id, the_date, the_time, qa_code, session_id, temperature, salinity, dissolved_oxygen, dissolved_oxygen_pct, ph, turbidity_1, turbidity_2, turbidity_3)   values (17,'2016-10-20','08:57',162,10,25.7,37,6.59,99.4,8.07,9.5,9.5,9.5);
insert into samples (site_id, the_date, the_time, qa_code, session_id, temperature, salinity, dissolved_oxygen, dissolved_oxygen_pct, ph, turbidity_1, turbidity_2, turbidity_3)   values (18,'2016-10-20','09:10',162,10,26,35.9,6.6,98.9,8.09,4.38,4.38,4.38);
-- session :  11 session_id auto_increment : 11

-- insert this session
insert into sessions (lab_id, session_number, first_sample_day) values (1, 11, '2016-11-1');
insert into samples (site_id, the_date, the_time, qa_code, session_id, temperature, salinity, dissolved_oxygen, dissolved_oxygen_pct, ph, turbidity_1, turbidity_2, turbidity_3)   values (2,'2016-11-1','07:44',162,11,24.8,34.3,6.34,92.1,8.07,7.83,7.83,7.83);
insert into samples (site_id, the_date, the_time, qa_code, session_id, temperature, salinity, dissolved_oxygen, dissolved_oxygen_pct, ph, turbidity_1, turbidity_2, turbidity_3)   values (3,'2016-11-1','08:01',162,11,24.7,33.5,6.68,96.7,8.08,3.08,3.08,3.08);
insert into samples (site_id, the_date, the_time, qa_code, session_id, temperature, salinity, dissolved_oxygen, dissolved_oxygen_pct, ph, turbidity_1, turbidity_2, turbidity_3)   values (4,'2016-11-1','08:18',162,11,25.5,34.4,6.43,94.7,8.1,1.4,1.4,1.4);
insert into samples (site_id, the_date, the_time, qa_code, session_id, temperature, salinity, dissolved_oxygen, dissolved_oxygen_pct, ph, turbidity_1, turbidity_2, turbidity_3)   values (5,'2016-11-1','08:36',162,11,26,34,6.38,95.8,8.12,1.38,1.38,1.38);
insert into samples (site_id, the_date, the_time, qa_code, session_id, temperature, salinity, dissolved_oxygen, dissolved_oxygen_pct, ph, turbidity_1, turbidity_2, turbidity_3)   values (6,'2016-11-1','08:55',162,11,26.4,34.4,6.38,95.4,8.15,0.91,0.91,0.91);
insert into samples (site_id, the_date, the_time, qa_code, session_id, temperature, salinity, dissolved_oxygen, dissolved_oxygen_pct, ph, turbidity_1, turbidity_2, turbidity_3)   values (7,'2016-11-2','08:20',162,11,25.6,32.8,5.88,86,7.99,5.64,5.64,5.64);
insert into samples (site_id, the_date, the_time, qa_code, session_id, temperature, salinity, dissolved_oxygen, dissolved_oxygen_pct, ph, turbidity_1, turbidity_2, turbidity_3)   values (8,'2016-11-2','08:56',162,11,26.2,34,5.52,82.2,8.02,12.7,12.7,12.7);
insert into samples (site_id, the_date, the_time, qa_code, session_id, temperature, salinity, dissolved_oxygen, dissolved_oxygen_pct, ph, turbidity_1, turbidity_2, turbidity_3)   values (9,'2016-11-2','09:17',162,11,26.8,33.7,5.38,80.9,7.98,4.18,4.18,4.18);
insert into samples (site_id, the_date, the_time, qa_code, session_id, temperature, salinity, dissolved_oxygen, dissolved_oxygen_pct, ph, turbidity_1, turbidity_2, turbidity_3)   values (10,'2016-11-2','09:52',162,11,26.7,34.5,6.83,103,8.17,1.86,1.86,1.86);
insert into samples (site_id, the_date, the_time, qa_code, session_id, temperature, salinity, dissolved_oxygen, dissolved_oxygen_pct, ph, turbidity_1, turbidity_2, turbidity_3)   values (11,'2016-11-2','10:17',162,11,26.5,34.5,6.9,103.8,8.13,1.62,1.62,1.62);
insert into samples (site_id, the_date, the_time, qa_code, session_id, temperature, salinity, dissolved_oxygen, dissolved_oxygen_pct, ph, turbidity_1, turbidity_2, turbidity_3)   values (12,'2016-11-2','10:46',162,11,26.3,34.8,6.83,102.6,8.07,1.75,1.75,1.75);
insert into samples (site_id, the_date, the_time, qa_code, session_id, temperature, salinity, dissolved_oxygen, dissolved_oxygen_pct, ph, turbidity_1, turbidity_2, turbidity_3)   values (13,'2016-11-3','07:15',162,11,24.9,34.8,6.07,88.9,8.04,5.68,5.68,5.68);
insert into samples (site_id, the_date, the_time, qa_code, session_id, temperature, salinity, dissolved_oxygen, dissolved_oxygen_pct, ph, turbidity_1, turbidity_2, turbidity_3)   values (14,'2016-11-3','07:37',162,11,25.1,34.9,6.08,89.4,8.11,1.28,1.28,1.28);
insert into samples (site_id, the_date, the_time, qa_code, session_id, temperature, salinity, dissolved_oxygen, dissolved_oxygen_pct, ph, turbidity_1, turbidity_2, turbidity_3)   values (15,'2016-11-3','08:00',162,11,24.9,34.8,6,87.9,8.08,3.25,3.25,3.25);
insert into samples (site_id, the_date, the_time, qa_code, session_id, temperature, salinity, dissolved_oxygen, dissolved_oxygen_pct, ph, turbidity_1, turbidity_2, turbidity_3)   values (16,'2016-11-3','08:20',162,11,25.4,34.9,6.61,97.7,8.15,12.6,12.6,12.6);
insert into samples (site_id, the_date, the_time, qa_code, session_id, temperature, salinity, dissolved_oxygen, dissolved_oxygen_pct, ph, turbidity_1, turbidity_2, turbidity_3)   values (17,'2016-11-3','08:45',162,11,25.4,34.9,6.68,98.8,8.16,3.72,3.72,3.72);
insert into samples (site_id, the_date, the_time, qa_code, session_id, temperature, salinity, dissolved_oxygen, dissolved_oxygen_pct, ph, turbidity_1, turbidity_2, turbidity_3)   values (18,'2016-11-3','09:02',162,11,25.7,34.7,6.87,101.9,8.17,3.56,3.56,3.56);
-- session :  12 session_id auto_increment : 12

-- insert this session
insert into sessions (lab_id, session_number, first_sample_day) values (1, 12, '2016-11-15');
insert into samples (site_id, the_date, the_time, qa_code, session_id, temperature, salinity, dissolved_oxygen, dissolved_oxygen_pct, ph, turbidity_1, turbidity_2, turbidity_3)   values (2,'2016-11-15','07:41',162,12,24.7,34.2,6.52,94.9,8.08,4.23,4.23,4.23);
insert into samples (site_id, the_date, the_time, qa_code, session_id, temperature, salinity, dissolved_oxygen, dissolved_oxygen_pct, ph, turbidity_1, turbidity_2, turbidity_3)   values (3,'2016-11-15','08:06',162,12,25.5,34.3,7.96,96.7,8.15,5.67,5.67,5.67);
insert into samples (site_id, the_date, the_time, qa_code, session_id, temperature, salinity, dissolved_oxygen, dissolved_oxygen_pct, ph, turbidity_1, turbidity_2, turbidity_3)   values (4,'2016-11-15','08:29',162,12,25.8,34.4,6.49,96.2,8.14,1.46,1.46,1.46);
insert into samples (site_id, the_date, the_time, qa_code, session_id, temperature, salinity, dissolved_oxygen, dissolved_oxygen_pct, ph, turbidity_1, turbidity_2, turbidity_3)   values (5,'2016-11-15','08:49',162,12,26.5,34.2,6.38,95.8,8.14,1.66,1.66,1.66);
insert into samples (site_id, the_date, the_time, qa_code, session_id, temperature, salinity, dissolved_oxygen, dissolved_oxygen_pct, ph, turbidity_1, turbidity_2, turbidity_3)   values (6,'2016-11-15','09:05',162,12,26.4,33.3,6.45,96.2,8.12,1.42,1.42,1.42);
insert into samples (site_id, the_date, the_time, qa_code, session_id, temperature, salinity, dissolved_oxygen, dissolved_oxygen_pct, ph, turbidity_1, turbidity_2, turbidity_3)   values (7,'2016-11-16','08:16',162,12,26.1,33.7,6.2,92.1,8.05,7.39,7.39,7.39);
insert into samples (site_id, the_date, the_time, qa_code, session_id, temperature, salinity, dissolved_oxygen, dissolved_oxygen_pct, ph, turbidity_1, turbidity_2, turbidity_3)   values (8,'2016-11-16','08:45',162,12,26.4,34.1,5.53,82.9,7.98,14.03,14.03,14.03);
insert into samples (site_id, the_date, the_time, qa_code, session_id, temperature, salinity, dissolved_oxygen, dissolved_oxygen_pct, ph, turbidity_1, turbidity_2, turbidity_3)   values (9,'2016-11-16','09:06',162,12,26.5,34.3,5.6,84,8.03,10.87,10.87,10.87);
insert into samples (site_id, the_date, the_time, qa_code, session_id, temperature, salinity, dissolved_oxygen, dissolved_oxygen_pct, ph, turbidity_1, turbidity_2, turbidity_3)   values (10,'2016-11-16','09:30',162,12,26.6,34.4,6.73,101.2,8.16,2.04,2.04,2.04);
insert into samples (site_id, the_date, the_time, qa_code, session_id, temperature, salinity, dissolved_oxygen, dissolved_oxygen_pct, ph, turbidity_1, turbidity_2, turbidity_3)   values (11,'2016-11-16','09:52',162,12,26.7,34.7,6.67,100.7,8.11,3.33,3.33,3.33);
insert into samples (site_id, the_date, the_time, qa_code, session_id, temperature, salinity, dissolved_oxygen, dissolved_oxygen_pct, ph, turbidity_1, turbidity_2, turbidity_3)   values (12,'2016-11-16','10:15',162,12,26.8,34.7,null,106.9,8.11,4.37,4.37,4.37);
insert into samples (site_id, the_date, the_time, qa_code, session_id, temperature, salinity, dissolved_oxygen, dissolved_oxygen_pct, ph, turbidity_1, turbidity_2, turbidity_3)   values (13,'2016-11-17','07:45',162,12,24.7,34.8,5.78,84.4,8.07,5.15,5.15,5.15);
insert into samples (site_id, the_date, the_time, qa_code, session_id, temperature, salinity, dissolved_oxygen, dissolved_oxygen_pct, ph, turbidity_1, turbidity_2, turbidity_3)   values (14,'2016-11-17','08:05',162,12,25,34.8,6.02,88.4,8.05,0.69,0.69,0.69);
insert into samples (site_id, the_date, the_time, qa_code, session_id, temperature, salinity, dissolved_oxygen, dissolved_oxygen_pct, ph, turbidity_1, turbidity_2, turbidity_3)   values (15,'2016-11-17','08:25',162,12,24.5,34.4,6,87.1,8.04,4.28,4.28,4.28);
insert into samples (site_id, the_date, the_time, qa_code, session_id, temperature, salinity, dissolved_oxygen, dissolved_oxygen_pct, ph, turbidity_1, turbidity_2, turbidity_3)   values (16,'2016-11-17','08:50',162,12,24.7,34.6,6.58,96.2,8.05,2.92,2.92,2.92);
insert into samples (site_id, the_date, the_time, qa_code, session_id, temperature, salinity, dissolved_oxygen, dissolved_oxygen_pct, ph, turbidity_1, turbidity_2, turbidity_3)   values (17,'2016-11-17','09:15',162,12,25.8,34.7,6.82,101.6,8.11,2.97,2.97,2.97);
insert into samples (site_id, the_date, the_time, qa_code, session_id, temperature, salinity, dissolved_oxygen, dissolved_oxygen_pct, ph, turbidity_1, turbidity_2, turbidity_3)   values (18,'2016-11-17','09:25',162,12,25.7,34.6,6.56,97.4,8.06,2.33,2.33,2.33);
-- session :  13 session_id auto_increment : 13

-- insert this session
insert into sessions (lab_id, session_number, first_sample_day) values (1, 13, '2016-11-29');
insert into samples (site_id, the_date, the_time, qa_code, session_id, temperature, salinity, dissolved_oxygen, dissolved_oxygen_pct, ph, turbidity_1, turbidity_2, turbidity_3)   values (2,'2016-11-29','07:41',162,13,24.4,34.2,6.36,92,8.05,5.69,5.69,5.69);
insert into samples (site_id, the_date, the_time, qa_code, session_id, temperature, salinity, dissolved_oxygen, dissolved_oxygen_pct, ph, turbidity_1, turbidity_2, turbidity_3)   values (3,'2016-11-29','08:03',162,13,24,33.9,6.68,95.7,8.07,6.36,6.36,6.36);
insert into samples (site_id, the_date, the_time, qa_code, session_id, temperature, salinity, dissolved_oxygen, dissolved_oxygen_pct, ph, turbidity_1, turbidity_2, turbidity_3)   values (4,'2016-11-29','08:22',162,13,25.1,34.3,6.52,95.2,8.14,1.56,1.56,1.56);
insert into samples (site_id, the_date, the_time, qa_code, session_id, temperature, salinity, dissolved_oxygen, dissolved_oxygen_pct, ph, turbidity_1, turbidity_2, turbidity_3)   values (5,'2016-11-29','08:42',162,13,25.4,33.8,6.53,95.4,8.04,1.46,1.46,1.46);
insert into samples (site_id, the_date, the_time, qa_code, session_id, temperature, salinity, dissolved_oxygen, dissolved_oxygen_pct, ph, turbidity_1, turbidity_2, turbidity_3)   values (6,'2016-11-29','08:59',162,13,25.4,33.6,6.49,95,8.13,1.49,1.49,1.49);
insert into samples (site_id, the_date, the_time, qa_code, session_id, temperature, salinity, dissolved_oxygen, dissolved_oxygen_pct, ph, turbidity_1, turbidity_2, turbidity_3)   values (7,'2016-11-30','08:24',162,13,25,34,6.35,92.8,8.07,9.3,9.3,9.3);
insert into samples (site_id, the_date, the_time, qa_code, session_id, temperature, salinity, dissolved_oxygen, dissolved_oxygen_pct, ph, turbidity_1, turbidity_2, turbidity_3)   values (8,'2016-11-30','08:51',162,13,25,33.9,6.24,91.2,8.01,9.44,9.44,9.44);
insert into samples (site_id, the_date, the_time, qa_code, session_id, temperature, salinity, dissolved_oxygen, dissolved_oxygen_pct, ph, turbidity_1, turbidity_2, turbidity_3)   values (9,'2016-11-30','09:12',162,13,25,34,6.2,90.5,7.95,12.5,12.5,12.5);
insert into samples (site_id, the_date, the_time, qa_code, session_id, temperature, salinity, dissolved_oxygen, dissolved_oxygen_pct, ph, turbidity_1, turbidity_2, turbidity_3)   values (10,'2016-11-30','09:40',162,13,25.4,33.9,6.84,100.6,8.1,2.02,2.02,2.02);
insert into samples (site_id, the_date, the_time, qa_code, session_id, temperature, salinity, dissolved_oxygen, dissolved_oxygen_pct, ph, turbidity_1, turbidity_2, turbidity_3)   values (11,'2016-11-30','10:01',162,13,24.5,34.5,7.13,103.6,8.04,1.51,1.51,1.51);
insert into samples (site_id, the_date, the_time, qa_code, session_id, temperature, salinity, dissolved_oxygen, dissolved_oxygen_pct, ph, turbidity_1, turbidity_2, turbidity_3)   values (12,'2016-11-30','10:25',162,13,24.7,34.8,7.37,108,8.13,2.42,2.42,2.42);
insert into samples (site_id, the_date, the_time, qa_code, session_id, temperature, salinity, dissolved_oxygen, dissolved_oxygen_pct, ph, turbidity_1, turbidity_2, turbidity_3)   values (13,'2016-12-1','07:15',162,13,22.9,34.9,6.65,94.2,8.02,9.65,9.65,9.65);
insert into samples (site_id, the_date, the_time, qa_code, session_id, temperature, salinity, dissolved_oxygen, dissolved_oxygen_pct, ph, turbidity_1, turbidity_2, turbidity_3)   values (14,'2016-12-1','07:40',162,13,23.5,34.7,6.53,93.5,8.06,3.67,3.67,3.67);
insert into samples (site_id, the_date, the_time, qa_code, session_id, temperature, salinity, dissolved_oxygen, dissolved_oxygen_pct, ph, turbidity_1, turbidity_2, turbidity_3)   values (15,'2016-12-1','08:00',162,13,23.4,34.6,6.12,87.4,8.07,4.52,4.52,4.52);
insert into samples (site_id, the_date, the_time, qa_code, session_id, temperature, salinity, dissolved_oxygen, dissolved_oxygen_pct, ph, turbidity_1, turbidity_2, turbidity_3)   values (16,'2016-12-1','08:20',162,13,23.3,34.7,6.8,96.9,8.13,7.42,7.42,7.42);
insert into samples (site_id, the_date, the_time, qa_code, session_id, temperature, salinity, dissolved_oxygen, dissolved_oxygen_pct, ph, turbidity_1, turbidity_2, turbidity_3)   values (17,'2016-12-1','08:40',162,13,23.7,34.7,6.79,97.5,8.12,8.65,8.65,8.65);
insert into samples (site_id, the_date, the_time, qa_code, session_id, temperature, salinity, dissolved_oxygen, dissolved_oxygen_pct, ph, turbidity_1, turbidity_2, turbidity_3)   values (18,'2016-12-1','09:05',162,13,24.2,34.7,6.71,97,8.11,5.37,5.37,5.37);
-- session :  14 session_id auto_increment : 14

-- insert this session
insert into sessions (lab_id, session_number, first_sample_day) values (1, 14, '2016-12-13');
insert into samples (site_id, the_date, the_time, qa_code, session_id, temperature, salinity, dissolved_oxygen, dissolved_oxygen_pct, ph, turbidity_1, turbidity_2, turbidity_3)   values (2,'2016-12-13','07:36',162,14,24.7,34.1,6.56,95.5,7.95,8.48,8.48,8.48);
insert into samples (site_id, the_date, the_time, qa_code, session_id, temperature, salinity, dissolved_oxygen, dissolved_oxygen_pct, ph, turbidity_1, turbidity_2, turbidity_3)   values (3,'2016-12-13','08:03',162,14,24.3,32.7,6.65,95.6,8.07,5.8,5.8,5.8);
insert into samples (site_id, the_date, the_time, qa_code, session_id, temperature, salinity, dissolved_oxygen, dissolved_oxygen_pct, ph, turbidity_1, turbidity_2, turbidity_3)   values (4,'2016-12-13','08:24',162,14,25.3,34.7,6.6,97.4,8.02,1.21,1.21,1.21);
insert into samples (site_id, the_date, the_time, qa_code, session_id, temperature, salinity, dissolved_oxygen, dissolved_oxygen_pct, ph, turbidity_1, turbidity_2, turbidity_3)   values (5,'2016-12-13','08:46',162,14,25.3,34.5,6.57,97.1,8.09,3.32,3.32,3.32);
insert into samples (site_id, the_date, the_time, qa_code, session_id, temperature, salinity, dissolved_oxygen, dissolved_oxygen_pct, ph, turbidity_1, turbidity_2, turbidity_3)   values (6,'2016-12-13','09:03',162,14,25.3,34.1,6.59,97.2,8.11,0.97,0.97,0.97);
insert into samples (site_id, the_date, the_time, qa_code, session_id, temperature, salinity, dissolved_oxygen, dissolved_oxygen_pct, ph, turbidity_1, turbidity_2, turbidity_3)   values (7,'2016-12-14','08:16',162,14,24.2,34.8,6.56,95.1,8.03,4.31,4.31,4.31);
insert into samples (site_id, the_date, the_time, qa_code, session_id, temperature, salinity, dissolved_oxygen, dissolved_oxygen_pct, ph, turbidity_1, turbidity_2, turbidity_3)   values (8,'2016-12-14','08:45',162,14,23.7,33.1,6.65,94.7,7.96,14.27,14.27,14.27);
insert into samples (site_id, the_date, the_time, qa_code, session_id, temperature, salinity, dissolved_oxygen, dissolved_oxygen_pct, ph, turbidity_1, turbidity_2, turbidity_3)   values (9,'2016-12-14','09:18',162,14,24,33.8,5.93,85.3,7.94,7.5,7.5,7.5);
insert into samples (site_id, the_date, the_time, qa_code, session_id, temperature, salinity, dissolved_oxygen, dissolved_oxygen_pct, ph, turbidity_1, turbidity_2, turbidity_3)   values (10,'2016-12-14','09:35',162,14,24.9,34.4,6.95,101.8,8.08,2.72,2.72,2.72);
insert into samples (site_id, the_date, the_time, qa_code, session_id, temperature, salinity, dissolved_oxygen, dissolved_oxygen_pct, ph, turbidity_1, turbidity_2, turbidity_3)   values (11,'2016-12-14','09:54',162,14,24.9,34.6,7.02,103,8.13,1.99,1.99,1.99);
insert into samples (site_id, the_date, the_time, qa_code, session_id, temperature, salinity, dissolved_oxygen, dissolved_oxygen_pct, ph, turbidity_1, turbidity_2, turbidity_3)   values (12,'2016-12-14','10:16',162,14,24.7,34.8,6.68,97.7,8.08,4.1,4.1,4.1);
insert into samples (site_id, the_date, the_time, qa_code, session_id, temperature, salinity, dissolved_oxygen, dissolved_oxygen_pct, ph, turbidity_1, turbidity_2, turbidity_3)   values (13,'2016-12-15','08:05',162,14,23.4,33.8,6.46,92.2,7.82,6.87,6.87,6.87);
insert into samples (site_id, the_date, the_time, qa_code, session_id, temperature, salinity, dissolved_oxygen, dissolved_oxygen_pct, ph, turbidity_1, turbidity_2, turbidity_3)   values (14,'2016-12-15','08:25',162,14,24.8,34.4,6.08,89.2,7.85,1.52,1.52,1.52);
insert into samples (site_id, the_date, the_time, qa_code, session_id, temperature, salinity, dissolved_oxygen, dissolved_oxygen_pct, ph, turbidity_1, turbidity_2, turbidity_3)   values (15,'2016-12-15','08:45',162,14,25.1,34.3,5.96,87.9,7.97,1.75,1.75,1.75);
insert into samples (site_id, the_date, the_time, qa_code, session_id, temperature, salinity, dissolved_oxygen, dissolved_oxygen_pct, ph, turbidity_1, turbidity_2, turbidity_3)   values (16,'2016-12-15','09:05',162,14,25,34.8,6.65,98.2,7.89,3.15,3.15,3.15);
insert into samples (site_id, the_date, the_time, qa_code, session_id, temperature, salinity, dissolved_oxygen, dissolved_oxygen_pct, ph, turbidity_1, turbidity_2, turbidity_3)   values (17,'2016-12-15','09:18',162,14,25.1,35,6.94,102.7,8.07,4.05,4.05,4.05);
insert into samples (site_id, the_date, the_time, qa_code, session_id, temperature, salinity, dissolved_oxygen, dissolved_oxygen_pct, ph, turbidity_1, turbidity_2, turbidity_3)   values (18,'2016-12-15','09:30',162,14,25.3,34.9,6.77,100.5,7.97,5.17,5.17,5.17);
-- session :  15 session_id auto_increment : 15

-- insert this session
insert into sessions (lab_id, session_number, first_sample_day) values (1, 15, '2017-1-3');
insert into samples (site_id, the_date, the_time, qa_code, session_id, temperature, salinity, dissolved_oxygen, dissolved_oxygen_pct, ph, turbidity_1, turbidity_2, turbidity_3)   values (2,'2017-1-3','08:45',162,15,24.1,34.7,6.45,93.3,8.16,5.01,5.01,5.01);
insert into samples (site_id, the_date, the_time, qa_code, session_id, temperature, salinity, dissolved_oxygen, dissolved_oxygen_pct, ph, turbidity_1, turbidity_2, turbidity_3)   values (3,'2017-1-3','09:10',162,15,23,29.5,7.07,97.5,8.21,3.78,3.78,3.78);
insert into samples (site_id, the_date, the_time, qa_code, session_id, temperature, salinity, dissolved_oxygen, dissolved_oxygen_pct, ph, turbidity_1, turbidity_2, turbidity_3)   values (4,'2017-1-3','09:30',162,15,24.4,34.6,6.57,95.5,8.18,2.49,2.49,2.49);
insert into samples (site_id, the_date, the_time, qa_code, session_id, temperature, salinity, dissolved_oxygen, dissolved_oxygen_pct, ph, turbidity_1, turbidity_2, turbidity_3)   values (5,'2017-1-3','09:55',162,15,24.9,34.5,6.66,97.6,8.21,1.42,1.42,1.42);
insert into samples (site_id, the_date, the_time, qa_code, session_id, temperature, salinity, dissolved_oxygen, dissolved_oxygen_pct, ph, turbidity_1, turbidity_2, turbidity_3)   values (6,'2017-1-3','10:15',162,15,24.8,34.9,6.49,95.3,8.2,0.93,0.93,0.93);
insert into samples (site_id, the_date, the_time, qa_code, session_id, temperature, salinity, dissolved_oxygen, dissolved_oxygen_pct, ph, turbidity_1, turbidity_2, turbidity_3)   values (7,'2017-1-4','08:15',162,15,23.4,34.1,6.72,95.6,8.08,5.57,5.57,5.57);
insert into samples (site_id, the_date, the_time, qa_code, session_id, temperature, salinity, dissolved_oxygen, dissolved_oxygen_pct, ph, turbidity_1, turbidity_2, turbidity_3)   values (8,'2017-1-4','08:42',162,15,23.3,34.7,6.77,96.4,8.07,8.92,8.92,8.92);
insert into samples (site_id, the_date, the_time, qa_code, session_id, temperature, salinity, dissolved_oxygen, dissolved_oxygen_pct, ph, turbidity_1, turbidity_2, turbidity_3)   values (9,'2017-1-4','09:03',162,15,23.7,34.6,6.22,89.4,8.05,35.3,35.3,35.3);
insert into samples (site_id, the_date, the_time, qa_code, session_id, temperature, salinity, dissolved_oxygen, dissolved_oxygen_pct, ph, turbidity_1, turbidity_2, turbidity_3)   values (10,'2017-1-4','09:32',162,15,24.1,34.9,6.85,99.2,8.11,2.7,2.7,2.7);
insert into samples (site_id, the_date, the_time, qa_code, session_id, temperature, salinity, dissolved_oxygen, dissolved_oxygen_pct, ph, turbidity_1, turbidity_2, turbidity_3)   values (11,'2017-1-4','09:58',162,15,24.3,35.1,6.92,100.6,8.12,5.01,5.01,5.01);
insert into samples (site_id, the_date, the_time, qa_code, session_id, temperature, salinity, dissolved_oxygen, dissolved_oxygen_pct, ph, turbidity_1, turbidity_2, turbidity_3)   values (12,'2017-1-4','10:24',162,15,24.3,35,7.46,108.5,8.13,2.18,2.18,2.18);
insert into samples (site_id, the_date, the_time, qa_code, session_id, temperature, salinity, dissolved_oxygen, dissolved_oxygen_pct, ph, turbidity_1, turbidity_2, turbidity_3)   values (13,'2017-1-5','07:00',162,15,22.8,34.8,6.34,93.5,null,4.83,4.83,4.83);
insert into samples (site_id, the_date, the_time, qa_code, session_id, temperature, salinity, dissolved_oxygen, dissolved_oxygen_pct, ph, turbidity_1, turbidity_2, turbidity_3)   values (14,'2017-1-5','07:15',162,15,23.3,34.9,6.63,94.5,null,7.99,7.99,7.99);
insert into samples (site_id, the_date, the_time, qa_code, session_id, temperature, salinity, dissolved_oxygen, dissolved_oxygen_pct, ph, turbidity_1, turbidity_2, turbidity_3)   values (15,'2017-1-5','07:30',162,15,23.6,35.2,6.16,88.6,null,5.83,5.83,5.83);
insert into samples (site_id, the_date, the_time, qa_code, session_id, temperature, salinity, dissolved_oxygen, dissolved_oxygen_pct, ph, turbidity_1, turbidity_2, turbidity_3)   values (16,'2017-1-5','07:40',162,15,22.9,35.4,6.96,98.9,null,12.23,12.23,12.23);
insert into samples (site_id, the_date, the_time, qa_code, session_id, temperature, salinity, dissolved_oxygen, dissolved_oxygen_pct, ph, turbidity_1, turbidity_2, turbidity_3)   values (17,'2017-1-5','08:00',162,15,23.7,35.4,6.79,97.8,null,10.1,10.1,10.1);
insert into samples (site_id, the_date, the_time, qa_code, session_id, temperature, salinity, dissolved_oxygen, dissolved_oxygen_pct, ph, turbidity_1, turbidity_2, turbidity_3)   values (18,'2017-1-5','08:15',162,15,24.3,35.3,8.12,96.7,null,8.69,8.69,8.69);
-- session :  16 session_id auto_increment : 16

-- insert this session
insert into sessions (lab_id, session_number, first_sample_day) values (1, 16, '2017-1-24');
insert into samples (site_id, the_date, the_time, qa_code, session_id, temperature, salinity, dissolved_oxygen, dissolved_oxygen_pct, ph, turbidity_1, turbidity_2, turbidity_3)   values (2,'2017-1-24','07:38',162,16,23.5,34.3,null,96.4,8.14,12.07,12.07,12.07);
insert into samples (site_id, the_date, the_time, qa_code, session_id, temperature, salinity, dissolved_oxygen, dissolved_oxygen_pct, ph, turbidity_1, turbidity_2, turbidity_3)   values (3,'2017-1-24','08:07',162,16,23.1,30.8,7.01,97.3,8.17,6.31,6.31,6.31);
insert into samples (site_id, the_date, the_time, qa_code, session_id, temperature, salinity, dissolved_oxygen, dissolved_oxygen_pct, ph, turbidity_1, turbidity_2, turbidity_3)   values (4,'2017-1-24','08:29',162,16,24.1,null,6.46,94.5,8.16,4.08,4.08,4.08);
insert into samples (site_id, the_date, the_time, qa_code, session_id, temperature, salinity, dissolved_oxygen, dissolved_oxygen_pct, ph, turbidity_1, turbidity_2, turbidity_3)   values (5,'2017-1-24','08:50',162,16,24.5,null,6.57,96.3,8.18,0.8,0.8,0.8);
insert into samples (site_id, the_date, the_time, qa_code, session_id, temperature, salinity, dissolved_oxygen, dissolved_oxygen_pct, ph, turbidity_1, turbidity_2, turbidity_3)   values (6,'2017-1-24','09:07',162,16,24.5,34.7,6.69,97.3,8.2,1.15,1.15,1.15);
insert into samples (site_id, the_date, the_time, qa_code, session_id, temperature, salinity, dissolved_oxygen, dissolved_oxygen_pct, ph, turbidity_1, turbidity_2, turbidity_3)   values (7,'2017-1-25','08:22',162,16,23.8,35.2,6.16,88.5,7.87,6.31,6.31,6.31);
insert into samples (site_id, the_date, the_time, qa_code, session_id, temperature, salinity, dissolved_oxygen, dissolved_oxygen_pct, ph, turbidity_1, turbidity_2, turbidity_3)   values (8,'2017-1-25','08:50',162,16,23.8,34.8,6.22,89.5,7.96,3.53,3.53,3.53);
insert into samples (site_id, the_date, the_time, qa_code, session_id, temperature, salinity, dissolved_oxygen, dissolved_oxygen_pct, ph, turbidity_1, turbidity_2, turbidity_3)   values (9,'2017-1-25','09:16',162,16,24.3,34.9,6.47,93.7,8,1.7,1.7,1.7);
insert into samples (site_id, the_date, the_time, qa_code, session_id, temperature, salinity, dissolved_oxygen, dissolved_oxygen_pct, ph, turbidity_1, turbidity_2, turbidity_3)   values (10,'2017-1-25','09:45',162,16,24.8,34.9,6.79,99.1,8.06,1.92,1.92,1.92);
insert into samples (site_id, the_date, the_time, qa_code, session_id, temperature, salinity, dissolved_oxygen, dissolved_oxygen_pct, ph, turbidity_1, turbidity_2, turbidity_3)   values (11,'2017-1-25','10:07',162,16,24.6,35.1,6.79,98.9,8.04,2.06,2.06,2.06);
insert into samples (site_id, the_date, the_time, qa_code, session_id, temperature, salinity, dissolved_oxygen, dissolved_oxygen_pct, ph, turbidity_1, turbidity_2, turbidity_3)   values (12,'2017-1-25','10:30',162,16,24.7,35.2,6.46,94.3,7.9,1.21,1.21,1.21);
insert into samples (site_id, the_date, the_time, qa_code, session_id, temperature, salinity, dissolved_oxygen, dissolved_oxygen_pct, ph, turbidity_1, turbidity_2, turbidity_3)   values (13,'2017-1-26','07:20',162,16,22.5,35,6.16,86.5,7.9,3.6,3.6,3.6);
insert into samples (site_id, the_date, the_time, qa_code, session_id, temperature, salinity, dissolved_oxygen, dissolved_oxygen_pct, ph, turbidity_1, turbidity_2, turbidity_3)   values (14,'2017-1-26','07:50',162,16,22.6,35.1,6.56,92.3,8.02,2.44,2.44,2.44);
insert into samples (site_id, the_date, the_time, qa_code, session_id, temperature, salinity, dissolved_oxygen, dissolved_oxygen_pct, ph, turbidity_1, turbidity_2, turbidity_3)   values (15,'2017-1-26','08:12',162,16,22.6,35,6.27,88.2,8.05,2.85,2.85,2.85);
insert into samples (site_id, the_date, the_time, qa_code, session_id, temperature, salinity, dissolved_oxygen, dissolved_oxygen_pct, ph, turbidity_1, turbidity_2, turbidity_3)   values (16,'2017-1-26','08:35',162,16,23.5,35.3,6.85,98,8.06,6.62,6.62,6.62);
insert into samples (site_id, the_date, the_time, qa_code, session_id, temperature, salinity, dissolved_oxygen, dissolved_oxygen_pct, ph, turbidity_1, turbidity_2, turbidity_3)   values (17,'2017-1-26','08:55',162,16,23.2,35.4,6.97,99.3,8.07,4.54,4.54,4.54);
insert into samples (site_id, the_date, the_time, qa_code, session_id, temperature, salinity, dissolved_oxygen, dissolved_oxygen_pct, ph, turbidity_1, turbidity_2, turbidity_3)   values (18,'2017-1-26','09:10',162,16,23.5,35.2,7.02,100.3,8.08,3.88,3.88,3.88);
-- session :  17 session_id auto_increment : 17

-- insert this session
insert into sessions (lab_id, session_number, first_sample_day) values (1, 17, '2017-2-14');
insert into samples (site_id, the_date, the_time, qa_code, session_id, temperature, salinity, dissolved_oxygen, dissolved_oxygen_pct, ph, turbidity_1, turbidity_2, turbidity_3)   values (1,'2017-2-14','07:52',162,17,24.2,34.9,6.8,98.7,8.15,0.84,0.84,0.84);
insert into samples (site_id, the_date, the_time, qa_code, session_id, temperature, salinity, dissolved_oxygen, dissolved_oxygen_pct, ph, turbidity_1, turbidity_2, turbidity_3)   values (2,'2017-2-14','08:25',162,17,24,34.5,6.71,97,8.15,3.81,3.81,3.81);
insert into samples (site_id, the_date, the_time, qa_code, session_id, temperature, salinity, dissolved_oxygen, dissolved_oxygen_pct, ph, turbidity_1, turbidity_2, turbidity_3)   values (3,'2017-2-14','08:45',162,17,24.1,34.7,6.77,98,8.14,6.6,6.6,6.6);
insert into samples (site_id, the_date, the_time, qa_code, session_id, temperature, salinity, dissolved_oxygen, dissolved_oxygen_pct, ph, turbidity_1, turbidity_2, turbidity_3)   values (4,'2017-2-14','09:13',162,17,24.5,34.6,6.81,99.1,8.19,5.25,5.25,5.25);
insert into samples (site_id, the_date, the_time, qa_code, session_id, temperature, salinity, dissolved_oxygen, dissolved_oxygen_pct, ph, turbidity_1, turbidity_2, turbidity_3)   values (5,'2017-2-14','09:38',162,17,24.7,34.3,6.75,98.6,8.19,1.47,1.47,1.47);
insert into samples (site_id, the_date, the_time, qa_code, session_id, temperature, salinity, dissolved_oxygen, dissolved_oxygen_pct, ph, turbidity_1, turbidity_2, turbidity_3)   values (6,'2017-2-14','10:00',162,17,24.7,33.9,6.78,98.7,8.2,1.04,1.04,1.04);
insert into samples (site_id, the_date, the_time, qa_code, session_id, temperature, salinity, dissolved_oxygen, dissolved_oxygen_pct, ph, turbidity_1, turbidity_2, turbidity_3)   values (7,'2017-2-15','08:33',162,17,24.9,33.8,6.38,93.1,8.1,4.18,4.18,4.18);
insert into samples (site_id, the_date, the_time, qa_code, session_id, temperature, salinity, dissolved_oxygen, dissolved_oxygen_pct, ph, turbidity_1, turbidity_2, turbidity_3)   values (8,'2017-2-15','08:45',162,17,24.9,34.1,6.2,90.5,8.07,10.7,10.7,10.7);
insert into samples (site_id, the_date, the_time, qa_code, session_id, temperature, salinity, dissolved_oxygen, dissolved_oxygen_pct, ph, turbidity_1, turbidity_2, turbidity_3)   values (9,'2017-2-15','09:03',162,17,24.9,34.4,5.93,86.7,8.07,8.65,8.65,8.65);
insert into samples (site_id, the_date, the_time, qa_code, session_id, temperature, salinity, dissolved_oxygen, dissolved_oxygen_pct, ph, turbidity_1, turbidity_2, turbidity_3)   values (10,'2017-2-15','09:30',162,17,25.1,34.9,6.86,100.8,8.19,3.12,3.12,3.12);
insert into samples (site_id, the_date, the_time, qa_code, session_id, temperature, salinity, dissolved_oxygen, dissolved_oxygen_pct, ph, turbidity_1, turbidity_2, turbidity_3)   values (11,'2017-2-15','09:47',162,17,25.2,34.9,6.79,100,8.13,5.91,5.91,5.91);
insert into samples (site_id, the_date, the_time, qa_code, session_id, temperature, salinity, dissolved_oxygen, dissolved_oxygen_pct, ph, turbidity_1, turbidity_2, turbidity_3)   values (12,'2017-2-15','10:11',162,17,25.1,34.9,6.59,96.8,8.1,4.16,4.16,4.16);
insert into samples (site_id, the_date, the_time, qa_code, session_id, temperature, salinity, dissolved_oxygen, dissolved_oxygen_pct, ph, turbidity_1, turbidity_2, turbidity_3)   values (13,'2017-2-17','07:12',162,17,24.8,35.1,5.9,86.3,8.02,2.94,2.94,2.94);
insert into samples (site_id, the_date, the_time, qa_code, session_id, temperature, salinity, dissolved_oxygen, dissolved_oxygen_pct, ph, turbidity_1, turbidity_2, turbidity_3)   values (14,'2017-2-17','07:40',162,17,25.6,35.1,6.18,91.6,8.08,2.63,2.63,2.63);
insert into samples (site_id, the_date, the_time, qa_code, session_id, temperature, salinity, dissolved_oxygen, dissolved_oxygen_pct, ph, turbidity_1, turbidity_2, turbidity_3)   values (15,'2017-2-17','08:00',162,17,25.6,35.1,5.63,83.3,8.05,2.14,2.14,2.14);
insert into samples (site_id, the_date, the_time, qa_code, session_id, temperature, salinity, dissolved_oxygen, dissolved_oxygen_pct, ph, turbidity_1, turbidity_2, turbidity_3)   values (16,'2017-2-17','08:25',162,17,25.3,35.2,6.46,95.3,8.11,2.77,2.77,2.77);
insert into samples (site_id, the_date, the_time, qa_code, session_id, temperature, salinity, dissolved_oxygen, dissolved_oxygen_pct, ph, turbidity_1, turbidity_2, turbidity_3)   values (17,'2017-2-17','08:50',162,17,25.6,35.3,6.83,101.5,8.13,14.17,14.17,14.17);
insert into samples (site_id, the_date, the_time, qa_code, session_id, temperature, salinity, dissolved_oxygen, dissolved_oxygen_pct, ph, turbidity_1, turbidity_2, turbidity_3)   values (18,'2017-2-17','09:14',162,17,25.5,35.1,6.73,99.6,8.15,3.7,3.7,3.7);
-- session :  18 session_id auto_increment : 18

-- insert this session
insert into sessions (lab_id, session_number, first_sample_day) values (1, 18, '2017-3-7');
insert into samples (site_id, the_date, the_time, qa_code, session_id, temperature, salinity, dissolved_oxygen, dissolved_oxygen_pct, ph, turbidity_1, turbidity_2, turbidity_3)   values (1,'2017-3-7','07:40',162,18,24.2,34.5,6.75,97.9,8.16,1.8,1.8,1.8);
insert into samples (site_id, the_date, the_time, qa_code, session_id, temperature, salinity, dissolved_oxygen, dissolved_oxygen_pct, ph, turbidity_1, turbidity_2, turbidity_3)   values (2,'2017-3-7','08:03',162,18,24.2,32.8,6.81,97.7,8.14,9.51,9.51,9.51);
insert into samples (site_id, the_date, the_time, qa_code, session_id, temperature, salinity, dissolved_oxygen, dissolved_oxygen_pct, ph, turbidity_1, turbidity_2, turbidity_3)   values (3,'2017-3-7','08:25',162,18,24.3,34.6,6.82,99.1,8.15,8.4,8.4,8.4);
insert into samples (site_id, the_date, the_time, qa_code, session_id, temperature, salinity, dissolved_oxygen, dissolved_oxygen_pct, ph, turbidity_1, turbidity_2, turbidity_3)   values (4,'2017-3-7','08:45',162,18,24.5,34.2,6.7,97.5,8.15,7.2,7.2,7.2);
insert into samples (site_id, the_date, the_time, qa_code, session_id, temperature, salinity, dissolved_oxygen, dissolved_oxygen_pct, ph, turbidity_1, turbidity_2, turbidity_3)   values (5,'2017-3-7','09:04',162,18,24.9,33.7,6.69,97.6,8.17,3.84,3.84,3.84);
insert into samples (site_id, the_date, the_time, qa_code, session_id, temperature, salinity, dissolved_oxygen, dissolved_oxygen_pct, ph, turbidity_1, turbidity_2, turbidity_3)   values (6,'2017-3-7','09:25',162,18,24.9,32.9,6.79,98.6,8.19,2.11,2.11,2.11);
insert into samples (site_id, the_date, the_time, qa_code, session_id, temperature, salinity, dissolved_oxygen, dissolved_oxygen_pct, ph, turbidity_1, turbidity_2, turbidity_3)   values (7,'2017-3-8','08:30',162,18,24.5,34,6.33,91.8,8.1,1.81,1.81,1.81);
insert into samples (site_id, the_date, the_time, qa_code, session_id, temperature, salinity, dissolved_oxygen, dissolved_oxygen_pct, ph, turbidity_1, turbidity_2, turbidity_3)   values (8,'2017-3-8','08:59',162,18,24.6,33.9,6.13,88.8,8.1,7.56,7.56,7.56);
insert into samples (site_id, the_date, the_time, qa_code, session_id, temperature, salinity, dissolved_oxygen, dissolved_oxygen_pct, ph, turbidity_1, turbidity_2, turbidity_3)   values (9,'2017-3-8','09:24',162,18,24.6,34.2,6.42,93.4,8.11,3.03,3.03,3.03);
insert into samples (site_id, the_date, the_time, qa_code, session_id, temperature, salinity, dissolved_oxygen, dissolved_oxygen_pct, ph, turbidity_1, turbidity_2, turbidity_3)   values (10,'2017-3-8','09:54',162,18,25.2,34.5,6.93,102.1,8.2,2.18,2.18,2.18);
insert into samples (site_id, the_date, the_time, qa_code, session_id, temperature, salinity, dissolved_oxygen, dissolved_oxygen_pct, ph, turbidity_1, turbidity_2, turbidity_3)   values (11,'2017-3-8','10:24',162,18,25.7,34.5,7.07,104.9,8.21,1.68,1.68,1.68);
insert into samples (site_id, the_date, the_time, qa_code, session_id, temperature, salinity, dissolved_oxygen, dissolved_oxygen_pct, ph, turbidity_1, turbidity_2, turbidity_3)   values (12,'2017-3-8','11:00',162,18,26,34.5,7.35,109.4,8.13,1.67,1.67,1.67);
insert into samples (site_id, the_date, the_time, qa_code, session_id, temperature, salinity, dissolved_oxygen, dissolved_oxygen_pct, ph, turbidity_1, turbidity_2, turbidity_3)   values (13,'2017-3-9','07:30',162,18,24.5,34.3,5.97,86.5,8.05,2.23,2.23,2.23);
insert into samples (site_id, the_date, the_time, qa_code, session_id, temperature, salinity, dissolved_oxygen, dissolved_oxygen_pct, ph, turbidity_1, turbidity_2, turbidity_3)   values (14,'2017-3-9','07:50',162,18,25.4,34.5,6.26,92.1,8.09,4.6,4.6,4.6);
insert into samples (site_id, the_date, the_time, qa_code, session_id, temperature, salinity, dissolved_oxygen, dissolved_oxygen_pct, ph, turbidity_1, turbidity_2, turbidity_3)   values (15,'2017-3-9','08:05',162,18,25.4,34.4,5.83,85.8,8.06,2.38,2.38,2.38);
insert into samples (site_id, the_date, the_time, qa_code, session_id, temperature, salinity, dissolved_oxygen, dissolved_oxygen_pct, ph, turbidity_1, turbidity_2, turbidity_3)   values (16,'2017-3-9','08:15',162,18,24.7,34.5,6.76,98.6,8.11,15.43,15.43,15.43);
insert into samples (site_id, the_date, the_time, qa_code, session_id, temperature, salinity, dissolved_oxygen, dissolved_oxygen_pct, ph, turbidity_1, turbidity_2, turbidity_3)   values (17,'2017-3-9','08:30',162,18,25.2,34.9,6.91,101.2,8.15,9.09,9.09,9.09);
insert into samples (site_id, the_date, the_time, qa_code, session_id, temperature, salinity, dissolved_oxygen, dissolved_oxygen_pct, ph, turbidity_1, turbidity_2, turbidity_3)   values (18,'2017-3-9','08:45',162,18,25.4,34.5,6.78,100.5,8.14,6.89,6.89,6.89);
-- session :  19 session_id auto_increment : 19

-- insert this session
insert into sessions (lab_id, session_number, first_sample_day) values (1, 19, '2017-3-28');
insert into samples (site_id, the_date, the_time, qa_code, session_id, temperature, salinity, dissolved_oxygen, dissolved_oxygen_pct, ph, turbidity_1, turbidity_2, turbidity_3)   values (1,'2017-3-28','07:41',162,19,24.4,34.4,6.75,97.6,8.11,0.84,0.84,0.84);
insert into samples (site_id, the_date, the_time, qa_code, session_id, temperature, salinity, dissolved_oxygen, dissolved_oxygen_pct, ph, turbidity_1, turbidity_2, turbidity_3)   values (2,'2017-3-28','08:06',162,19,24.4,33.4,6.62,95.1,8.12,3.33,3.33,3.33);
insert into samples (site_id, the_date, the_time, qa_code, session_id, temperature, salinity, dissolved_oxygen, dissolved_oxygen_pct, ph, turbidity_1, turbidity_2, turbidity_3)   values (3,'2017-3-28','08:28',162,19,24.6,34.4,6.62,96.3,8.11,5.24,5.24,5.24);
insert into samples (site_id, the_date, the_time, qa_code, session_id, temperature, salinity, dissolved_oxygen, dissolved_oxygen_pct, ph, turbidity_1, turbidity_2, turbidity_3)   values (4,'2017-3-28','08:43',162,19,25.4,34,6.71,98.4,8.18,1.88,1.88,1.88);
insert into samples (site_id, the_date, the_time, qa_code, session_id, temperature, salinity, dissolved_oxygen, dissolved_oxygen_pct, ph, turbidity_1, turbidity_2, turbidity_3)   values (5,'2017-3-28','09:02',162,19,25.6,33.3,6.76,99.1,8.18,2.17,2.17,2.17);
insert into samples (site_id, the_date, the_time, qa_code, session_id, temperature, salinity, dissolved_oxygen, dissolved_oxygen_pct, ph, turbidity_1, turbidity_2, turbidity_3)   values (6,'2017-3-28','09:21',162,19,25.4,32.9,6.77,98.8,8.19,0.63,0.63,0.63);
insert into samples (site_id, the_date, the_time, qa_code, session_id, temperature, salinity, dissolved_oxygen, dissolved_oxygen_pct, ph, turbidity_1, turbidity_2, turbidity_3)   values (7,'2017-3-29','08:21',162,19,25.4,33.1,6.23,90.8,8.07,11.33,11.33,11.33);
insert into samples (site_id, the_date, the_time, qa_code, session_id, temperature, salinity, dissolved_oxygen, dissolved_oxygen_pct, ph, turbidity_1, turbidity_2, turbidity_3)   values (8,'2017-3-29','08:50',162,19,26,33.4,5.72,84.5,8.06,7.19,7.19,7.19);
insert into samples (site_id, the_date, the_time, qa_code, session_id, temperature, salinity, dissolved_oxygen, dissolved_oxygen_pct, ph, turbidity_1, turbidity_2, turbidity_3)   values (9,'2017-3-29','09:10',162,19,26.3,33.1,5.93,87.9,8.07,7.53,7.53,7.53);
insert into samples (site_id, the_date, the_time, qa_code, session_id, temperature, salinity, dissolved_oxygen, dissolved_oxygen_pct, ph, turbidity_1, turbidity_2, turbidity_3)   values (10,'2017-3-29','09:36',162,19,26.2,33.9,6.78,100.8,8.18,2.5,2.5,2.5);
insert into samples (site_id, the_date, the_time, qa_code, session_id, temperature, salinity, dissolved_oxygen, dissolved_oxygen_pct, ph, turbidity_1, turbidity_2, turbidity_3)   values (11,'2017-3-29','10:10',162,19,27.3,34.3,6.7,101.8,8.16,3.99,3.99,3.99);
insert into samples (site_id, the_date, the_time, qa_code, session_id, temperature, salinity, dissolved_oxygen, dissolved_oxygen_pct, ph, turbidity_1, turbidity_2, turbidity_3)   values (12,'2017-3-29','10:36',162,19,26.8,34,6.95,104.5,8.13,2.18,2.18,2.18);
insert into samples (site_id, the_date, the_time, qa_code, session_id, temperature, salinity, dissolved_oxygen, dissolved_oxygen_pct, ph, turbidity_1, turbidity_2, turbidity_3)   values (13,'2017-3-30','07:20',162,19,25,34,6,87.7,8.02,5.6,5.6,5.6);
insert into samples (site_id, the_date, the_time, qa_code, session_id, temperature, salinity, dissolved_oxygen, dissolved_oxygen_pct, ph, turbidity_1, turbidity_2, turbidity_3)   values (14,'2017-3-30','07:42',162,19,26,34.5,6.41,95.3,8.08,7.74,7.74,7.74);
insert into samples (site_id, the_date, the_time, qa_code, session_id, temperature, salinity, dissolved_oxygen, dissolved_oxygen_pct, ph, turbidity_1, turbidity_2, turbidity_3)   values (15,'2017-3-30','08:05',162,19,25.9,34.2,6.27,92.9,8.03,6.34,6.34,6.34);
insert into samples (site_id, the_date, the_time, qa_code, session_id, temperature, salinity, dissolved_oxygen, dissolved_oxygen_pct, ph, turbidity_1, turbidity_2, turbidity_3)   values (16,'2017-3-30','08:30',162,19,25.7,34.3,6.73,99.6,8.11,7.85,7.85,7.85);
insert into samples (site_id, the_date, the_time, qa_code, session_id, temperature, salinity, dissolved_oxygen, dissolved_oxygen_pct, ph, turbidity_1, turbidity_2, turbidity_3)   values (17,'2017-3-30','09:00',162,19,26.2,34.3,6.92,103.2,8.14,5.91,5.91,5.91);
insert into samples (site_id, the_date, the_time, qa_code, session_id, temperature, salinity, dissolved_oxygen, dissolved_oxygen_pct, ph, turbidity_1, turbidity_2, turbidity_3)   values (18,'2017-3-30','09:20',162,19,26.5,34.4,6.79,101.9,8.13,3.96,3.96,3.96);
-- session :  20 session_id auto_increment : 20

-- insert this session
insert into sessions (lab_id, session_number, first_sample_day) values (1, 20, '2017-4-18');
insert into samples (site_id, the_date, the_time, qa_code, session_id, temperature, salinity, dissolved_oxygen, dissolved_oxygen_pct, ph, turbidity_1, turbidity_2, turbidity_3)   values (1,'2017-4-18','07:48',162,20,24.8,34,6.84,99.5,8.15,1,1,1);
insert into samples (site_id, the_date, the_time, qa_code, session_id, temperature, salinity, dissolved_oxygen, dissolved_oxygen_pct, ph, turbidity_1, turbidity_2, turbidity_3)   values (2,'2017-4-18','08:12',162,20,24.8,31.8,6.59,94.6,8.17,3.24,3.24,3.24);
insert into samples (site_id, the_date, the_time, qa_code, session_id, temperature, salinity, dissolved_oxygen, dissolved_oxygen_pct, ph, turbidity_1, turbidity_2, turbidity_3)   values (3,'2017-4-18','08:34',162,20,24.1,24.4,7.26,98.6,8.22,2.59,2.59,2.59);
insert into samples (site_id, the_date, the_time, qa_code, session_id, temperature, salinity, dissolved_oxygen, dissolved_oxygen_pct, ph, turbidity_1, turbidity_2, turbidity_3)   values (4,'2017-4-18','08:53',162,20,26.1,33.5,6.53,96.9,8.16,0.96,0.96,0.96);
insert into samples (site_id, the_date, the_time, qa_code, session_id, temperature, salinity, dissolved_oxygen, dissolved_oxygen_pct, ph, turbidity_1, turbidity_2, turbidity_3)   values (5,'2017-4-18','09:10',162,20,26.1,33.1,6.6,97.7,8.16,1.02,1.02,1.02);
insert into samples (site_id, the_date, the_time, qa_code, session_id, temperature, salinity, dissolved_oxygen, dissolved_oxygen_pct, ph, turbidity_1, turbidity_2, turbidity_3)   values (6,'2017-4-18','09:26',162,20,25.9,33,6.57,96.8,8.18,0.92,0.92,0.92);
insert into samples (site_id, the_date, the_time, qa_code, session_id, temperature, salinity, dissolved_oxygen, dissolved_oxygen_pct, ph, turbidity_1, turbidity_2, turbidity_3)   values (7,'2017-4-19','08:18',162,20,25.8,32.7,6.44,94.7,8.12,2.18,2.18,2.18);
insert into samples (site_id, the_date, the_time, qa_code, session_id, temperature, salinity, dissolved_oxygen, dissolved_oxygen_pct, ph, turbidity_1, turbidity_2, turbidity_3)   values (8,'2017-4-19','08:45',162,20,25.9,33.7,6.43,95.3,8.11,9.15,9.15,9.15);
insert into samples (site_id, the_date, the_time, qa_code, session_id, temperature, salinity, dissolved_oxygen, dissolved_oxygen_pct, ph, turbidity_1, turbidity_2, turbidity_3)   values (9,'2017-4-19','09:06',162,20,26.2,33,6.24,92.6,8.1,11.37,11.37,11.37);
insert into samples (site_id, the_date, the_time, qa_code, session_id, temperature, salinity, dissolved_oxygen, dissolved_oxygen_pct, ph, turbidity_1, turbidity_2, turbidity_3)   values (10,'2017-4-19','09:30',162,20,26.1,34.1,6.63,99,8.18,1.64,1.64,1.64);
insert into samples (site_id, the_date, the_time, qa_code, session_id, temperature, salinity, dissolved_oxygen, dissolved_oxygen_pct, ph, turbidity_1, turbidity_2, turbidity_3)   values (11,'2017-4-19','10:00',162,20,26.7,34.4,6.74,101.8,8.18,2.53,2.53,2.53);
insert into samples (site_id, the_date, the_time, qa_code, session_id, temperature, salinity, dissolved_oxygen, dissolved_oxygen_pct, ph, turbidity_1, turbidity_2, turbidity_3)   values (12,'2017-4-19','10:25',162,20,27,34.3,6.97,105.7,8.15,1.5,1.5,1.5);
insert into samples (site_id, the_date, the_time, qa_code, session_id, temperature, salinity, dissolved_oxygen, dissolved_oxygen_pct, ph, turbidity_1, turbidity_2, turbidity_3)   values (13,'2017-4-20','07:15',162,20,25.7,33.9,5.82,86.1,8.04,1.61,1.61,1.61);
insert into samples (site_id, the_date, the_time, qa_code, session_id, temperature, salinity, dissolved_oxygen, dissolved_oxygen_pct, ph, turbidity_1, turbidity_2, turbidity_3)   values (14,'2017-4-20','07:30',162,20,27.1,34.3,6.16,93.6,8.09,13.33,13.33,13.33);
insert into samples (site_id, the_date, the_time, qa_code, session_id, temperature, salinity, dissolved_oxygen, dissolved_oxygen_pct, ph, turbidity_1, turbidity_2, turbidity_3)   values (15,'2017-4-20','07:50',162,20,26.3,33.9,6.19,92.5,8.02,12.6,12.6,12.6);
insert into samples (site_id, the_date, the_time, qa_code, session_id, temperature, salinity, dissolved_oxygen, dissolved_oxygen_pct, ph, turbidity_1, turbidity_2, turbidity_3)   values (16,'2017-4-20','08:05',162,20,25.9,34.3,6.54,97.3,8.1,7,7,7);
insert into samples (site_id, the_date, the_time, qa_code, session_id, temperature, salinity, dissolved_oxygen, dissolved_oxygen_pct, ph, turbidity_1, turbidity_2, turbidity_3)   values (17,'2017-4-20','08:20',162,20,26,34.2,6.6,98.1,8.09,4.08,4.08,4.08);
insert into samples (site_id, the_date, the_time, qa_code, session_id, temperature, salinity, dissolved_oxygen, dissolved_oxygen_pct, ph, turbidity_1, turbidity_2, turbidity_3)   values (18,'2017-4-20','08:40',162,20,26.7,34.6,6.5,98.2,8.11,5.31,5.31,5.31);
-- session :  21 session_id auto_increment : 21

-- insert this session
insert into sessions (lab_id, session_number, first_sample_day) values (1, 21, '2017-5-10');
insert into samples (site_id, the_date, the_time, qa_code, session_id, temperature, salinity, dissolved_oxygen, dissolved_oxygen_pct, ph, turbidity_1, turbidity_2, turbidity_3)   values (1,'2017-5-9','07:35',162,21,25.3,33.2,7.2,102.6,8.12,0.75,0.75,0.75);
insert into samples (site_id, the_date, the_time, qa_code, session_id, temperature, salinity, dissolved_oxygen, dissolved_oxygen_pct, ph, turbidity_1, turbidity_2, turbidity_3)   values (2,'2017-5-9','08:00',162,21,25.4,32.3,6.78,98.9,8.16,2.06,2.06,2.06);
insert into samples (site_id, the_date, the_time, qa_code, session_id, temperature, salinity, dissolved_oxygen, dissolved_oxygen_pct, ph, turbidity_1, turbidity_2, turbidity_3)   values (3,'2017-5-9','08:22',162,21,25.5,34,6.88,101.6,8.14,2.59,2.59,2.59);
insert into samples (site_id, the_date, the_time, qa_code, session_id, temperature, salinity, dissolved_oxygen, dissolved_oxygen_pct, ph, turbidity_1, turbidity_2, turbidity_3)   values (4,'2017-5-9','08:45',162,21,26.1,33.6,6.96,103.7,8.2,1.48,1.48,1.48);
insert into samples (site_id, the_date, the_time, qa_code, session_id, temperature, salinity, dissolved_oxygen, dissolved_oxygen_pct, ph, turbidity_1, turbidity_2, turbidity_3)   values (5,'2017-5-9','09:02',162,21,26.2,32.3,6.92,102.2,8.19,2.5,2.5,2.5);
insert into samples (site_id, the_date, the_time, qa_code, session_id, temperature, salinity, dissolved_oxygen, dissolved_oxygen_pct, ph, turbidity_1, turbidity_2, turbidity_3)   values (6,'2017-5-9','09:20',162,21,26,33,6.86,101.5,8.21,0.78,0.78,0.78);
insert into samples (site_id, the_date, the_time, qa_code, session_id, temperature, salinity, dissolved_oxygen, dissolved_oxygen_pct, ph, turbidity_1, turbidity_2, turbidity_3)   values (7,'2017-5-10','08:17',162,21,25.5,34.2,6.46,95.6,8.14,2.24,2.24,2.24);
insert into samples (site_id, the_date, the_time, qa_code, session_id, temperature, salinity, dissolved_oxygen, dissolved_oxygen_pct, ph, turbidity_1, turbidity_2, turbidity_3)   values (8,'2017-5-10','08:40',162,21,25.8,33.9,6.24,92.7,8.14,2,2,2);
insert into samples (site_id, the_date, the_time, qa_code, session_id, temperature, salinity, dissolved_oxygen, dissolved_oxygen_pct, ph, turbidity_1, turbidity_2, turbidity_3)   values (9,'2017-5-10','08:59',162,21,25.9,34.7,6.33,94.4,8.14,1.57,1.57,1.57);
insert into samples (site_id, the_date, the_time, qa_code, session_id, temperature, salinity, dissolved_oxygen, dissolved_oxygen_pct, ph, turbidity_1, turbidity_2, turbidity_3)   values (10,'2017-5-10','09:31',162,21,26.1,34.3,6.91,103.2,8.23,1.67,1.67,1.67);
insert into samples (site_id, the_date, the_time, qa_code, session_id, temperature, salinity, dissolved_oxygen, dissolved_oxygen_pct, ph, turbidity_1, turbidity_2, turbidity_3)   values (11,'2017-5-10','09:53',162,21,26.8,34.6,6.94,105,8.18,2.19,2.19,2.19);
insert into samples (site_id, the_date, the_time, qa_code, session_id, temperature, salinity, dissolved_oxygen, dissolved_oxygen_pct, ph, turbidity_1, turbidity_2, turbidity_3)   values (12,'2017-5-10','10:19',162,21,26.8,34.4,7.23,109.7,8.18,1.74,1.74,1.74);
insert into samples (site_id, the_date, the_time, qa_code, session_id, temperature, salinity, dissolved_oxygen, dissolved_oxygen_pct, ph, turbidity_1, turbidity_2, turbidity_3)   values (13,'2017-5-11','07:21',162,21,24.6,34.2,6.07,88.2,8.06,2.44,2.44,2.44);
insert into samples (site_id, the_date, the_time, qa_code, session_id, temperature, salinity, dissolved_oxygen, dissolved_oxygen_pct, ph, turbidity_1, turbidity_2, turbidity_3)   values (14,'2017-5-11','07:44',162,21,25.1,34.3,6.46,94.8,8.11,1.85,1.85,1.85);
insert into samples (site_id, the_date, the_time, qa_code, session_id, temperature, salinity, dissolved_oxygen, dissolved_oxygen_pct, ph, turbidity_1, turbidity_2, turbidity_3)   values (15,'2017-5-11','08:05',162,21,24.9,33.9,6.47,94.7,8.1,2.22,2.22,2.22);
insert into samples (site_id, the_date, the_time, qa_code, session_id, temperature, salinity, dissolved_oxygen, dissolved_oxygen_pct, ph, turbidity_1, turbidity_2, turbidity_3)   values (16,'2017-5-11','08:24',162,21,25.2,34.6,6.88,101.5,8.16,5.36,5.36,5.36);
insert into samples (site_id, the_date, the_time, qa_code, session_id, temperature, salinity, dissolved_oxygen, dissolved_oxygen_pct, ph, turbidity_1, turbidity_2, turbidity_3)   values (17,'2017-5-11','08:42',162,21,25.3,34.3,7.21,106.3,8.2,5.85,5.85,5.85);
insert into samples (site_id, the_date, the_time, qa_code, session_id, temperature, salinity, dissolved_oxygen, dissolved_oxygen_pct, ph, turbidity_1, turbidity_2, turbidity_3)   values (18,'2017-5-11','09:06',162,21,25.1,34.4,6.98,102.7,8.2,3.51,3.51,3.51);
-- session :  22 session_id auto_increment : 22

-- insert this session
insert into sessions (lab_id, session_number, first_sample_day) values (1, 22, '2017-5-30');
insert into samples (site_id, the_date, the_time, qa_code, session_id, temperature, salinity, dissolved_oxygen, dissolved_oxygen_pct, ph, turbidity_1, turbidity_2, turbidity_3)   values (1,'2017-5-30','07:40',162,22,25.7,33.9,6.92,102.2,8.09,1.07,1.07,1.07);
insert into samples (site_id, the_date, the_time, qa_code, session_id, temperature, salinity, dissolved_oxygen, dissolved_oxygen_pct, ph, turbidity_1, turbidity_2, turbidity_3)   values (2,'2017-5-30','08:06',162,22,26.1,33.1,6.82,100.9,8.13,4.2,4.2,4.2);
insert into samples (site_id, the_date, the_time, qa_code, session_id, temperature, salinity, dissolved_oxygen, dissolved_oxygen_pct, ph, turbidity_1, turbidity_2, turbidity_3)   values (3,'2017-5-30','08:23',162,22,26,34.5,6.83,101.8,8.09,2.8,2.8,2.8);
insert into samples (site_id, the_date, the_time, qa_code, session_id, temperature, salinity, dissolved_oxygen, dissolved_oxygen_pct, ph, turbidity_1, turbidity_2, turbidity_3)   values (4,'2017-5-30','08:47',162,22,26.5,34.3,6.83,102.3,8.16,1.25,1.25,1.25);
insert into samples (site_id, the_date, the_time, qa_code, session_id, temperature, salinity, dissolved_oxygen, dissolved_oxygen_pct, ph, turbidity_1, turbidity_2, turbidity_3)   values (5,'2017-5-30','09:04',162,22,26.4,33.9,6.87,102.9,8.16,5.07,5.07,5.07);
insert into samples (site_id, the_date, the_time, qa_code, session_id, temperature, salinity, dissolved_oxygen, dissolved_oxygen_pct, ph, turbidity_1, turbidity_2, turbidity_3)   values (6,'2017-5-30','09:20',162,22,26.4,33.8,6.78,101.4,8.16,3.1,3.1,3.1);
insert into samples (site_id, the_date, the_time, qa_code, session_id, temperature, salinity, dissolved_oxygen, dissolved_oxygen_pct, ph, turbidity_1, turbidity_2, turbidity_3)   values (7,'2017-5-31','08:12',162,22,26.4,34,6.21,92.8,8.07,3.94,3.94,3.94);
insert into samples (site_id, the_date, the_time, qa_code, session_id, temperature, salinity, dissolved_oxygen, dissolved_oxygen_pct, ph, turbidity_1, turbidity_2, turbidity_3)   values (8,'2017-5-31','08:41',162,22,26.5,34.4,6.32,94.9,8.06,5.14,5.14,5.14);
insert into samples (site_id, the_date, the_time, qa_code, session_id, temperature, salinity, dissolved_oxygen, dissolved_oxygen_pct, ph, turbidity_1, turbidity_2, turbidity_3)   values (9,'2017-5-31','09:02',162,22,26.8,33.7,6.01,90.3,8.05,13.23,13.23,13.23);
insert into samples (site_id, the_date, the_time, qa_code, session_id, temperature, salinity, dissolved_oxygen, dissolved_oxygen_pct, ph, turbidity_1, turbidity_2, turbidity_3)   values (10,'2017-5-31','09:25',162,22,26.9,34.6,6.73,101.8,8.15,3.1,3.1,3.1);
insert into samples (site_id, the_date, the_time, qa_code, session_id, temperature, salinity, dissolved_oxygen, dissolved_oxygen_pct, ph, turbidity_1, turbidity_2, turbidity_3)   values (11,'2017-5-31','09:48',162,22,26.9,34.8,6.8,103.2,8.12,2.59,2.59,2.59);
insert into samples (site_id, the_date, the_time, qa_code, session_id, temperature, salinity, dissolved_oxygen, dissolved_oxygen_pct, ph, turbidity_1, turbidity_2, turbidity_3)   values (12,'2017-5-31','10:10',162,22,27.1,34.7,7.27,110.5,8.1,2.31,2.31,2.31);
insert into samples (site_id, the_date, the_time, qa_code, session_id, temperature, salinity, dissolved_oxygen, dissolved_oxygen_pct, ph, turbidity_1, turbidity_2, turbidity_3)   values (13,'2017-6-1','07:20',162,22,25,34.5,5.8,85.1,8,1.87,1.87,1.87);
insert into samples (site_id, the_date, the_time, qa_code, session_id, temperature, salinity, dissolved_oxygen, dissolved_oxygen_pct, ph, turbidity_1, turbidity_2, turbidity_3)   values (14,'2017-6-1','07:45',162,22,25.8,34.6,6.45,96.1,8.09,5.85,5.85,5.85);
insert into samples (site_id, the_date, the_time, qa_code, session_id, temperature, salinity, dissolved_oxygen, dissolved_oxygen_pct, ph, turbidity_1, turbidity_2, turbidity_3)   values (15,'2017-6-1','08:05',162,22,26,34.7,5.87,87.7,8.06,4.07,4.07,4.07);
insert into samples (site_id, the_date, the_time, qa_code, session_id, temperature, salinity, dissolved_oxygen, dissolved_oxygen_pct, ph, turbidity_1, turbidity_2, turbidity_3)   values (16,'2017-6-1','08:30',162,22,25.8,34.9,6.84,101.8,8.09,7.14,7.14,7.14);
insert into samples (site_id, the_date, the_time, qa_code, session_id, temperature, salinity, dissolved_oxygen, dissolved_oxygen_pct, ph, turbidity_1, turbidity_2, turbidity_3)   values (17,'2017-6-1','08:50',162,22,25.9,34.8,7.01,104.5,8.15,4.42,4.42,4.42);
insert into samples (site_id, the_date, the_time, qa_code, session_id, temperature, salinity, dissolved_oxygen, dissolved_oxygen_pct, ph, turbidity_1, turbidity_2, turbidity_3)   values (18,'2017-6-1','09:10',162,22,25.8,34.7,6.96,103.6,8.16,2.82,2.82,2.82);
-- session :  23 session_id auto_increment : 23

-- insert this session
insert into sessions (lab_id, session_number, first_sample_day) values (1, 23, '2017-6-20');
insert into samples (site_id, the_date, the_time, qa_code, session_id, temperature, salinity, dissolved_oxygen, dissolved_oxygen_pct, ph, turbidity_1, turbidity_2, turbidity_3)   values (1,'2017-6-20','07:41',162,23,26.2,33.6,6.9,102.9,8.1,1.94,1.94,1.94);
insert into samples (site_id, the_date, the_time, qa_code, session_id, temperature, salinity, dissolved_oxygen, dissolved_oxygen_pct, ph, turbidity_1, turbidity_2, turbidity_3)   values (2,'2017-6-20','08:07',162,23,25.7,30.5,6.96,101.1,8.16,7.1,7.1,7.1);
insert into samples (site_id, the_date, the_time, qa_code, session_id, temperature, salinity, dissolved_oxygen, dissolved_oxygen_pct, ph, turbidity_1, turbidity_2, turbidity_3)   values (3,'2017-6-20','08:28',162,23,26.3,34.4,6.7,100.4,8.12,5.17,5.17,5.17);
insert into samples (site_id, the_date, the_time, qa_code, session_id, temperature, salinity, dissolved_oxygen, dissolved_oxygen_pct, ph, turbidity_1, turbidity_2, turbidity_3)   values (4,'2017-6-20','08:46',162,23,26.7,34.2,6.64,100.2,8.17,2.09,2.09,2.09);
insert into samples (site_id, the_date, the_time, qa_code, session_id, temperature, salinity, dissolved_oxygen, dissolved_oxygen_pct, ph, turbidity_1, turbidity_2, turbidity_3)   values (5,'2017-6-20','09:04',162,23,27,34,6.75,102.1,8.16,6.09,6.09,6.09);
insert into samples (site_id, the_date, the_time, qa_code, session_id, temperature, salinity, dissolved_oxygen, dissolved_oxygen_pct, ph, turbidity_1, turbidity_2, turbidity_3)   values (6,'2017-6-20','09:22',162,23,26.9,33.9,6.76,102.2,8.17,4.98,4.98,4.98);
insert into samples (site_id, the_date, the_time, qa_code, session_id, temperature, salinity, dissolved_oxygen, dissolved_oxygen_pct, ph, turbidity_1, turbidity_2, turbidity_3)   values (7,'2017-6-21','08:15',162,23,26.9,33.4,6.47,97.6,8.08,4.88,4.88,4.88);
insert into samples (site_id, the_date, the_time, qa_code, session_id, temperature, salinity, dissolved_oxygen, dissolved_oxygen_pct, ph, turbidity_1, turbidity_2, turbidity_3)   values (8,'2017-6-21','08:43',162,23,26.7,33.9,6.32,95.2,8.08,2.45,2.45,2.45);
insert into samples (site_id, the_date, the_time, qa_code, session_id, temperature, salinity, dissolved_oxygen, dissolved_oxygen_pct, ph, turbidity_1, turbidity_2, turbidity_3)   values (9,'2017-6-21','09:03',162,23,27.3,34.5,6.85,104.6,8.1,2.24,2.24,2.24);
insert into samples (site_id, the_date, the_time, qa_code, session_id, temperature, salinity, dissolved_oxygen, dissolved_oxygen_pct, ph, turbidity_1, turbidity_2, turbidity_3)   values (10,'2017-6-21','09:30',162,23,27.3,34.5,6.69,102.2,8.17,3.96,3.96,3.96);
insert into samples (site_id, the_date, the_time, qa_code, session_id, temperature, salinity, dissolved_oxygen, dissolved_oxygen_pct, ph, turbidity_1, turbidity_2, turbidity_3)   values (11,'2017-6-21','09:50',162,23,27.4,34.5,6.86,104.9,8.2,1.8,1.8,1.8);
insert into samples (site_id, the_date, the_time, qa_code, session_id, temperature, salinity, dissolved_oxygen, dissolved_oxygen_pct, ph, turbidity_1, turbidity_2, turbidity_3)   values (12,'2017-6-21','10:12',162,23,27.6,34.6,6.94,106.5,8.16,3.59,3.59,3.59);
insert into samples (site_id, the_date, the_time, qa_code, session_id, temperature, salinity, dissolved_oxygen, dissolved_oxygen_pct, ph, turbidity_1, turbidity_2, turbidity_3)   values (13,'2017-6-22','07:20',162,23,26.1,34.6,5.82,87.3,8.4,1.43,1.43,1.43);
insert into samples (site_id, the_date, the_time, qa_code, session_id, temperature, salinity, dissolved_oxygen, dissolved_oxygen_pct, ph, turbidity_1, turbidity_2, turbidity_3)   values (14,'2017-6-22','07:45',162,23,26,34.3,6.38,95.5,8.2,15,15,15);
insert into samples (site_id, the_date, the_time, qa_code, session_id, temperature, salinity, dissolved_oxygen, dissolved_oxygen_pct, ph, turbidity_1, turbidity_2, turbidity_3)   values (15,'2017-6-22','08:10',162,23,25.7,33.9,6.2,92.1,8.01,5.01,5.01,5.01);
insert into samples (site_id, the_date, the_time, qa_code, session_id, temperature, salinity, dissolved_oxygen, dissolved_oxygen_pct, ph, turbidity_1, turbidity_2, turbidity_3)   values (16,'2017-6-22','08:30',162,23,26.4,34.6,6.54,98.7,8.12,4.13,4.13,4.13);
insert into samples (site_id, the_date, the_time, qa_code, session_id, temperature, salinity, dissolved_oxygen, dissolved_oxygen_pct, ph, turbidity_1, turbidity_2, turbidity_3)   values (17,'2017-6-22','08:50',162,23,26.1,34.6,6.88,103.2,8.16,2.93,2.93,2.93);
insert into samples (site_id, the_date, the_time, qa_code, session_id, temperature, salinity, dissolved_oxygen, dissolved_oxygen_pct, ph, turbidity_1, turbidity_2, turbidity_3)   values (18,'2017-6-22','09:10',162,23,26.1,34.7,6.75,101.4,8.13,3.83,3.83,3.83);
insert into samples (site_id, the_date, the_time, qa_code, session_id, temperature, salinity, dissolved_oxygen, dissolved_oxygen_pct, ph, turbidity_1, turbidity_2, turbidity_3)   values (19,'2017-6-23','07:25',162,23,25.5,33.3,5.8,85.6,8.08,0.93,0.93,0.93);
insert into samples (site_id, the_date, the_time, qa_code, session_id, temperature, salinity, dissolved_oxygen, dissolved_oxygen_pct, ph, turbidity_1, turbidity_2, turbidity_3)   values (20,'2017-6-23','08:05',162,23,26,32.3,6.56,97.2,8.18,2.18,2.18,2.18);
insert into samples (site_id, the_date, the_time, qa_code, session_id, temperature, salinity, dissolved_oxygen, dissolved_oxygen_pct, ph, turbidity_1, turbidity_2, turbidity_3)   values (21,'2017-6-23','08:40',162,23,26.4,33.8,6.44,96.8,8.13,1.4,1.4,1.4);
insert into samples (site_id, the_date, the_time, qa_code, session_id, temperature, salinity, dissolved_oxygen, dissolved_oxygen_pct, ph, turbidity_1, turbidity_2, turbidity_3)   values (22,'2017-6-23','09:14',162,23,26.7,34.2,6.72,102,8.2,0.43,0.43,0.43);
insert into samples (site_id, the_date, the_time, qa_code, session_id, temperature, salinity, dissolved_oxygen, dissolved_oxygen_pct, ph, turbidity_1, turbidity_2, turbidity_3)   values (23,'2017-6-23','09:50',162,23,26.3,31.7,6.5,96.4,8.08,1.22,1.22,1.22);
insert into samples (site_id, the_date, the_time, qa_code, session_id, temperature, salinity, dissolved_oxygen, dissolved_oxygen_pct, ph, turbidity_1, turbidity_2, turbidity_3)   values (24,'2017-6-23','10:20',162,23,26.7,33.1,6.59,99.2,8.1,8.26,8.26,8.26);
-- session :  24 session_id auto_increment : 24

-- insert this session
insert into sessions (lab_id, session_number, first_sample_day) values (1, 24, '2017-7-11');
insert into samples (site_id, the_date, the_time, qa_code, session_id, temperature, salinity, dissolved_oxygen, dissolved_oxygen_pct, ph, turbidity_1, turbidity_2, turbidity_3)   values (1,'2017-7-11','07:55',162,24,26.6,32.8,6.6,98.6,8.08,0.83,0.83,0.83);
insert into samples (site_id, the_date, the_time, qa_code, session_id, temperature, salinity, dissolved_oxygen, dissolved_oxygen_pct, ph, turbidity_1, turbidity_2, turbidity_3)   values (2,'2017-7-11','08:21',162,24,26.6,32.1,6.18,91.9,8.14,1.15,1.15,1.15);
insert into samples (site_id, the_date, the_time, qa_code, session_id, temperature, salinity, dissolved_oxygen, dissolved_oxygen_pct, ph, turbidity_1, turbidity_2, turbidity_3)   values (3,'2017-7-11','08:43',162,24,26.6,34.1,5.82,86.7,8.07,1.99,1.99,1.99);
insert into samples (site_id, the_date, the_time, qa_code, session_id, temperature, salinity, dissolved_oxygen, dissolved_oxygen_pct, ph, turbidity_1, turbidity_2, turbidity_3)   values (4,'2017-7-11','09:05',162,24,27.4,33.4,6.23,94.6,8.16,0.34,0.34,0.34);
insert into samples (site_id, the_date, the_time, qa_code, session_id, temperature, salinity, dissolved_oxygen, dissolved_oxygen_pct, ph, turbidity_1, turbidity_2, turbidity_3)   values (5,'2017-7-11','09:25',162,24,27.3,33,6.56,99.3,8.17,0.92,0.92,0.92);
insert into samples (site_id, the_date, the_time, qa_code, session_id, temperature, salinity, dissolved_oxygen, dissolved_oxygen_pct, ph, turbidity_1, turbidity_2, turbidity_3)   values (6,'2017-7-11','09:44',162,24,27.3,34.1,6.33,96.3,8.18,0.67,0.67,0.67);
insert into samples (site_id, the_date, the_time, qa_code, session_id, temperature, salinity, dissolved_oxygen, dissolved_oxygen_pct, ph, turbidity_1, turbidity_2, turbidity_3)   values (7,'2017-7-12','08:15',162,24,27.1,34.5,5.66,86.1,8.06,2.14,2.14,2.14);
insert into samples (site_id, the_date, the_time, qa_code, session_id, temperature, salinity, dissolved_oxygen, dissolved_oxygen_pct, ph, turbidity_1, turbidity_2, turbidity_3)   values (8,'2017-7-12','08:35',162,24,27.1,34.1,5.47,82.9,8.06,4.57,4.57,4.57);
insert into samples (site_id, the_date, the_time, qa_code, session_id, temperature, salinity, dissolved_oxygen, dissolved_oxygen_pct, ph, turbidity_1, turbidity_2, turbidity_3)   values (9,'2017-7-12','08:55',162,24,28.2,33.7,5.26,81.1,8.04,6.11,6.11,6.11);
insert into samples (site_id, the_date, the_time, qa_code, session_id, temperature, salinity, dissolved_oxygen, dissolved_oxygen_pct, ph, turbidity_1, turbidity_2, turbidity_3)   values (10,'2017-7-12','09:20',162,24,27.6,34.3,6.5,99.5,8.16,1.14,1.14,1.14);
insert into samples (site_id, the_date, the_time, qa_code, session_id, temperature, salinity, dissolved_oxygen, dissolved_oxygen_pct, ph, turbidity_1, turbidity_2, turbidity_3)   values (11,'2017-7-12','09:40',162,24,27.8,34.5,6.53,100.5,8.11,2.12,2.12,2.12);
insert into samples (site_id, the_date, the_time, qa_code, session_id, temperature, salinity, dissolved_oxygen, dissolved_oxygen_pct, ph, turbidity_1, turbidity_2, turbidity_3)   values (12,'2017-7-12','10:00',162,24,27.8,34.4,6.24,95.9,8.07,1.65,1.65,1.65);
insert into samples (site_id, the_date, the_time, qa_code, session_id, temperature, salinity, dissolved_oxygen, dissolved_oxygen_pct, ph, turbidity_1, turbidity_2, turbidity_3)   values (13,'2017-7-13','07:18',162,24,26.6,34.6,5.22,78.8,8,1.5,1.5,1.5);
insert into samples (site_id, the_date, the_time, qa_code, session_id, temperature, salinity, dissolved_oxygen, dissolved_oxygen_pct, ph, turbidity_1, turbidity_2, turbidity_3)   values (14,'2017-7-13','07:39',162,24,26.9,34.5,6.13,93.1,8.08,2.53,2.53,2.53);
insert into samples (site_id, the_date, the_time, qa_code, session_id, temperature, salinity, dissolved_oxygen, dissolved_oxygen_pct, ph, turbidity_1, turbidity_2, turbidity_3)   values (15,'2017-7-13','07:55',162,24,26.9,34.4,5.77,87.6,8.04,3.77,3.77,3.77);
insert into samples (site_id, the_date, the_time, qa_code, session_id, temperature, salinity, dissolved_oxygen, dissolved_oxygen_pct, ph, turbidity_1, turbidity_2, turbidity_3)   values (16,'2017-7-13','08:14',162,24,27.1,34.4,6.19,94.3,8.09,2.38,2.38,2.38);
insert into samples (site_id, the_date, the_time, qa_code, session_id, temperature, salinity, dissolved_oxygen, dissolved_oxygen_pct, ph, turbidity_1, turbidity_2, turbidity_3)   values (17,'2017-7-13','08:31',162,24,27.3,34.5,6.91,105.5,8.12,5.88,5.88,5.88);
insert into samples (site_id, the_date, the_time, qa_code, session_id, temperature, salinity, dissolved_oxygen, dissolved_oxygen_pct, ph, turbidity_1, turbidity_2, turbidity_3)   values (18,'2017-7-13','08:48',162,24,26.7,34.2,6.63,100.2,8.13,2.26,2.26,2.26);
insert into samples (site_id, the_date, the_time, qa_code, session_id, temperature, salinity, dissolved_oxygen, dissolved_oxygen_pct, ph, turbidity_1, turbidity_2, turbidity_3)   values (19,'2017-7-14','08:00',162,24,26.4,33.8,6.4,96.2,8.13,0.63,0.63,0.63);
insert into samples (site_id, the_date, the_time, qa_code, session_id, temperature, salinity, dissolved_oxygen, dissolved_oxygen_pct, ph, turbidity_1, turbidity_2, turbidity_3)   values (21,'2017-7-14','08:41',162,24,26.5,34.3,6.74,101.3,8.15,1.54,1.54,1.54);
insert into samples (site_id, the_date, the_time, qa_code, session_id, temperature, salinity, dissolved_oxygen, dissolved_oxygen_pct, ph, turbidity_1, turbidity_2, turbidity_3)   values (22,'2017-7-14','09:10',162,24,26.4,34.6,6.73,101.5,8.16,0.89,0.89,0.89);
insert into samples (site_id, the_date, the_time, qa_code, session_id, temperature, salinity, dissolved_oxygen, dissolved_oxygen_pct, ph, turbidity_1, turbidity_2, turbidity_3)   values (23,'2017-7-14','09:32',162,24,27.4,31.4,6.51,97.9,8.08,0.6,0.6,0.6);
insert into samples (site_id, the_date, the_time, qa_code, session_id, temperature, salinity, dissolved_oxygen, dissolved_oxygen_pct, ph, turbidity_1, turbidity_2, turbidity_3)   values (24,'2017-7-14','09:59',162,24,27.3,34.3,5.85,89.4,8.09,1.7,1.7,1.7);
insert into samples (site_id, the_date, the_time, qa_code, session_id, temperature, salinity, dissolved_oxygen, dissolved_oxygen_pct, ph, turbidity_1, turbidity_2, turbidity_3)   values (25,'2017-7-14','10:25',162,24,27.7,33.9,5.31,81.3,8.05,1.83,1.83,1.83);
-- session :  25 session_id auto_increment : 25

-- insert this session
insert into sessions (lab_id, session_number, first_sample_day) values (1, 25, '2017-8-1');
insert into samples (site_id, the_date, the_time, qa_code, session_id, temperature, salinity, dissolved_oxygen, dissolved_oxygen_pct, ph, turbidity_1, turbidity_2, turbidity_3)   values (1,'2017-8-1','08:00',162,25,26.9,32.9,6.75,101.4,8.09,0.74,0.74,0.74);
insert into samples (site_id, the_date, the_time, qa_code, session_id, temperature, salinity, dissolved_oxygen, dissolved_oxygen_pct, ph, turbidity_1, turbidity_2, turbidity_3)   values (2,'2017-8-1','08:28',162,25,26.9,32.6,6.54,98.2,8.16,2.34,2.34,2.34);
insert into samples (site_id, the_date, the_time, qa_code, session_id, temperature, salinity, dissolved_oxygen, dissolved_oxygen_pct, ph, turbidity_1, turbidity_2, turbidity_3)   values (3,'2017-8-1','08:52',162,25,26.9,34.1,5.88,88.9,8.07,3.17,3.17,3.17);
insert into samples (site_id, the_date, the_time, qa_code, session_id, temperature, salinity, dissolved_oxygen, dissolved_oxygen_pct, ph, turbidity_1, turbidity_2, turbidity_3)   values (4,'2017-8-1','09:14',162,25,27.5,34,6.41,98,8.15,0.35,0.35,0.35);
insert into samples (site_id, the_date, the_time, qa_code, session_id, temperature, salinity, dissolved_oxygen, dissolved_oxygen_pct, ph, turbidity_1, turbidity_2, turbidity_3)   values (5,'2017-8-1','09:36',162,25,27.6,33.9,6.67,102,8.18,4.7,4.7,4.7);
insert into samples (site_id, the_date, the_time, qa_code, session_id, temperature, salinity, dissolved_oxygen, dissolved_oxygen_pct, ph, turbidity_1, turbidity_2, turbidity_3)   values (6,'2017-8-1','09:58',162,25,27.6,34.2,6.63,101.5,8.18,0.56,0.56,0.56);
insert into samples (site_id, the_date, the_time, qa_code, session_id, temperature, salinity, dissolved_oxygen, dissolved_oxygen_pct, ph, turbidity_1, turbidity_2, turbidity_3)   values (7,'2017-8-2','08:17',162,25,27.5,34.3,6.09,93.2,8.03,1.24,1.24,1.24);
insert into samples (site_id, the_date, the_time, qa_code, session_id, temperature, salinity, dissolved_oxygen, dissolved_oxygen_pct, ph, turbidity_1, turbidity_2, turbidity_3)   values (8,'2017-8-2','08:40',162,25,27.4,34.3,6.28,96,8.06,6.2,6.2,6.2);
insert into samples (site_id, the_date, the_time, qa_code, session_id, temperature, salinity, dissolved_oxygen, dissolved_oxygen_pct, ph, turbidity_1, turbidity_2, turbidity_3)   values (9,'2017-8-2','09:02',162,25,27.8,33.9,5.99,91.9,8.06,6.45,6.45,6.45);
insert into samples (site_id, the_date, the_time, qa_code, session_id, temperature, salinity, dissolved_oxygen, dissolved_oxygen_pct, ph, turbidity_1, turbidity_2, turbidity_3)   values (10,'2017-8-2','09:26',162,25,28,34.3,6.7,103.6,8.18,1.29,1.29,1.29);
insert into samples (site_id, the_date, the_time, qa_code, session_id, temperature, salinity, dissolved_oxygen, dissolved_oxygen_pct, ph, turbidity_1, turbidity_2, turbidity_3)   values (11,'2017-8-2','09:47',162,25,28.4,34.4,6.75,104.9,8.14,1.76,1.76,1.76);
insert into samples (site_id, the_date, the_time, qa_code, session_id, temperature, salinity, dissolved_oxygen, dissolved_oxygen_pct, ph, turbidity_1, turbidity_2, turbidity_3)   values (12,'2017-8-2','10:10',162,25,28.3,34.6,6.65,103.3,8.03,1.34,1.34,1.34);
insert into samples (site_id, the_date, the_time, qa_code, session_id, temperature, salinity, dissolved_oxygen, dissolved_oxygen_pct, ph, turbidity_1, turbidity_2, turbidity_3)   values (13,'2017-8-3','07:07',162,25,27,34.8,5.22,79.3,7.94,2.29,2.29,2.29);
insert into samples (site_id, the_date, the_time, qa_code, session_id, temperature, salinity, dissolved_oxygen, dissolved_oxygen_pct, ph, turbidity_1, turbidity_2, turbidity_3)   values (14,'2017-8-3','07:38',162,25,27.8,34.4,6.22,95.7,8.04,6.29,6.29,6.29);
insert into samples (site_id, the_date, the_time, qa_code, session_id, temperature, salinity, dissolved_oxygen, dissolved_oxygen_pct, ph, turbidity_1, turbidity_2, turbidity_3)   values (15,'2017-8-3','07:58',162,25,27.8,34.4,5.56,85.6,8.01,3.56,3.56,3.56);
insert into samples (site_id, the_date, the_time, qa_code, session_id, temperature, salinity, dissolved_oxygen, dissolved_oxygen_pct, ph, turbidity_1, turbidity_2, turbidity_3)   values (16,'2017-8-3','08:18',162,25,28.1,34.5,6.4,99.1,8.09,6.97,6.97,6.97);
insert into samples (site_id, the_date, the_time, qa_code, session_id, temperature, salinity, dissolved_oxygen, dissolved_oxygen_pct, ph, turbidity_1, turbidity_2, turbidity_3)   values (17,'2017-8-3','08:40',162,25,28,34.7,6.79,105,8.12,7.58,7.58,7.58);
insert into samples (site_id, the_date, the_time, qa_code, session_id, temperature, salinity, dissolved_oxygen, dissolved_oxygen_pct, ph, turbidity_1, turbidity_2, turbidity_3)   values (18,'2017-8-3','08:57',162,25,28.1,34.2,6.47,99.9,8.1,2.05,2.05,2.05);
insert into samples (site_id, the_date, the_time, qa_code, session_id, temperature, salinity, dissolved_oxygen, dissolved_oxygen_pct, ph, turbidity_1, turbidity_2, turbidity_3)   values (19,'2017-8-4','08:05',162,25,26.7,33.5,5.68,85.2,8.09,1.25,1.25,1.25);
insert into samples (site_id, the_date, the_time, qa_code, session_id, temperature, salinity, dissolved_oxygen, dissolved_oxygen_pct, ph, turbidity_1, turbidity_2, turbidity_3)   values (21,'2017-8-4','08:49',162,25,27.3,34.3,6.7,102,8.17,2.89,2.89,2.89);
insert into samples (site_id, the_date, the_time, qa_code, session_id, temperature, salinity, dissolved_oxygen, dissolved_oxygen_pct, ph, turbidity_1, turbidity_2, turbidity_3)   values (22,'2017-8-4','09:22',162,25,27.2,34.4,6.75,102.7,8.16,0.66,0.66,0.66);
insert into samples (site_id, the_date, the_time, qa_code, session_id, temperature, salinity, dissolved_oxygen, dissolved_oxygen_pct, ph, turbidity_1, turbidity_2, turbidity_3)   values (23,'2017-8-4','09:50',162,25,27.8,33.4,6.49,99.1,8.09,1.03,1.03,1.03);
insert into samples (site_id, the_date, the_time, qa_code, session_id, temperature, salinity, dissolved_oxygen, dissolved_oxygen_pct, ph, turbidity_1, turbidity_2, turbidity_3)   values (24,'2017-8-4','10:25',162,25,27.7,34,6.33,96.8,8.12,4.6,4.6,4.6);
insert into samples (site_id, the_date, the_time, qa_code, session_id, temperature, salinity, dissolved_oxygen, dissolved_oxygen_pct, ph, turbidity_1, turbidity_2, turbidity_3)   values (25,'2017-8-4','10:48',162,25,28.2,34.1,7.08,109.3,8.15,7.57,7.57,7.57);
-- session :  26 session_id auto_increment : 26

-- insert this session
insert into sessions (lab_id, session_number, first_sample_day) values (1, 26, '2017-8-22');
insert into samples (site_id, the_date, the_time, qa_code, session_id, temperature, salinity, dissolved_oxygen, dissolved_oxygen_pct, ph, turbidity_1, turbidity_2, turbidity_3)   values (1,'2017-8-22','07:55',162,26,26.4,33.6,6.61,99,8.04,1.52,1.52,1.52);
insert into samples (site_id, the_date, the_time, qa_code, session_id, temperature, salinity, dissolved_oxygen, dissolved_oxygen_pct, ph, turbidity_1, turbidity_2, turbidity_3)   values (2,'2017-8-22','08:21',162,26,26.6,33.6,6.2,93.1,8.11,1.07,1.07,1.07);
insert into samples (site_id, the_date, the_time, qa_code, session_id, temperature, salinity, dissolved_oxygen, dissolved_oxygen_pct, ph, turbidity_1, turbidity_2, turbidity_3)   values (3,'2017-8-22','08:43',162,26,26.5,31.1,6.42,94.9,8.11,2.93,2.93,2.93);
insert into samples (site_id, the_date, the_time, qa_code, session_id, temperature, salinity, dissolved_oxygen, dissolved_oxygen_pct, ph, turbidity_1, turbidity_2, turbidity_3)   values (4,'2017-8-22','09:03',162,26,27,34.5,6.57,100,8.17,0.41,0.41,0.41);
insert into samples (site_id, the_date, the_time, qa_code, session_id, temperature, salinity, dissolved_oxygen, dissolved_oxygen_pct, ph, turbidity_1, turbidity_2, turbidity_3)   values (5,'2017-8-22','09:22',162,26,27,33.1,6.92,104.4,8.18,5.89,5.89,5.89);
insert into samples (site_id, the_date, the_time, qa_code, session_id, temperature, salinity, dissolved_oxygen, dissolved_oxygen_pct, ph, turbidity_1, turbidity_2, turbidity_3)   values (6,'2017-8-22','09:46',162,26,27.1,34,6.63,100.6,8.17,1.57,1.57,1.57);
insert into samples (site_id, the_date, the_time, qa_code, session_id, temperature, salinity, dissolved_oxygen, dissolved_oxygen_pct, ph, turbidity_1, turbidity_2, turbidity_3)   values (7,'2017-8-23','08:17',162,26,27.1,34.9,6.37,97.3,8.05,2.15,2.15,2.15);
insert into samples (site_id, the_date, the_time, qa_code, session_id, temperature, salinity, dissolved_oxygen, dissolved_oxygen_pct, ph, turbidity_1, turbidity_2, turbidity_3)   values (8,'2017-8-23','08:47',162,26,27.2,34.3,6.43,97.9,8.08,7.56,7.56,7.56);
insert into samples (site_id, the_date, the_time, qa_code, session_id, temperature, salinity, dissolved_oxygen, dissolved_oxygen_pct, ph, turbidity_1, turbidity_2, turbidity_3)   values (9,'2017-8-23','09:10',162,26,27.6,34.2,6.37,97.7,8.07,3.74,3.74,3.74);
insert into samples (site_id, the_date, the_time, qa_code, session_id, temperature, salinity, dissolved_oxygen, dissolved_oxygen_pct, ph, turbidity_1, turbidity_2, turbidity_3)   values (10,'2017-8-23','09:38',162,26,27.4,34.5,6.64,101.6,8.17,5.13,5.13,5.13);
insert into samples (site_id, the_date, the_time, qa_code, session_id, temperature, salinity, dissolved_oxygen, dissolved_oxygen_pct, ph, turbidity_1, turbidity_2, turbidity_3)   values (11,'2017-8-23','10:01',162,26,28.1,35.1,6.63,103.3,8.17,3.78,3.78,3.78);
insert into samples (site_id, the_date, the_time, qa_code, session_id, temperature, salinity, dissolved_oxygen, dissolved_oxygen_pct, ph, turbidity_1, turbidity_2, turbidity_3)   values (12,'2017-8-23','10:25',162,26,27.8,35,7.06,109.2,8.09,1.62,1.62,1.62);
insert into samples (site_id, the_date, the_time, qa_code, session_id, temperature, salinity, dissolved_oxygen, dissolved_oxygen_pct, ph, turbidity_1, turbidity_2, turbidity_3)   values (13,'2017-8-24','07:11',162,26,25.3,35.2,5.95,88.4,8.03,12.23,12.23,12.23);
insert into samples (site_id, the_date, the_time, qa_code, session_id, temperature, salinity, dissolved_oxygen, dissolved_oxygen_pct, ph, turbidity_1, turbidity_2, turbidity_3)   values (14,'2017-8-24','07:50',162,26,25.8,35.3,6.49,97.2,8.07,3.53,3.53,3.53);
insert into samples (site_id, the_date, the_time, qa_code, session_id, temperature, salinity, dissolved_oxygen, dissolved_oxygen_pct, ph, turbidity_1, turbidity_2, turbidity_3)   values (15,'2017-8-24','08:11',162,26,25.9,35.2,6.05,90.7,8.04,4.13,4.13,4.13);
insert into samples (site_id, the_date, the_time, qa_code, session_id, temperature, salinity, dissolved_oxygen, dissolved_oxygen_pct, ph, turbidity_1, turbidity_2, turbidity_3)   values (16,'2017-8-24','08:33',162,26,25.2,35.3,6.33,93.9,8.11,7.12,7.12,7.12);
insert into samples (site_id, the_date, the_time, qa_code, session_id, temperature, salinity, dissolved_oxygen, dissolved_oxygen_pct, ph, turbidity_1, turbidity_2, turbidity_3)   values (17,'2017-8-24','08:55',162,26,25.8,35.2,6.78,101.5,8.13,8.85,8.85,8.85);
insert into samples (site_id, the_date, the_time, qa_code, session_id, temperature, salinity, dissolved_oxygen, dissolved_oxygen_pct, ph, turbidity_1, turbidity_2, turbidity_3)   values (18,'2017-8-24','09:15',162,26,26.1,35,6.58,98.8,8.11,1.59,1.59,1.59);
insert into samples (site_id, the_date, the_time, qa_code, session_id, temperature, salinity, dissolved_oxygen, dissolved_oxygen_pct, ph, turbidity_1, turbidity_2, turbidity_3)   values (19,'2017-8-25','07:53',162,26,25.6,34.6,6.31,93.9,8.12,1.29,1.29,1.29);
insert into samples (site_id, the_date, the_time, qa_code, session_id, temperature, salinity, dissolved_oxygen, dissolved_oxygen_pct, ph, turbidity_1, turbidity_2, turbidity_3)   values (21,'2017-8-25','08:34',162,26,26.3,34.9,6.6,99.5,8.12,1.18,1.18,1.18);
insert into samples (site_id, the_date, the_time, qa_code, session_id, temperature, salinity, dissolved_oxygen, dissolved_oxygen_pct, ph, turbidity_1, turbidity_2, turbidity_3)   values (22,'2017-8-25','09:15',162,26,26.5,35.2,6.72,102.1,8.17,1.26,1.26,1.26);
insert into samples (site_id, the_date, the_time, qa_code, session_id, temperature, salinity, dissolved_oxygen, dissolved_oxygen_pct, ph, turbidity_1, turbidity_2, turbidity_3)   values (23,'2017-8-25','09:38',162,26,27,33.6,6.56,99.4,8.09,1.28,1.28,1.28);
insert into samples (site_id, the_date, the_time, qa_code, session_id, temperature, salinity, dissolved_oxygen, dissolved_oxygen_pct, ph, turbidity_1, turbidity_2, turbidity_3)   values (24,'2017-8-25','10:10',162,26,26.9,34.9,6.09,92.8,8.09,3.29,3.29,3.29);
insert into samples (site_id, the_date, the_time, qa_code, session_id, temperature, salinity, dissolved_oxygen, dissolved_oxygen_pct, ph, turbidity_1, turbidity_2, turbidity_3)   values (25,'2017-8-25','10:30',162,26,26.8,34.5,6.29,95.4,8.07,6.98,6.98,6.98);
-- session :  27 session_id auto_increment : 27

-- insert this session
insert into sessions (lab_id, session_number, first_sample_day) values (1, 27, '2017-9-12');
insert into samples (site_id, the_date, the_time, qa_code, session_id, temperature, salinity, dissolved_oxygen, dissolved_oxygen_pct, ph, turbidity_1, turbidity_2, turbidity_3)   values (1,'2017-9-12','07:56',162,27,27.1,34.4,6.31,96.5,8.08,1.2,1.2,1.2);
insert into samples (site_id, the_date, the_time, qa_code, session_id, temperature, salinity, dissolved_oxygen, dissolved_oxygen_pct, ph, turbidity_1, turbidity_2, turbidity_3)   values (2,'2017-9-12','08:22',162,27,27.5,34.3,6.32,96.9,8.13,6.88,6.88,6.88);
insert into samples (site_id, the_date, the_time, qa_code, session_id, temperature, salinity, dissolved_oxygen, dissolved_oxygen_pct, ph, turbidity_1, turbidity_2, turbidity_3)   values (3,'2017-9-12','08:42',162,27,27.4,34.5,6.07,93,8.08,6.49,6.49,6.49);
insert into samples (site_id, the_date, the_time, qa_code, session_id, temperature, salinity, dissolved_oxygen, dissolved_oxygen_pct, ph, turbidity_1, turbidity_2, turbidity_3)   values (4,'2017-9-12','09:02',162,27,28.1,34.5,6.38,98.8,8.15,0.53,0.53,0.53);
insert into samples (site_id, the_date, the_time, qa_code, session_id, temperature, salinity, dissolved_oxygen, dissolved_oxygen_pct, ph, turbidity_1, turbidity_2, turbidity_3)   values (5,'2017-9-12','09:22',162,27,28,34.7,6.6,102.3,8.18,1.7,1.7,1.7);
insert into samples (site_id, the_date, the_time, qa_code, session_id, temperature, salinity, dissolved_oxygen, dissolved_oxygen_pct, ph, turbidity_1, turbidity_2, turbidity_3)   values (6,'2017-9-12','09:38',162,27,28,34.6,6.51,100.8,8.17,1.25,1.25,1.25);
insert into samples (site_id, the_date, the_time, qa_code, session_id, temperature, salinity, dissolved_oxygen, dissolved_oxygen_pct, ph, turbidity_1, turbidity_2, turbidity_3)   values (7,'2017-9-13','08:11',162,27,28,34.9,6.38,99,8.08,4.2,4.2,4.2);
insert into samples (site_id, the_date, the_time, qa_code, session_id, temperature, salinity, dissolved_oxygen, dissolved_oxygen_pct, ph, turbidity_1, turbidity_2, turbidity_3)   values (8,'2017-9-13','08:43',162,27,27.9,34.5,6.36,99.3,8.11,8.29,8.29,8.29);
insert into samples (site_id, the_date, the_time, qa_code, session_id, temperature, salinity, dissolved_oxygen, dissolved_oxygen_pct, ph, turbidity_1, turbidity_2, turbidity_3)   values (9,'2017-9-13','10:14',162,27,27.7,33.8,6.51,99.9,8.08,19.2,19.2,19.2);
insert into samples (site_id, the_date, the_time, qa_code, session_id, temperature, salinity, dissolved_oxygen, dissolved_oxygen_pct, ph, turbidity_1, turbidity_2, turbidity_3)   values (11,'2017-9-13','09:15',162,27,28,34.9,6.4,99.1,8.11,2.43,2.43,2.43);
insert into samples (site_id, the_date, the_time, qa_code, session_id, temperature, salinity, dissolved_oxygen, dissolved_oxygen_pct, ph, turbidity_1, turbidity_2, turbidity_3)   values (12,'2017-9-13','09:33',162,27,28.3,34.9,6.15,95.9,8.04,1.15,1.15,1.15);
insert into samples (site_id, the_date, the_time, qa_code, session_id, temperature, salinity, dissolved_oxygen, dissolved_oxygen_pct, ph, turbidity_1, turbidity_2, turbidity_3)   values (13,'2017-9-14','07:15',162,27,27.6,34.7,5.16,79.4,7.97,1.3,1.3,1.3);
insert into samples (site_id, the_date, the_time, qa_code, session_id, temperature, salinity, dissolved_oxygen, dissolved_oxygen_pct, ph, turbidity_1, turbidity_2, turbidity_3)   values (14,'2017-9-14','07:37',162,27,28.5,34.7,6.13,95.7,8.02,4.6,4.6,4.6);
insert into samples (site_id, the_date, the_time, qa_code, session_id, temperature, salinity, dissolved_oxygen, dissolved_oxygen_pct, ph, turbidity_1, turbidity_2, turbidity_3)   values (15,'2017-9-14','07:52',162,27,28.5,34.8,5.63,88,7.98,3.94,3.94,3.94);
insert into samples (site_id, the_date, the_time, qa_code, session_id, temperature, salinity, dissolved_oxygen, dissolved_oxygen_pct, ph, turbidity_1, turbidity_2, turbidity_3)   values (16,'2017-9-14','08:07',162,27,28.3,34.9,6.35,98.9,8.08,8.39,8.39,8.39);
insert into samples (site_id, the_date, the_time, qa_code, session_id, temperature, salinity, dissolved_oxygen, dissolved_oxygen_pct, ph, turbidity_1, turbidity_2, turbidity_3)   values (17,'2017-9-14','08:25',162,27,28.4,35,6.61,103.2,8.09,4.9,4.9,4.9);
insert into samples (site_id, the_date, the_time, qa_code, session_id, temperature, salinity, dissolved_oxygen, dissolved_oxygen_pct, ph, turbidity_1, turbidity_2, turbidity_3)   values (18,'2017-9-14','08:40',162,27,28.5,34.3,6.58,102.6,8.07,2.7,2.7,2.7);
insert into samples (site_id, the_date, the_time, qa_code, session_id, temperature, salinity, dissolved_oxygen, dissolved_oxygen_pct, ph, turbidity_1, turbidity_2, turbidity_3)   values (19,'2017-9-15','08:00',162,27,26.9,34.1,5.5,83.4,8.07,6.46,6.46,6.46);
insert into samples (site_id, the_date, the_time, qa_code, session_id, temperature, salinity, dissolved_oxygen, dissolved_oxygen_pct, ph, turbidity_1, turbidity_2, turbidity_3)   values (21,'2017-9-15','08:45',162,27,27.5,34.7,6.61,101.4,8.16,0.96,0.96,0.96);
insert into samples (site_id, the_date, the_time, qa_code, session_id, temperature, salinity, dissolved_oxygen, dissolved_oxygen_pct, ph, turbidity_1, turbidity_2, turbidity_3)   values (22,'2017-9-15','09:20',162,27,27.6,34.8,6.69,103,8.17,0.5,0.5,0.5);
insert into samples (site_id, the_date, the_time, qa_code, session_id, temperature, salinity, dissolved_oxygen, dissolved_oxygen_pct, ph, turbidity_1, turbidity_2, turbidity_3)   values (23,'2017-9-15','09:55',162,27,28.5,34.4,6.73,104.9,8.15,1.49,1.49,1.49);
insert into samples (site_id, the_date, the_time, qa_code, session_id, temperature, salinity, dissolved_oxygen, dissolved_oxygen_pct, ph, turbidity_1, turbidity_2, turbidity_3)   values (24,'2017-9-15','10:27',162,27,28.4,34.5,6.66,103.6,8.14,6.68,6.68,6.68);
insert into samples (site_id, the_date, the_time, qa_code, session_id, temperature, salinity, dissolved_oxygen, dissolved_oxygen_pct, ph, turbidity_1, turbidity_2, turbidity_3)   values (25,'2017-9-15','10:57',162,27,28.3,34.4,6.97,108.3,8.13,10.18,10.18,10.18);
insert into qa_issue_samples ( sample_id, sample_column_name, report_attribute_name, description) values (51, "turbidity_1", "Turbidity", "QA'ed out");
insert into qa_issue_samples ( sample_id, sample_column_name, report_attribute_name, description) values (51, "turbidity_2", "Turbidity", "QA'ed out");
insert into qa_issue_samples ( sample_id, sample_column_name, report_attribute_name, description) values (51, "turbidity_3", "Turbidity", "QA'ed out");
insert into qa_issue_samples ( sample_id, sample_column_name, report_attribute_name, description) values (86, "turbidity_1", "Turbidity", "QA'ed out");
insert into qa_issue_samples ( sample_id, sample_column_name, report_attribute_name, description) values (86, "turbidity_2", "Turbidity", "QA'ed out");
insert into qa_issue_samples ( sample_id, sample_column_name, report_attribute_name, description) values (86, "turbidity_3", "Turbidity", "QA'ed out");
insert into qa_issue_samples ( sample_id, sample_column_name, report_attribute_name, description) values (145, "salinity", "Salinity", "QA'ed out");
insert into qa_issue_samples ( sample_id, sample_column_name, report_attribute_name, description) values (186, "dissolved_oxygen", "DO", "QA'ed out");
insert into qa_issue_samples ( sample_id, sample_column_name, report_attribute_name, description) values (238, "ph", "pH", "QA'ed out");
insert into qa_issue_samples ( sample_id, sample_column_name, report_attribute_name, description) values (239, "ph", "pH", "QA'ed out");
insert into qa_issue_samples ( sample_id, sample_column_name, report_attribute_name, description) values (240, "ph", "pH", "QA'ed out");
insert into qa_issue_samples ( sample_id, sample_column_name, report_attribute_name, description) values (241, "ph", "pH", "QA'ed out");
insert into qa_issue_samples ( sample_id, sample_column_name, report_attribute_name, description) values (242, "ph", "pH", "QA'ed out");
insert into qa_issue_samples ( sample_id, sample_column_name, report_attribute_name, description) values (243, "ph", "pH", "QA'ed out");
insert into qa_issue_samples ( sample_id, sample_column_name, report_attribute_name, description) values (244, "dissolved_oxygen", "DO", "QA'ed out");
insert into qa_issue_samples ( sample_id, sample_column_name, report_attribute_name, description) values (246, "salinity", "Salinity", "QA'ed out");
insert into qa_issue_samples ( sample_id, sample_column_name, report_attribute_name, description) values (247, "salinity", "Salinity", "QA'ed out");
