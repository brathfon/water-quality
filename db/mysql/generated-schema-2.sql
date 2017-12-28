-- MySQL Script generated by MySQL Workbench
-- Thu Dec 28 09:41:09 2017
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
  `lab_id` INT(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `lab_code` VARCHAR(16) NOT NULL,
  `long_name` VARCHAR(32) NOT NULL,
  `address` VARCHAR(128) NOT NULL,
  PRIMARY KEY (`lab_id`),
  UNIQUE INDEX `lab_code` (`lab_code` ASC),
  UNIQUE INDEX `long_name` (`long_name` ASC),
  INDEX `labs` (`lab_id` ASC, `lab_code` ASC)  COMMENT 'covers the surrogate id and natural lab code')
ENGINE = InnoDB
AUTO_INCREMENT = 1
DEFAULT CHARACTER SET = latin1;

SHOW WARNINGS;

-- -----------------------------------------------------
-- Table `qa_codes`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `qa_codes` (
  `qa_code` INT(11) UNSIGNED NOT NULL,
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
  `session_id` INT(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `lab_id` INT(11) UNSIGNED NOT NULL,
  `session_number` INT(11) NOT NULL,
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
  `team_id` INT(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `team_code` VARCHAR(16) NOT NULL,
  `long_name` VARCHAR(32) NOT NULL,
  `lab_id` INT(11) UNSIGNED NOT NULL,
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
  `site_id` INT(11) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'surrogate',
  `hui_code` INT(11) NOT NULL,
  `hui_abv` CHAR(3) NOT NULL COMMENT 'ex: RAB',
  `storet_code` CHAR(6) NULL DEFAULT NULL,
  `long_name` VARCHAR(32) NOT NULL COMMENT 'ex: Airport Beach',
  `lab_id` INT(11) UNSIGNED NOT NULL,
  `team_id` INT(11) UNSIGNED NOT NULL,
  `default_sample_day` INT(11) NOT NULL COMMENT 'Day in the session that this site is typically sampled.  1st day is calibration verification.',
  `default_session_order` INT NOT NULL COMMENT 'Ordinality of this site in a session.',
  `lat` FLOAT NULL DEFAULT NULL,
  `lon` FLOAT NULL DEFAULT NULL,
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
  `sample_id` INT(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `site_id` INT(11) UNSIGNED NOT NULL,
  `date_and_time` DATETIME NOT NULL,
  `moon` INT(11) NULL,
  `qa_code` INT(11) UNSIGNED NOT NULL DEFAULT 162 COMMENT '162 is awaiting review',
  `session_id` INT(11) UNSIGNED NOT NULL,
  `temperature` FLOAT NULL DEFAULT NULL,
  `salinity` FLOAT NULL DEFAULT NULL,
  `dissolved_oxygen` FLOAT NULL DEFAULT NULL,
  `dissolved_oxygen_pct` FLOAT NULL DEFAULT NULL,
  `ph` FLOAT NULL DEFAULT NULL,
  `turbidity_1` FLOAT NULL DEFAULT NULL,
  `turbidity_2` FLOAT NULL DEFAULT NULL,
  `turbidity_3` FLOAT NULL DEFAULT NULL,
  `comments` VARCHAR(256) NULL DEFAULT NULL,
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
  `worker_id` INT(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `first_name` VARCHAR(32) NOT NULL,
  `last_name` VARCHAR(32) NOT NULL,
  `initials` VARCHAR(3) NOT NULL,
  `active` TINYINT(1) NOT NULL DEFAULT '1',
  `email` VARCHAR(64) NULL DEFAULT NULL,
  `phone_number` VARCHAR(32) NULL DEFAULT NULL,
  PRIMARY KEY (`worker_id`))
ENGINE = InnoDB
AUTO_INCREMENT = 1
DEFAULT CHARACTER SET = latin1;

SHOW WARNINGS;

-- -----------------------------------------------------
-- Table `sample_workers`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `sample_workers` (
  `sample_id` INT(11) UNSIGNED NOT NULL,
  `worker_id` INT(11) UNSIGNED NOT NULL,
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
  `team_id` INT(11) UNSIGNED NOT NULL,
  `worker_id` INT(11) UNSIGNED NOT NULL,
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

SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;