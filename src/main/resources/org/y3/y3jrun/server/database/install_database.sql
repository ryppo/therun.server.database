CREATE SCHEMA `therun-server` ;

CREATE TABLE `therun-server`.`AgeClassesDefinition` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(100) NULL,
  `importFingerprint` VARCHAR(500) NULL,
  `creationDate` DATETIME NULL,
  `creator` VARCHAR(100) NULL,
  `changeDate` DATETIME NULL,
  `changer` VARCHAR(100) NULL,
  `version` INT NULL,
  PRIMARY KEY (`id`),
  UNIQUE INDEX `eventId_UNIQUE` (`id` ASC));

CREATE TABLE `therun-server`.`AgeClass` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `title` VARCHAR(100) NULL,
  `yearFrom` INT NULL,
  `yearTo` INT NULL,
  `AgeClassDefinition` INT NULL COMMENT 'Belongs to AgeClassDefintion. Foreign key.',
  `importFingerprint` VARCHAR(500) NULL,
  `creationDate` DATETIME NULL,
  `creator` VARCHAR(100) NULL,
  `changeDate` DATETIME NULL,
  `changer` VARCHAR(100) NULL,
  `version` INT NULL,
  PRIMARY KEY (`id`),
  UNIQUE INDEX `id_UNIQUE` (`id` ASC));

CREATE TABLE `therun-server`.`Competition` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `title` VARCHAR(50) NULL,
  `ageClassDefinition` INT NULL COMMENT 'Relates to AgeClassDefinition. Foreign key.',
  `webPage` VARCHAR(500) NULL,
  `registrationPage` VARCHAR(500) NULL,
  `registrationLogFile` VARCHAR(500) NULL,
  `startOfCompetition` DATETIME NULL,
  `endOfCompetition` DATETIME NULL,
  `importFingerprint` VARCHAR(500) NULL,
  `creationDate` DATETIME NULL,
  `creator` VARCHAR(100) NULL,
  `changeDate` DATETIME NULL,
  `changer` VARCHAR(100) NULL,
  `version` INT NULL,
  PRIMARY KEY (`id`),
  UNIQUE INDEX `id_UNIQUE` (`id` ASC));
