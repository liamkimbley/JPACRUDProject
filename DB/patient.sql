-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema patientdb
-- -----------------------------------------------------
DROP SCHEMA IF EXISTS `patientdb` ;

-- -----------------------------------------------------
-- Schema patientdb
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `patientdb` DEFAULT CHARACTER SET utf8 ;
USE `patientdb` ;

-- -----------------------------------------------------
-- Table `patient`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `patient` ;

CREATE TABLE IF NOT EXISTS `patient` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `first_name` VARCHAR(45) NULL,
  `last_name` VARCHAR(45) NULL,
  `email` VARCHAR(45) NULL,
  `doctor_last_name` VARCHAR(45) NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB;

SET SQL_MODE = '';
DROP USER IF EXISTS patientuser@localhost;
SET SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';
CREATE USER 'patientuser'@'localhost' IDENTIFIED BY 'patientuser';

GRANT SELECT, INSERT, TRIGGER, UPDATE, DELETE ON TABLE * TO 'patientuser'@'localhost';

SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;

-- -----------------------------------------------------
-- Data for table `patient`
-- -----------------------------------------------------
START TRANSACTION;
USE `patientdb`;
INSERT INTO `patient` (`id`, `first_name`, `last_name`, `email`, `doctor_last_name`) VALUES (1, 'Sabrina', 'Bacon', 'f.bacon@patients.com', 'Dunfey');
INSERT INTO `patient` (`id`, `first_name`, `last_name`, `email`, `doctor_last_name`) VALUES (2, 'Carl', 'Reed', 'carl.reed@patient.com', 'Dunfey');
INSERT INTO `patient` (`id`, `first_name`, `last_name`, `email`, `doctor_last_name`) VALUES (3, 'Grant', 'Hike', NULL, 'Dunfey');
INSERT INTO `patient` (`id`, `first_name`, `last_name`, `email`, `doctor_last_name`) VALUES (4, 'Carl', 'Sherriton', 'carl.sht@patient.com', 'Murray');
INSERT INTO `patient` (`id`, `first_name`, `last_name`, `email`, `doctor_last_name`) VALUES (5, 'Shawna', 'Jordan', NULL, 'Murray');
INSERT INTO `patient` (`id`, `first_name`, `last_name`, `email`, `doctor_last_name`) VALUES (6, 'Paul', 'Pinkerton', NULL, 'Cole');
INSERT INTO `patient` (`id`, `first_name`, `last_name`, `email`, `doctor_last_name`) VALUES (7, 'John', 'Smith', 'john.smith@patient.com', 'Cole');
INSERT INTO `patient` (`id`, `first_name`, `last_name`, `email`, `doctor_last_name`) VALUES (8, 'Jane', 'Doe', 'jdoe@patient.com', 'Cole');
INSERT INTO `patient` (`id`, `first_name`, `last_name`, `email`, `doctor_last_name`) VALUES (9, 'Jake', 'Jar', 'jj@patient.com', 'Murray');
INSERT INTO `patient` (`id`, `first_name`, `last_name`, `email`, `doctor_last_name`) VALUES (10, 'Sam', 'Spade', 'samSpade@patient.com', 'Cole');

COMMIT;

