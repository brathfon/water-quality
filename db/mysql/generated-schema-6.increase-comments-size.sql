-- MySQL Script generated by MySQL Workbench
-- Tue May 15 11:18:30 2018
-- Model: New Model    Version: 1.0
-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='TRADITIONAL,ALLOW_INVALID_DATES';

-- -----------------------------------------------------
-- Schema water_quality
-- -----------------------------------------------------
DROP SCHEMA IF EXISTS `water_quality` ;

-- -----------------------------------------------------
-- Schema water_quality
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `water_quality` DEFAULT CHARACTER SET latin1 ;
SHOW WARNINGS;
USE `water_quality` ;

-- -----------------------------------------------------
-- Table `labs`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `labs` (
  `lab_id` INT UNSIGNED NOT NULL AUTO_INCREMENT,
  `lab_code` VARCHAR(16) NOT NULL,
  `long_name` VARCHAR(32) NOT NULL,
  `short_name` VARCHAR(16) NOT NULL,
  `address` VARCHAR(128) NOT NULL,
  PRIMARY KEY (`lab_id`),
  UNIQUE INDEX `lab_code` (`lab_code` ASC),
  UNIQUE INDEX `long_name` (`long_name` ASC),
  INDEX `labs` (`lab_id` ASC, `lab_code` ASC)  COMMENT 'covers the surrogate id and natural lab code',
  UNIQUE INDEX `short_name_UNIQUE` (`short_name` ASC))
ENGINE = InnoDB
AUTO_INCREMENT = 1
DEFAULT CHARACTER SET = latin1;

SHOW WARNINGS;

-- -----------------------------------------------------
-- Table `qa_codes`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `qa_codes` (
  `qa_code` INT UNSIGNED NOT NULL,
  `category` VARCHAR(32) NOT NULL,
  `description` VARCHAR(128) NOT NULL,
  `action` VARCHAR(16) NOT NULL,
  PRIMARY KEY (`qa_code`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = latin1;

SHOW WARNINGS;

-- -----------------------------------------------------
-- Table `sessions`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `sessions` (
  `session_id` INT UNSIGNED NOT NULL AUTO_INCREMENT,
  `lab_id` INT UNSIGNED NOT NULL,
  `session_number` INT NOT NULL,
  `start_date` DATE NOT NULL,
  PRIMARY KEY (`session_id`),
  UNIQUE INDEX `natural` (`lab_id` ASC, `session_number` ASC),
  UNIQUE INDEX `session` (`session_id` ASC, `lab_id` ASC, `session_number` ASC)  COMMENT 'cover the surrogate key and natural key',
  UNIQUE INDEX `session_date` (`lab_id` ASC, `start_date` ASC)  COMMENT 'No lab should not have two sessions that start on the same date.',
  CONSTRAINT `sessions_ibfk_1`
    FOREIGN KEY (`lab_id`)
    REFERENCES `labs` (`lab_id`)
    ON UPDATE CASCADE)
ENGINE = InnoDB
DEFAULT CHARACTER SET = latin1;

SHOW WARNINGS;

-- -----------------------------------------------------
-- Table `teams`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `teams` (
  `team_id` INT UNSIGNED NOT NULL AUTO_INCREMENT,
  `team_code` VARCHAR(16) NOT NULL,
  `long_name` VARCHAR(32) NOT NULL,
  `lab_id` INT UNSIGNED NOT NULL,
  PRIMARY KEY (`team_id`),
  UNIQUE INDEX `team_code` (`team_code` ASC),
  CONSTRAINT `teams_ibfk_1`
    FOREIGN KEY (`lab_id`)
    REFERENCES `labs` (`lab_id`)
    ON DELETE CASCADE)
ENGINE = InnoDB
AUTO_INCREMENT = 1
DEFAULT CHARACTER SET = latin1;

SHOW WARNINGS;

-- -----------------------------------------------------
-- Table `sites`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `sites` (
  `site_id` INT UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'surrogate',
  `hui_code` INT NOT NULL,
  `hui_abv` CHAR(3) NOT NULL COMMENT 'ex: RAB',
  `storet_code` CHAR(6) NULL DEFAULT NULL,
  `long_name` VARCHAR(32) NOT NULL COMMENT 'ex: Airport Beach',
  `lab_id` INT UNSIGNED NOT NULL,
  `team_id` INT UNSIGNED NOT NULL,
  `default_sample_day` INT NOT NULL COMMENT 'Day in the session that this site is typically sampled.  1st day is calibration verification.',
  `default_session_order` INT NOT NULL COMMENT 'Ordinality of this site in a session.',
  `lat` DOUBLE NOT NULL,
  `lon` DOUBLE NOT NULL,
  `active` TINYINT(1) NOT NULL DEFAULT 1 COMMENT 'Some sites are tested, then removed.',
  `description` VARCHAR(256) NULL DEFAULT NULL,
  PRIMARY KEY (`site_id`),
  UNIQUE INDEX `hui_code` (`hui_code` ASC),
  UNIQUE INDEX `hui_abv` (`hui_abv` ASC),
  UNIQUE INDEX `storet_code` (`storet_code` ASC),
  CONSTRAINT `sites_ibfk_1`
    FOREIGN KEY (`lab_id`)
    REFERENCES `labs` (`lab_id`)
    ON UPDATE CASCADE,
  CONSTRAINT `sites_ibfk_2`
    FOREIGN KEY (`team_id`)
    REFERENCES `teams` (`team_id`)
    ON UPDATE CASCADE)
ENGINE = InnoDB
AUTO_INCREMENT = 1
DEFAULT CHARACTER SET = latin1;

SHOW WARNINGS;

-- -----------------------------------------------------
-- Table `samples`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `samples` (
  `sample_id` INT UNSIGNED NOT NULL AUTO_INCREMENT,
  `site_id` INT UNSIGNED NOT NULL,
  `date_and_time` DATETIME NOT NULL,
  `moon` INT NULL,
  `qa_code` INT UNSIGNED NOT NULL DEFAULT 162 COMMENT '162 is awaiting review',
  `session_id` INT UNSIGNED NOT NULL,
  `temperature` DOUBLE NULL DEFAULT NULL COMMENT 'Units: degrees C',
  `salinity` DOUBLE NULL DEFAULT NULL COMMENT 'Units: ppt (parts per thousand)',
  `dissolved_oxygen` DOUBLE NULL DEFAULT NULL COMMENT 'Units: mg/L (milligrams per liter)',
  `dissolved_oxygen_pct` DOUBLE NULL DEFAULT NULL COMMENT 'This is the dissolved oxygen percent saturation. Units: %',
  `ph` DOUBLE NULL DEFAULT NULL,
  `turbidity_1` DOUBLE NULL DEFAULT NULL COMMENT 'Units: NTU (Nephelometric Turbidity Unit)',
  `turbidity_2` DOUBLE NULL DEFAULT NULL,
  `turbidity_3` DOUBLE NULL DEFAULT NULL,
  `total_nitrogen` DOUBLE NULL DEFAULT NULL COMMENT 'Units: micrograms per liter',
  `total_phosphorus` DOUBLE NULL DEFAULT NULL COMMENT 'Units: micrograms per liter',
  `phosphate` DOUBLE NULL DEFAULT NULL COMMENT 'Units: micrograms per liter',
  `silicate` DOUBLE NULL DEFAULT NULL,
  `nitrates` DOUBLE NULL DEFAULT NULL COMMENT 'Units: micrograms per liter',
  `ammonia` DOUBLE NULL DEFAULT NULL COMMENT 'Units: micrograms per liter',
  `nitrate_last_run_date` DATE NULL DEFAULT NULL,
  `comments` VARCHAR(1024) NULL DEFAULT NULL COMMENT 'Date of the last, or oldest, processing run of the nitrate testing.',
  PRIMARY KEY (`sample_id`),
  UNIQUE INDEX `site_id` (`site_id` ASC, `date_and_time` ASC),
  UNIQUE INDEX `samples` (`sample_id` ASC, `site_id` ASC, `date_and_time` ASC)  COMMENT 'covers surrogate and natural for performance',
  CONSTRAINT `site`
    FOREIGN KEY (`site_id`)
    REFERENCES `sites` (`site_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `qa_code`
    FOREIGN KEY (`qa_code`)
    REFERENCES `qa_codes` (`qa_code`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `session`
    FOREIGN KEY (`session_id`)
    REFERENCES `sessions` (`session_id`)
    ON DELETE CASCADE
    ON UPDATE NO ACTION)
ENGINE = InnoDB
AUTO_INCREMENT = 1
DEFAULT CHARACTER SET = latin1;

SHOW WARNINGS;

-- -----------------------------------------------------
-- Table `workers`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `workers` (
  `worker_id` INT UNSIGNED NOT NULL AUTO_INCREMENT,
  `first_name` VARCHAR(32) NOT NULL,
  `last_name` VARCHAR(32) NOT NULL,
  `initials` VARCHAR(3) NOT NULL,
  `active` TINYINT(1) NOT NULL DEFAULT '1',
  `email` VARCHAR(64) NULL DEFAULT NULL,
  `phone_number` VARCHAR(32) NULL DEFAULT NULL,
  `salt` CHAR(32) NULL DEFAULT NULL COMMENT 'salt and hash are used to generate and check the password',
  `hash` CHAR(128) NULL DEFAULT NULL,
  PRIMARY KEY (`worker_id`),
  UNIQUE INDEX `email_idx` (`email` ASC)  COMMENT 'The email is their user id',
  UNIQUE INDEX `initials_idx` (`initials` ASC)  COMMENT 'just in case first and last name match another user.')
ENGINE = InnoDB
AUTO_INCREMENT = 1
DEFAULT CHARACTER SET = latin1;

SHOW WARNINGS;

-- -----------------------------------------------------
-- Table `sample_workers`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `sample_workers` (
  `sample_id` INT UNSIGNED NOT NULL,
  `worker_id` INT UNSIGNED NOT NULL,
  PRIMARY KEY (`sample_id`, `worker_id`),
  CONSTRAINT `sample_fk`
    FOREIGN KEY (`sample_id`)
    REFERENCES `samples` (`sample_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `worker_fk`
    FOREIGN KEY (`worker_id`)
    REFERENCES `workers` (`worker_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
DEFAULT CHARACTER SET = latin1;

SHOW WARNINGS;

-- -----------------------------------------------------
-- Table `team_members`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `team_members` (
  `team_id` INT UNSIGNED NOT NULL,
  `worker_id` INT UNSIGNED NOT NULL,
  PRIMARY KEY (`team_id`, `worker_id`),
  CONSTRAINT `team_members_ibfk_1`
    FOREIGN KEY (`team_id`)
    REFERENCES `teams` (`team_id`)
    ON DELETE CASCADE,
  CONSTRAINT `team_members_ibfk_2`
    FOREIGN KEY (`worker_id`)
    REFERENCES `workers` (`worker_id`)
    ON DELETE CASCADE)
ENGINE = InnoDB
DEFAULT CHARACTER SET = latin1;

SHOW WARNINGS;

-- -----------------------------------------------------
-- Table `roles`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `roles` (
  `role_id` INT UNSIGNED NOT NULL AUTO_INCREMENT,
  `abrv` VARCHAR(4) NULL COMMENT 'Abbreviation like QA, DE',
  `long_name` VARCHAR(45) NULL COMMENT 'ex: Quality Assurance',
  PRIMARY KEY (`role_id`),
  UNIQUE INDEX `roll_name_UNIQUE` (`long_name` ASC),
  UNIQUE INDEX `abrv_UNIQUE` (`abrv` ASC),
  UNIQUE INDEX `rolls` (`role_id` ASC, `abrv` ASC)  COMMENT 'cover the surrogate key and natural key')
ENGINE = InnoDB;

SHOW WARNINGS;

-- -----------------------------------------------------
-- Table `worker_roles`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `worker_roles` (
  `worker_id` INT UNSIGNED NOT NULL,
  `role_id` INT UNSIGNED NOT NULL,
  UNIQUE INDEX `worker_roles` (`worker_id` ASC, `role_id` ASC),
  CONSTRAINT `worker`
    FOREIGN KEY (`worker_id`)
    REFERENCES `workers` (`worker_id`)
    ON DELETE CASCADE
    ON UPDATE CASCADE,
  CONSTRAINT `role`
    FOREIGN KEY (`role_id`)
    REFERENCES `roles` (`role_id`)
    ON DELETE CASCADE
    ON UPDATE CASCADE)
ENGINE = InnoDB;

SHOW WARNINGS;

-- -----------------------------------------------------
-- Table `qa_issue_samples`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `qa_issue_samples` (
  `qa_issue_sample_id` INT UNSIGNED NOT NULL AUTO_INCREMENT,
  `sample_id` INT UNSIGNED NOT NULL COMMENT 'id of sample that has been called out by QA',
  `sample_column_name` VARCHAR(64) NOT NULL COMMENT 'Name of the column of the samples table that this applies to.',
  `report_attribute_name` VARCHAR(64) NOT NULL COMMENT 'User friendly column/attribute/measuredment name.',
  `description` VARCHAR(256) NOT NULL COMMENT 'Description of why the column/attribute was QAed',
  PRIMARY KEY (`qa_issue_sample_id`),
  UNIQUE INDEX `qa_issue_samples` (`qa_issue_sample_id` ASC, `sample_id` ASC, `sample_column_name` ASC)  COMMENT 'Covers both the surrogate and natural.',
  UNIQUE INDEX `sample_id_column_name` (`sample_id` ASC, `sample_column_name` ASC)  COMMENT 'Natural key.  Each column of each sample should only have entry.',
  CONSTRAINT `sample_id`
    FOREIGN KEY (`sample_id`)
    REFERENCES `samples` (`sample_id`)
    ON DELETE CASCADE
    ON UPDATE CASCADE)
ENGINE = InnoDB;

SHOW WARNINGS;

-- -----------------------------------------------------
-- Table `report_header_names`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `report_header_names` (
  `report_header_name_id` INT UNSIGNED NOT NULL AUTO_INCREMENT,
  `sample_column_name` VARCHAR(64) NOT NULL,
  `report_header_name` VARCHAR(64) NOT NULL,
  PRIMARY KEY (`report_header_name_id`),
  UNIQUE INDEX `sample_column_name_UNIQUE` (`sample_column_name` ASC),
  INDEX `report_header-names_idx` (`sample_column_name` ASC, `report_header_name` ASC)  COMMENT 'cover of surrogate and natural.')
ENGINE = InnoDB;

SHOW WARNINGS;

-- -----------------------------------------------------
-- Table `logs`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `logs` (
  `log_id` INT UNSIGNED NOT NULL AUTO_INCREMENT,
  `when` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `user` VARCHAR(65) NOT NULL COMMENT 'who was logged in and using the app, but may have messages before user logs in.',
  `logging_level` VARCHAR(16) NOT NULL COMMENT 'correspond to bootstrap values: primary, secondary, success, info, warning, danger',
  `title` VARCHAR(64) NOT NULL,
  `json_text` VARCHAR(512) NULL COMMENT 'array of strings to further describe the logged information',
  PRIMARY KEY (`log_id`))
ENGINE = InnoDB;

SHOW WARNINGS;

-- -----------------------------------------------------
-- Table `measurement_precision`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `measurement_precision` (
  `measurement_precision_id` INT UNSIGNED NOT NULL AUTO_INCREMENT,
  `measurement_name` VARCHAR(64) NULL,
  `number_of_decimals` INT NULL,
  PRIMARY KEY (`measurement_precision_id`),
  UNIQUE INDEX `name_idx` (`measurement_name` ASC),
  INDEX `measurement_precision_idx` (`measurement_precision_id` ASC, `measurement_name` ASC)  COMMENT 'cover index')
ENGINE = InnoDB;

SHOW WARNINGS;

SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
