-- Database is connected
-- initials TF worker_id 1
-- initials MS worker_id 2
-- initials TS worker_id 3
-- initials RB worker_id 4
-- initials CM worker_id 5
-- initials JM worker_id 6
-- initials NW worker_id 7
-- initials DR worker_id 8
-- initials AS worker_id 9
-- initials GB worker_id 10
-- initials BB worker_id 11
-- initials MG worker_id 12
-- initials RN worker_id 13
-- initials LO worker_id 14
-- initials MB worker_id 15
-- initials LH worker_id 16
-- hui_code 2001 site_id 19
-- hui_code 2003 site_id 20
-- hui_code 2004 site_id 21
-- hui_code 2005 site_id 22
-- hui_code 2006 site_id 1
-- hui_code 2008 site_id 23
-- hui_code 2010 site_id 2
-- hui_code 2017 site_id 4
-- hui_code 2020 site_id 5
-- hui_code 2021 site_id 6
-- hui_code 2022 site_id 7
-- hui_code 2023 site_id 8
-- hui_code 2024 site_id 9
-- hui_code 2025 site_id 10
-- hui_code 2027 site_id 12
-- hui_code 2028 site_id 14
-- hui_code 2029 site_id 15
-- hui_code 2032 site_id 16
-- hui_code 2033 site_id 17
-- hui_code 2034 site_id 18
-- hui_code 2071 site_id 3
-- hui_code 2072 site_id 11
-- hui_code 2073 site_id 13
-- hui_code 2074 site_id 24
-- lab_code LLHS lab_id 1
-- lab_code PWS lab_id 2
-- session :  28 session_id auto_increment : 1

use water_quality;


-- insert this session
insert into sessions (lab_id, session_number, start_date) values (1, 28, '2017-10-03');
insert into samples (site_id, date_and_time, moon, qa_code, session_id, temperature, salinity, dissolved_oxygen, dissolved_oxygen_pct, ph, turbidity_1, turbidity_2, turbidity_3)   values (13,'2017-10-05 7:10',15,162,1,26,34.7,5.8,87,8.1,3.05,2.57,2.60);
insert into sample_workers (sample_id, worker_id)   values (1,13);
insert into sample_workers (sample_id, worker_id)   values (1,12);
insert into sample_workers (sample_id, worker_id)   values (1,14);
insert into samples (site_id, date_and_time, moon, qa_code, session_id, temperature, salinity, dissolved_oxygen, dissolved_oxygen_pct, ph, turbidity_1, turbidity_2, turbidity_3)   values (14,'2017-10-05 7:35',15,162,1,26,34.6,6.19,92.6,8.07,6.71,6.81,7.00);
insert into sample_workers (sample_id, worker_id)   values (2,13);
insert into sample_workers (sample_id, worker_id)   values (2,12);
insert into sample_workers (sample_id, worker_id)   values (2,14);
insert into samples (site_id, date_and_time, moon, qa_code, session_id, temperature, salinity, dissolved_oxygen, dissolved_oxygen_pct, ph, turbidity_1, turbidity_2, turbidity_3)   values (15,'2017-10-05 7:52',15,162,1,25.7,34.5,5.99,89.1,8.02,7.95,7.79,7.83);
insert into sample_workers (sample_id, worker_id)   values (3,13);
insert into sample_workers (sample_id, worker_id)   values (3,12);
insert into sample_workers (sample_id, worker_id)   values (3,14);
insert into samples (site_id, date_and_time, moon, qa_code, session_id, temperature, salinity, dissolved_oxygen, dissolved_oxygen_pct, ph, turbidity_1, turbidity_2, turbidity_3)   values (16,'2017-10-05 8:13',15,162,1,25.7,34.6,6.61,98.4,8.12,10.50,10.60,10.10);
insert into sample_workers (sample_id, worker_id)   values (4,13);
insert into sample_workers (sample_id, worker_id)   values (4,12);
insert into sample_workers (sample_id, worker_id)   values (4,14);
insert into samples (site_id, date_and_time, moon, qa_code, session_id, temperature, salinity, dissolved_oxygen, dissolved_oxygen_pct, ph, turbidity_1, turbidity_2, turbidity_3)   values (17,'2017-10-05 8:25',15,162,1,25.9,34.6,6.85,102.2,8.15,7.56,8.04,8.11);
insert into sample_workers (sample_id, worker_id)   values (5,13);
insert into sample_workers (sample_id, worker_id)   values (5,12);
insert into sample_workers (sample_id, worker_id)   values (5,14);
insert into samples (site_id, date_and_time, moon, qa_code, session_id, temperature, salinity, dissolved_oxygen, dissolved_oxygen_pct, ph, turbidity_1, turbidity_2, turbidity_3)   values (18,'2017-10-05 8:38',15,162,1,26.3,34.2,6.71,100.6,8.13,3.64,3.48,3.13);
insert into sample_workers (sample_id, worker_id)   values (6,13);
insert into sample_workers (sample_id, worker_id)   values (6,12);
insert into sample_workers (sample_id, worker_id)   values (6,14);
insert into samples (site_id, date_and_time, moon, qa_code, session_id, temperature, salinity, dissolved_oxygen, dissolved_oxygen_pct, ph, turbidity_1, turbidity_2, turbidity_3)   values (7,'2017-10-04 8:20',14,162,1,27.6,34.0,5.54,84.9,8.04,10.10,10.30,10.60);
insert into sample_workers (sample_id, worker_id)   values (7,6);
insert into sample_workers (sample_id, worker_id)   values (7,4);
insert into sample_workers (sample_id, worker_id)   values (7,15);
insert into samples (site_id, date_and_time, moon, qa_code, session_id, temperature, salinity, dissolved_oxygen, dissolved_oxygen_pct, ph, turbidity_1, turbidity_2, turbidity_3)   values (8,'2017-10-04 8:40',14,162,1,27.8,33.8,5.64,86.7,8.03,4.04,4.14,4.08);
insert into sample_workers (sample_id, worker_id)   values (8,6);
insert into sample_workers (sample_id, worker_id)   values (8,4);
insert into sample_workers (sample_id, worker_id)   values (8,15);
insert into samples (site_id, date_and_time, moon, qa_code, session_id, temperature, salinity, dissolved_oxygen, dissolved_oxygen_pct, ph, turbidity_1, turbidity_2, turbidity_3)   values (9,'2017-10-04 9:00',14,162,1,29.3,33.7,5.67,87.7,8.05,3.29,4.30,4.79);
insert into sample_workers (sample_id, worker_id)   values (9,6);
insert into sample_workers (sample_id, worker_id)   values (9,4);
insert into sample_workers (sample_id, worker_id)   values (9,15);
insert into samples (site_id, date_and_time, moon, qa_code, session_id, temperature, salinity, dissolved_oxygen, dissolved_oxygen_pct, ph, turbidity_1, turbidity_2, turbidity_3)   values (10,'2017-10-04 9:25',14,162,1,28.1,34.5,6.46,100.1,8.18,2.24,2.65,2.42);
insert into sample_workers (sample_id, worker_id)   values (10,6);
insert into sample_workers (sample_id, worker_id)   values (10,4);
insert into sample_workers (sample_id, worker_id)   values (10,15);
insert into samples (site_id, date_and_time, moon, qa_code, session_id, temperature, salinity, dissolved_oxygen, dissolved_oxygen_pct, ph, turbidity_1, turbidity_2, turbidity_3)   values (11,'2017-10-04 9:42',14,162,1,28.4,34.6,6.52,101.4,8.14,1.51,1.94,1.55);
insert into sample_workers (sample_id, worker_id)   values (11,6);
insert into sample_workers (sample_id, worker_id)   values (11,4);
insert into sample_workers (sample_id, worker_id)   values (11,15);
insert into samples (site_id, date_and_time, moon, qa_code, session_id, temperature, salinity, dissolved_oxygen, dissolved_oxygen_pct, ph, turbidity_1, turbidity_2, turbidity_3)   values (12,'2017-10-04 10:10',14,162,1,27.9,34.6,6.81,105.3,8.15,1.02,1.43,1.23);
insert into sample_workers (sample_id, worker_id)   values (12,6);
insert into sample_workers (sample_id, worker_id)   values (12,4);
insert into sample_workers (sample_id, worker_id)   values (12,15);
insert into samples (site_id, date_and_time, moon, qa_code, session_id, temperature, salinity, dissolved_oxygen, dissolved_oxygen_pct, ph, turbidity_1, turbidity_2, turbidity_3)   values (19,'2017-10-06 7:56',17,162,1,25.3,33.7,6.32,93.2,8.10,37.20,37.90,40.50);
insert into sample_workers (sample_id, worker_id)   values (13,11);
insert into sample_workers (sample_id, worker_id)   values (13,9);
insert into sample_workers (sample_id, worker_id)   values (13,16);
insert into samples (site_id, date_and_time, moon, qa_code, session_id, temperature, salinity, dissolved_oxygen, dissolved_oxygen_pct, ph, turbidity_1, turbidity_2, turbidity_3)   values (20,'2017-10-06 8:40',17,162,1,26.4,34.1,6.64,99.9,8.16,2.65,1.82,2.26);
insert into sample_workers (sample_id, worker_id)   values (14,11);
insert into sample_workers (sample_id, worker_id)   values (14,9);
insert into sample_workers (sample_id, worker_id)   values (14,16);
insert into samples (site_id, date_and_time, moon, qa_code, session_id, temperature, salinity, dissolved_oxygen, dissolved_oxygen_pct, ph, turbidity_1, turbidity_2, turbidity_3)   values (21,'2017-10-06 9:15',17,162,1,27.0,34.6,6.60,100.9,8.19,0.65,0.65,0.61);
insert into sample_workers (sample_id, worker_id)   values (15,11);
insert into sample_workers (sample_id, worker_id)   values (15,9);
insert into sample_workers (sample_id, worker_id)   values (15,16);
insert into samples (site_id, date_and_time, moon, qa_code, session_id, temperature, salinity, dissolved_oxygen, dissolved_oxygen_pct, ph, turbidity_1, turbidity_2, turbidity_3)   values (22,'2017-10-06 9:35',17,162,1,26.9,33.4,6.81,103.0,8.16,3.36,2.70,3.04);
insert into sample_workers (sample_id, worker_id)   values (16,11);
insert into sample_workers (sample_id, worker_id)   values (16,9);
insert into sample_workers (sample_id, worker_id)   values (16,16);
insert into samples (site_id, date_and_time, moon, qa_code, session_id, temperature, salinity, dissolved_oxygen, dissolved_oxygen_pct, ph, turbidity_1, turbidity_2, turbidity_3)   values (23,'2017-10-06 9:55',17,162,1,26.4,33.7,6.62,99.5,8.11,14.00,13.60,12.80);
insert into sample_workers (sample_id, worker_id)   values (17,11);
insert into sample_workers (sample_id, worker_id)   values (17,9);
insert into sample_workers (sample_id, worker_id)   values (17,16);
insert into samples (site_id, date_and_time, moon, qa_code, session_id, temperature, salinity, dissolved_oxygen, dissolved_oxygen_pct, ph, turbidity_1, turbidity_2, turbidity_3)   values (24,'2017-10-06 10:15',17,162,1,27.9,34.7,7.24,112.1,8.33,3.94,4.63,4.45);
insert into sample_workers (sample_id, worker_id)   values (18,11);
insert into sample_workers (sample_id, worker_id)   values (18,9);
insert into sample_workers (sample_id, worker_id)   values (18,16);
insert into samples (site_id, date_and_time, moon, qa_code, session_id, temperature, salinity, dissolved_oxygen, dissolved_oxygen_pct, ph, turbidity_1, turbidity_2, turbidity_3)   values (1,'2017-10-03 8:14',14,162,1,27.0,33.7,6.59,101.0,8.14,2.33,2.48,2.51);
insert into sample_workers (sample_id, worker_id)   values (19,1);
insert into sample_workers (sample_id, worker_id)   values (19,2);
insert into sample_workers (sample_id, worker_id)   values (19,3);
insert into samples (site_id, date_and_time, moon, qa_code, session_id, temperature, salinity, dissolved_oxygen, dissolved_oxygen_pct, ph, turbidity_1, turbidity_2, turbidity_3)   values (2,'2017-10-03 8:40',14,162,1,26.8,32.4,6.29,94.6,8.15,3.15,3.46,5.79);
insert into sample_workers (sample_id, worker_id)   values (20,1);
insert into sample_workers (sample_id, worker_id)   values (20,2);
insert into sample_workers (sample_id, worker_id)   values (20,3);
insert into samples (site_id, date_and_time, moon, qa_code, session_id, temperature, salinity, dissolved_oxygen, dissolved_oxygen_pct, ph, turbidity_1, turbidity_2, turbidity_3)   values (3,'2017-10-03 8:58',14,162,1,27.1,34.2,6.41,97.8,8.11,3.05,3.22,3.39);
insert into sample_workers (sample_id, worker_id)   values (21,1);
insert into sample_workers (sample_id, worker_id)   values (21,2);
insert into sample_workers (sample_id, worker_id)   values (21,3);
insert into samples (site_id, date_and_time, moon, qa_code, session_id, temperature, salinity, dissolved_oxygen, dissolved_oxygen_pct, ph, turbidity_1, turbidity_2, turbidity_3)   values (4,'2017-10-03 9:16',14,162,1,27.9,34.0,6.49,100.0,8.19,0.50,0.79,0.67);
insert into sample_workers (sample_id, worker_id)   values (22,1);
insert into sample_workers (sample_id, worker_id)   values (22,2);
insert into sample_workers (sample_id, worker_id)   values (22,3);
insert into samples (site_id, date_and_time, moon, qa_code, session_id, temperature, salinity, dissolved_oxygen, dissolved_oxygen_pct, ph, turbidity_1, turbidity_2, turbidity_3)   values (5,'2017-10-03 9:36',14,162,1,28.0,33.3,6.59,101.3,8.19,5.65,6.58,6.00);
insert into sample_workers (sample_id, worker_id)   values (23,1);
insert into sample_workers (sample_id, worker_id)   values (23,2);
insert into sample_workers (sample_id, worker_id)   values (23,3);
insert into samples (site_id, date_and_time, moon, qa_code, session_id, temperature, salinity, dissolved_oxygen, dissolved_oxygen_pct, ph, turbidity_1, turbidity_2, turbidity_3)   values (6,'2017-10-03 9:52',14,162,1,27.6,33.4,6.52,99.8,8.20,0.50,0.50,0.49);
insert into sample_workers (sample_id, worker_id)   values (24,1);
insert into sample_workers (sample_id, worker_id)   values (24,2);
insert into sample_workers (sample_id, worker_id)   values (24,3);
-- session :  29 session_id auto_increment : 2

use water_quality;


-- insert this session
insert into sessions (lab_id, session_number, start_date) values (1, 29, '2017-10-24');
insert into samples (site_id, date_and_time, moon, qa_code, session_id, temperature, salinity, dissolved_oxygen, dissolved_oxygen_pct, ph, turbidity_1, turbidity_2, turbidity_3)   values (13,'2017-10-26 7:01',6,162,2,26,34.7,5.78,86.6,7.96,6.06,6.52,6.32);
insert into sample_workers (sample_id, worker_id)   values (25,10);
insert into sample_workers (sample_id, worker_id)   values (25,13);
insert into samples (site_id, date_and_time, moon, qa_code, session_id, temperature, salinity, dissolved_oxygen, dissolved_oxygen_pct, ph, turbidity_1, turbidity_2, turbidity_3)   values (14,'2017-10-26 7:31',6,162,2,26.7,34.5,6.25,94.7,8.01,4.72,4.81,4.73);
insert into sample_workers (sample_id, worker_id)   values (26,10);
insert into sample_workers (sample_id, worker_id)   values (26,13);
insert into samples (site_id, date_and_time, moon, qa_code, session_id, temperature, salinity, dissolved_oxygen, dissolved_oxygen_pct, ph, turbidity_1, turbidity_2, turbidity_3)   values (15,'2017-10-26 7:51',6,162,2,26.8,34.5,5.45,82.7,7.96,5.43,5.34,4.99);
insert into sample_workers (sample_id, worker_id)   values (27,10);
insert into sample_workers (sample_id, worker_id)   values (27,13);
insert into samples (site_id, date_and_time, moon, qa_code, session_id, temperature, salinity, dissolved_oxygen, dissolved_oxygen_pct, ph, turbidity_1, turbidity_2, turbidity_3)   values (16,'2017-10-26 8:14',6,162,2,26.8,34.8,6.37,96.9,8.06,10.50,9.99,10.80);
insert into sample_workers (sample_id, worker_id)   values (28,10);
insert into sample_workers (sample_id, worker_id)   values (28,13);
insert into samples (site_id, date_and_time, moon, qa_code, session_id, temperature, salinity, dissolved_oxygen, dissolved_oxygen_pct, ph, turbidity_1, turbidity_2, turbidity_3)   values (17,'2017-10-26 8:40',6,162,2,26.9,34.7,6.47,98.5,8.05,20.00,21.60,21.50);
insert into sample_workers (sample_id, worker_id)   values (29,10);
insert into sample_workers (sample_id, worker_id)   values (29,13);
insert into samples (site_id, date_and_time, moon, qa_code, session_id, temperature, salinity, dissolved_oxygen, dissolved_oxygen_pct, ph, turbidity_1, turbidity_2, turbidity_3)   values (18,'2017-10-26 9:05',6,162,2,27,34.8,6.67,101.8,8.07,4.89,4.96,5.10);
insert into sample_workers (sample_id, worker_id)   values (30,10);
insert into sample_workers (sample_id, worker_id)   values (30,13);
insert into samples (site_id, date_and_time, moon, qa_code, session_id, temperature, salinity, dissolved_oxygen, dissolved_oxygen_pct, ph, turbidity_1, turbidity_2, turbidity_3)   values (7,'2017-10-25 8:22',5,162,2,26.7,34.7,6.58,99.6,8.06,6.63,7.11,8.14);
insert into sample_workers (sample_id, worker_id)   values (31,6);
insert into sample_workers (sample_id, worker_id)   values (31,4);
insert into sample_workers (sample_id, worker_id)   values (31,15);
insert into samples (site_id, date_and_time, moon, qa_code, session_id, temperature, salinity, dissolved_oxygen, dissolved_oxygen_pct, ph, turbidity_1, turbidity_2, turbidity_3)   values (8,'2017-10-25 8:47',5,162,2,26.7,34.1,6.50,98.2,8.07,19.20,19.10,19.40);
insert into sample_workers (sample_id, worker_id)   values (32,6);
insert into sample_workers (sample_id, worker_id)   values (32,4);
insert into sample_workers (sample_id, worker_id)   values (32,15);
insert into samples (site_id, date_and_time, moon, qa_code, session_id, temperature, salinity, dissolved_oxygen, dissolved_oxygen_pct, ph, turbidity_1, turbidity_2, turbidity_3)   values (9,'2017-10-25 9:10',5,162,2,26.8,34.2,6.39,96.7,8.07,15.00,15.90,15.20);
insert into sample_workers (sample_id, worker_id)   values (33,6);
insert into sample_workers (sample_id, worker_id)   values (33,4);
insert into sample_workers (sample_id, worker_id)   values (33,15);
insert into samples (site_id, date_and_time, moon, qa_code, session_id, temperature, salinity, dissolved_oxygen, dissolved_oxygen_pct, ph, turbidity_1, turbidity_2, turbidity_3)   values (10,'2017-10-25 9:35',5,162,2,27.2,34.7,6.65,101.6,8.14,13.00,13.80,13.60);
insert into sample_workers (sample_id, worker_id)   values (34,6);
insert into sample_workers (sample_id, worker_id)   values (34,4);
insert into sample_workers (sample_id, worker_id)   values (34,15);
insert into samples (site_id, date_and_time, moon, qa_code, session_id, temperature, salinity, dissolved_oxygen, dissolved_oxygen_pct, ph, turbidity_1, turbidity_2, turbidity_3)   values (11,'2017-10-25 9:55',5,162,2,27.9,34.4,6.60,100.5,8.09,11.70,11.10,11.30);
insert into sample_workers (sample_id, worker_id)   values (35,6);
insert into sample_workers (sample_id, worker_id)   values (35,4);
insert into sample_workers (sample_id, worker_id)   values (35,15);
insert into samples (site_id, date_and_time, moon, qa_code, session_id, temperature, salinity, dissolved_oxygen, dissolved_oxygen_pct, ph, turbidity_1, turbidity_2, turbidity_3)   values (12,'2017-10-25 10:15',5,162,2,27.1,34.6,6.59,100.5,8.10,1.47,1.63,1.82);
insert into sample_workers (sample_id, worker_id)   values (36,6);
insert into sample_workers (sample_id, worker_id)   values (36,4);
insert into sample_workers (sample_id, worker_id)   values (36,15);
insert into samples (site_id, date_and_time, moon, qa_code, session_id, temperature, salinity, dissolved_oxygen, dissolved_oxygen_pct, ph, turbidity_1, turbidity_2, turbidity_3)   values (19,'2017-10-27 8:05',8,162,2,25.4,33.0,6.58,96.9,8.11,156.00,164.00,158.00);
insert into sample_workers (sample_id, worker_id)   values (37,11);
insert into sample_workers (sample_id, worker_id)   values (37,9);
insert into sample_workers (sample_id, worker_id)   values (37,16);
insert into samples (site_id, date_and_time, moon, qa_code, session_id, temperature, salinity, dissolved_oxygen, dissolved_oxygen_pct, ph, turbidity_1, turbidity_2, turbidity_3)   values (20,'2017-10-27 8:45',8,162,2,26.4,34.8,6.83,103.3,8.17,3.72,3.28,3.43);
insert into sample_workers (sample_id, worker_id)   values (38,11);
insert into sample_workers (sample_id, worker_id)   values (38,9);
insert into sample_workers (sample_id, worker_id)   values (38,16);
insert into samples (site_id, date_and_time, moon, qa_code, session_id, temperature, salinity, dissolved_oxygen, dissolved_oxygen_pct, ph, turbidity_1, turbidity_2, turbidity_3)   values (21,'2017-10-27 9:20',8,162,2,27.0,35.0,6.79,104.1,8.18,1.22,1.28,1.33);
insert into sample_workers (sample_id, worker_id)   values (39,11);
insert into sample_workers (sample_id, worker_id)   values (39,9);
insert into sample_workers (sample_id, worker_id)   values (39,16);
insert into samples (site_id, date_and_time, moon, qa_code, session_id, temperature, salinity, dissolved_oxygen, dissolved_oxygen_pct, ph, turbidity_1, turbidity_2, turbidity_3)   values (22,'2017-10-27 9:53',8,162,2,26.7,34.8,6.99,106.6,8.21,2.91,2.60,2.37);
insert into sample_workers (sample_id, worker_id)   values (40,11);
insert into sample_workers (sample_id, worker_id)   values (40,9);
insert into sample_workers (sample_id, worker_id)   values (40,16);
insert into samples (site_id, date_and_time, moon, qa_code, session_id, temperature, salinity, dissolved_oxygen, dissolved_oxygen_pct, ph, turbidity_1, turbidity_2, turbidity_3)   values (23,'2017-10-27 10:23',8,162,2,25.9,34.3,6.84,102.6,8.13,26.60,27.00,26.10);
insert into sample_workers (sample_id, worker_id)   values (41,11);
insert into sample_workers (sample_id, worker_id)   values (41,9);
insert into sample_workers (sample_id, worker_id)   values (41,16);
insert into samples (site_id, date_and_time, moon, qa_code, session_id, temperature, salinity, dissolved_oxygen, dissolved_oxygen_pct, ph, turbidity_1, turbidity_2, turbidity_3)   values (24,'2017-10-27 10:46',8,162,2,27.4,35.0,6.83,105.1,8.23,11.60,10.80,11.70);
insert into sample_workers (sample_id, worker_id)   values (42,11);
insert into sample_workers (sample_id, worker_id)   values (42,9);
insert into sample_workers (sample_id, worker_id)   values (42,16);
insert into samples (site_id, date_and_time, moon, qa_code, session_id, temperature, salinity, dissolved_oxygen, dissolved_oxygen_pct, ph, turbidity_1, turbidity_2, turbidity_3)   values (1,'2017-10-24 8:24',5,162,2,26.3,33.5,6.31,94.8,8.10,17.50,16.20,16.50);
insert into sample_workers (sample_id, worker_id)   values (43,1);
insert into sample_workers (sample_id, worker_id)   values (43,5);
insert into samples (site_id, date_and_time, moon, qa_code, session_id, temperature, salinity, dissolved_oxygen, dissolved_oxygen_pct, ph, turbidity_1, turbidity_2, turbidity_3)   values (2,'2017-10-24 8:50',5,162,2,26.5,33.3,6.34,96.3,8.15,14.50,15.60,15.30);
insert into sample_workers (sample_id, worker_id)   values (44,1);
insert into sample_workers (sample_id, worker_id)   values (44,5);
insert into samples (site_id, date_and_time, moon, qa_code, session_id, temperature, salinity, dissolved_oxygen, dissolved_oxygen_pct, ph, turbidity_1, turbidity_2, turbidity_3)   values (3,'2017-10-24 9:13',5,162,2,26.7,33.2,6.60,99.5,8.16,5.48,5.43,5.47);
insert into sample_workers (sample_id, worker_id)   values (45,1);
insert into sample_workers (sample_id, worker_id)   values (45,5);
insert into samples (site_id, date_and_time, moon, qa_code, session_id, temperature, salinity, dissolved_oxygen, dissolved_oxygen_pct, ph, turbidity_1, turbidity_2, turbidity_3)   values (4,'2017-10-24 9:35',5,162,2,27.0,33.6,6.57,99.8,8.18,1.81,1.78,1.66);
insert into sample_workers (sample_id, worker_id)   values (46,1);
insert into sample_workers (sample_id, worker_id)   values (46,5);
insert into samples (site_id, date_and_time, moon, qa_code, session_id, temperature, salinity, dissolved_oxygen, dissolved_oxygen_pct, ph, turbidity_1, turbidity_2, turbidity_3)   values (5,'2017-10-24 9:57',5,162,2,26.9,33.2,6.68,101.1,8.17,9.88,9.97,9.81);
insert into sample_workers (sample_id, worker_id)   values (47,1);
insert into sample_workers (sample_id, worker_id)   values (47,5);
insert into samples (site_id, date_and_time, moon, qa_code, session_id, temperature, salinity, dissolved_oxygen, dissolved_oxygen_pct, ph, turbidity_1, turbidity_2, turbidity_3)   values (6,'2017-10-24 10:20',5,162,2,26.9,33.1,6.67,100.9,8.19,6.20,5.87,7.69);
insert into sample_workers (sample_id, worker_id)   values (48,1);
insert into sample_workers (sample_id, worker_id)   values (48,5);
