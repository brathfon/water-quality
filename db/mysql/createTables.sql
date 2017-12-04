SELECT 'Creating database structure' as 'INFO';

use water_quality;


DROP TABLE IF EXISTS
  site_sample_workers,
  site_samples,
  qa_codes,
  sessions,
  sites,
  team_members,
  workers,
  teams,
  labs;

/*!50503 set default_storage_engine = InnoDB */;

CREATE TABLE workers (
  worker_id    INT          NOT NULL AUTO_INCREMENT,
  first_name   VARCHAR(32)  NOT NULL,
  last_name    VARCHAR(32)  NOT NULL,
  initials     VARCHAR(3)   NOT NULL,
  active       BOOL         NOT NULL default 1,
  email        VARCHAR(64)  NULL,
  phone_number VARCHAR(32)  NULL,
  PRIMARY KEY  (worker_id)
);

CREATE TABLE labs (
  lab_id    INT          NOT NULL AUTO_INCREMENT,
  lab_code  VARCHAR(16)  NOT NULL,
  long_name VARCHAR(32)  NOT NULL,
  address   VARCHAR(128) NOT NULL,
  PRIMARY KEY (lab_id),
  UNIQUE KEY (lab_code)
);


CREATE TABLE teams (
  team_id    INT          NOT NULL AUTO_INCREMENT,
  team_code  VARCHAR(16)  NOT NULL,
  long_name  VARCHAR(32)  NOT NULL,
  lab_id     int NOT NULL,
  PRIMARY KEY (team_id),
  UNIQUE KEY (team_code),
  FOREIGN KEY (lab_id) REFERENCES labs (lab_id) ON DELETE CASCADE
);

CREATE TABLE team_members (
  team_id   INT  NOT NULL,
  worker_id INT  NOT NULL,
  PRIMARY KEY (team_id, worker_id),
  FOREIGN KEY (team_id) REFERENCES teams (team_id) ON DELETE CASCADE,
  FOREIGN KEY (worker_id) REFERENCES workers (worker_id) ON DELETE CASCADE
);


CREATE TABLE sites (
  site_id            INT          NOT NULL AUTO_INCREMENT,
  hui_code           INT          NOT NULL,
  hui_abv            CHAR(3)      NOT NULL,
  storet_code        CHAR(6)      NULL,
  long_name          VARCHAR(32)  NOT NULL,
  lab_id             INT          NOT NULL,
  team_id            INT          NOT NULL,
  default_sample_day INT          NOT NULL,
  lat                FLOAT        NULL,
  lon                FLOAT        NULL,
  description        VARCHAR(256) NULL,
  PRIMARY KEY (site_id),
  UNIQUE KEY  (hui_code),
  UNIQUE KEY  (hui_abv),
  UNIQUE KEY  (storet_code),
  FOREIGN KEY (lab_id) REFERENCES labs (lab_id) ON DELETE RESTRICT ON UPDATE CASCADE,
  FOREIGN KEY (team_id) REFERENCES teams (team_id) ON DELETE RESTRICT ON UPDATE CASCADE
);
  

CREATE TABLE sessions (
  lab_id             INT          NOT NULL,
  session_number     INT          NOT NULL,
  start_date         DATE         NOT NULL,
  PRIMARY KEY (lab_id, session_number),
  FOREIGN KEY (lab_id) REFERENCES labs (lab_id) ON DELETE RESTRICT ON UPDATE CASCADE
);
  

CREATE TABLE qa_codes (
  qa_code     INT          NOT NULL,
  category    VARCHAR(32)  NOT NULL,
  description VARCHAR(128) NOT NULL,
  action      VARCHAR(16)  NOT NULL,
  PRIMARY KEY (qa_code)
);

CREATE TABLE site_samples (
  site_sample_id          INT          NOT NULL AUTO_INCREMENT,
  site_id                 INT          NOT NULL,
  date_and_time           DATETIME     NOT NULL,
  moon                    INT          NOT NULL,
  qa_code                 INT          NOT NULL,
  lab_id                  INT          NOT NULL,
  session_number          INT          NOT NULL,
  -- insitu measurements
  temperature             FLOAT        NULL,
  salinity                FLOAT        NULL,
  dissolved_oxygen        FLOAT        NULL,
  dissolved_oxygen_pct    FLOAT        NULL,
  ph                      FLOAT        NULL,
  turbidity_1             FLOAT        NULL,
  turbidity_2             FLOAT        NULL,
  turbidity_3             FLOAT        NULL,
  comments                VARCHAR(256) NULL,
  PRIMARY KEY (site_sample_id),
  UNIQUE KEY (site_id, date_and_time),
  FOREIGN KEY (lab_id, session_number) REFERENCES sessions (lab_id, session_number) ON DELETE RESTRICT ON UPDATE CASCADE,
  FOREIGN KEY (qa_code) REFERENCES qa_codes (qa_code) ON DELETE RESTRICT ON UPDATE CASCADE
);

CREATE TABLE site_sample_workers (
  site_sample_id INT  NOT NULL,
  worker_id      INT  NOT NULL,
  PRIMARY KEY (site_sample_id, worker_id),
  FOREIGN KEY (site_sample_id) REFERENCES site_samples (site_sample_id) ON DELETE CASCADE,
  FOREIGN KEY (worker_id) REFERENCES workers (worker_id) ON DELETE CASCADE
);

