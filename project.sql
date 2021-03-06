-- MySQL Script generated by MySQL Workbench
-- Thu Mar 31 21:33:38 2022
-- Model: New Model    Version: 1.0
-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema mydb
-- -----------------------------------------------------
-- -----------------------------------------------------
-- Schema project
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema project
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `project` DEFAULT CHARACTER SET utf8 ;
-- -----------------------------------------------------
-- Schema project1
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema project1
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `project1` DEFAULT CHARACTER SET utf8 ;
USE `project` ;

-- -----------------------------------------------------
-- Table `project`.`user`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `project`.`user` (
  `username` VARCHAR(50) NOT NULL,
  `password` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`username`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb3;


-- -----------------------------------------------------
-- Table `project`.`profile`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `project`.`profile` (
  `name` VARCHAR(45) NOT NULL,
  `address1` VARCHAR(45) NULL DEFAULT NULL,
  `address2` VARCHAR(45) NULL DEFAULT NULL,
  `city` VARCHAR(45) NULL DEFAULT NULL,
  `zipcode` VARCHAR(45) NULL DEFAULT NULL,
  `state` VARCHAR(45) NULL DEFAULT NULL,
  `user_username` VARCHAR(50) NOT NULL,
  PRIMARY KEY (`user_username`),
  CONSTRAINT `fk_table2_table1`
    FOREIGN KEY (`user_username`)
    REFERENCES `project`.`user` (`username`)
    ON DELETE CASCADE
    ON UPDATE CASCADE)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb3;


-- -----------------------------------------------------
-- Table `project`.`pricing`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `project`.`pricing` (
  `gallons` INT NOT NULL,
  `deliveryDate` DATE NOT NULL,
  `quoteTime` VARCHAR(45) NOT NULL,
  `Price` VARCHAR(45) NOT NULL,
  `profile_user_username` VARCHAR(50) NOT NULL,
  `quoteID` INT(10) GENERATED ALWAYS AS (),
  PRIMARY KEY (`quoteID`),
  UNIQUE INDEX `quoteID_UNIQUE` (`quoteID` ASC) VISIBLE,
  CONSTRAINT `fk_pricing_profile1`
    FOREIGN KEY (`profile_user_username`)
    REFERENCES `project`.`profile` (`user_username`)
    ON DELETE CASCADE
    ON UPDATE CASCADE)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb3;

USE `project1` ;

-- -----------------------------------------------------
-- Table `project1`.`user`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `project1`.`user` (
  `username` VARCHAR(50) NOT NULL,
  `password` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`username`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb3;


-- -----------------------------------------------------
-- Table `project1`.`profile`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `project1`.`profile` (
  `name` VARCHAR(45) NOT NULL,
  `address1` VARCHAR(45) NULL DEFAULT NULL,
  `address2` VARCHAR(45) NULL DEFAULT NULL,
  `city` VARCHAR(45) NULL DEFAULT NULL,
  `zipcode` VARCHAR(45) NULL DEFAULT NULL,
  `state` VARCHAR(45) NULL DEFAULT NULL,
  `user_username` VARCHAR(50) NOT NULL,
  PRIMARY KEY (`user_username`),
  CONSTRAINT `fk_table2_table1`
    FOREIGN KEY (`user_username`)
    REFERENCES `project1`.`user` (`username`)
    ON DELETE CASCADE
    ON UPDATE CASCADE)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb3;


-- -----------------------------------------------------
-- Table `project1`.`pricing`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `project1`.`pricing` (
  `gallons` INT NOT NULL,
  `deliveryDate` DATE NOT NULL,
  `quoteTime` VARCHAR(45) NULL DEFAULT NULL,
  `Price` VARCHAR(45) NOT NULL,
  `profile_user_username` VARCHAR(50) NOT NULL,
  `quoteID` INT NOT NULL,
  PRIMARY KEY (`quoteID`),
  UNIQUE INDEX `quoteID_UNIQUE` (`quoteID` ASC) VISIBLE,
  INDEX `fk_pricing_profile1` (`profile_user_username` ASC) VISIBLE,
  CONSTRAINT `fk_pricing_profile1`
    FOREIGN KEY (`profile_user_username`)
    REFERENCES `project1`.`profile` (`user_username`)
    ON DELETE CASCADE
    ON UPDATE CASCADE)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb3;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
