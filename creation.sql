-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema uni
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema uni
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `uni` DEFAULT CHARACTER SET utf8 ;
USE `uni` ;

-- -----------------------------------------------------
-- Table `uni`.`students`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `uni`.`students` (
  `student_id` INT NOT NULL AUTO_INCREMENT,
  `first_name` VARCHAR(45) NOT NULL,
  `last_name` VARCHAR(45) NOT NULL,
  `age` INT NOT NULL,
  PRIMARY KEY (`student_id`),
  UNIQUE INDEX `student_id_UNIQUE` (`student_id` ASC) VISIBLE)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `uni`.`courses`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `uni`.`courses` (
  `course_id` INT NOT NULL AUTO_INCREMENT,
  `course_name` VARCHAR(45) NOT NULL,
  `duration` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`course_id`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `uni`.`enrollments`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `uni`.`enrollments` (
  `students_student_id` INT NOT NULL,
  `courses_course_id` INT NOT NULL,
  `grade` INT NOT NULL,
  `atendence` INT NOT NULL,
  PRIMARY KEY (`students_student_id`, `courses_course_id`),
  INDEX `fk_students_has_courses_courses1_idx` (`courses_course_id` ASC) VISIBLE,
  INDEX `fk_students_has_courses_students_idx` (`students_student_id` ASC) VISIBLE,
  CONSTRAINT `fk_students_has_courses_students`
    FOREIGN KEY (`students_student_id`)
    REFERENCES `uni`.`students` (`student_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_students_has_courses_courses1`
    FOREIGN KEY (`courses_course_id`)
    REFERENCES `uni`.`courses` (`course_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
