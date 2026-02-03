-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema mydb
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema mydb
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `mydb` DEFAULT CHARACTER SET utf8 ;
USE `mydb` ;

-- -----------------------------------------------------
-- Table `mydb`.`EMPLOYEE`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`EMPLOYEE` (
  `ID` INT NOT NULL,
  `name` VARCHAR(45) NOT NULL,
  `position` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`ID`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`CUSTOMER`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`CUSTOMER` (
  `ID` INT NOT NULL,
  `name` VARCHAR(45) NOT NULL,
  `phone number` VARCHAR(45) NOT NULL,
  `email` VARCHAR(45) NULL,
  `address` VARCHAR(45) NULL,
  `EMPLOYEE_ID` INT NOT NULL,
  PRIMARY KEY (`ID`),
  INDEX `fk_CUSTOMER_EMPLOYEE1_idx` (`EMPLOYEE_ID` ASC) VISIBLE,
  CONSTRAINT `fk_CUSTOMER_EMPLOYEE1`
    FOREIGN KEY (`EMPLOYEE_ID`)
    REFERENCES `mydb`.`EMPLOYEE` (`ID`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`RENTAL_STATUS`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`RENTAL_STATUS` (
  `id` INT NOT NULL,
  `status_name` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`CAR`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`CAR` (
  `ID` INT NOT NULL,
  `model` VARCHAR(45) NOT NULL,
  `licence_plate` VARCHAR(45) NOT NULL,
  `rate_per_day` VARCHAR(45) NOT NULL,
  `mileage` VARCHAR(45) NOT NULL,
  `color` VARCHAR(45) NULL,
  `RENTAL_STATUS_id` INT NOT NULL,
  PRIMARY KEY (`ID`),
  INDEX `fk_CAR_RENTAL_STATUS1_idx` (`RENTAL_STATUS_id` ASC) VISIBLE,
  CONSTRAINT `fk_CAR_RENTAL_STATUS1`
    FOREIGN KEY (`RENTAL_STATUS_id`)
    REFERENCES `mydb`.`RENTAL_STATUS` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`TRANSACTIONS`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`TRANSACTIONS` (
  `trasnsaction_id` VARCHAR(45) NOT NULL,
  `CUSTOMER_ID` INT NOT NULL,
  `CAR_ID` INT NOT NULL,
  `start_date` DATE NOT NULL,
  `end_date` DATE NOT NULL,
  `totat_cost` DOUBLE NOT NULL,
  `EMPLOYEE_ID` INT NOT NULL,
  PRIMARY KEY (`trasnsaction_id`, `CUSTOMER_ID`, `CAR_ID`),
  INDEX `fk_CUSTOMER_has_CAR_CAR1_idx` (`CAR_ID` ASC) VISIBLE,
  INDEX `fk_CUSTOMER_has_CAR_CUSTOMER_idx` (`CUSTOMER_ID` ASC) VISIBLE,
  INDEX `fk_TRANSACTIONS_EMPLOYEE1_idx` (`EMPLOYEE_ID` ASC) VISIBLE,
  CONSTRAINT `fk_CUSTOMER_has_CAR_CUSTOMER`
    FOREIGN KEY (`CUSTOMER_ID`)
    REFERENCES `mydb`.`CUSTOMER` (`ID`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_CUSTOMER_has_CAR_CAR1`
    FOREIGN KEY (`CAR_ID`)
    REFERENCES `mydb`.`CAR` (`ID`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_TRANSACTIONS_EMPLOYEE1`
    FOREIGN KEY (`EMPLOYEE_ID`)
    REFERENCES `mydb`.`EMPLOYEE` (`ID`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`BRANCH_LOCATION`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`BRANCH_LOCATION` (
  `ID` INT NOT NULL,
  `name` VARCHAR(45) NOT NULL,
  `address` VARCHAR(45) NOT NULL,
  `contact_info` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`ID`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`INVERTORY`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`INVERTORY` (
  `BRANCH_LOCATION_ID` INT NOT NULL,
  `CAR_ID` INT NOT NULL,
  `invertory_ID` INT NOT NULL,
  PRIMARY KEY (`BRANCH_LOCATION_ID`, `CAR_ID`, `invertory_ID`),
  INDEX `fk_BRANCH_LOCATION_has_CAR_CAR1_idx` (`CAR_ID` ASC) VISIBLE,
  INDEX `fk_BRANCH_LOCATION_has_CAR_BRANCH_LOCATION1_idx` (`BRANCH_LOCATION_ID` ASC) VISIBLE,
  CONSTRAINT `fk_BRANCH_LOCATION_has_CAR_BRANCH_LOCATION1`
    FOREIGN KEY (`BRANCH_LOCATION_ID`)
    REFERENCES `mydb`.`BRANCH_LOCATION` (`ID`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_BRANCH_LOCATION_has_CAR_CAR1`
    FOREIGN KEY (`CAR_ID`)
    REFERENCES `mydb`.`CAR` (`ID`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
