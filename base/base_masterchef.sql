-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='TRADITIONAL,ALLOW_INVALID_DATES';

-- -----------------------------------------------------
-- Schema mydb
-- -----------------------------------------------------
-- -----------------------------------------------------
-- Schema base_masterchef
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema base_masterchef
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `base_masterchef` DEFAULT CHARACTER SET armscii8 ;
USE `base_masterchef` ;

-- -----------------------------------------------------
-- Table `base_masterchef`.`hashtag`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `base_masterchef`.`hashtag` (
  `idHashtag` INT(11) NOT NULL AUTO_INCREMENT,
  `hash` VARCHAR(140) NOT NULL,
  PRIMARY KEY (`idHashtag`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;


-- -----------------------------------------------------
-- Table `base_masterchef`.`participante`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `base_masterchef`.`participante` (
  `idparticipante` INT(11) NOT NULL AUTO_INCREMENT,
  `nome` VARCHAR(50) NOT NULL,
  `username` VARCHAR(30) NOT NULL,
  `jurado` TINYINT(1) NOT NULL,
  `apresentador` TINYINT(1) NOT NULL,
  `candidato` TINYINT(1) NOT NULL,
  PRIMARY KEY (`idparticipante`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;


-- -----------------------------------------------------
-- Table `base_masterchef`.`participante_has_hashtag`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `base_masterchef`.`participante_has_hashtag` (
  `participante_idparticipante` INT(11) NOT NULL,
  `hashtag_idHashtag` INT(11) NOT NULL,
  PRIMARY KEY (`participante_idparticipante`, `hashtag_idHashtag`),
  INDEX `fk_participante_has_hashtag_hashtag1_idx` (`hashtag_idHashtag` ASC),
  INDEX `fk_participante_has_hashtag_participante1_idx` (`participante_idparticipante` ASC),
  CONSTRAINT `fk_participante_has_hashtag_hashtag1`
    FOREIGN KEY (`hashtag_idHashtag`)
    REFERENCES `base_masterchef`.`hashtag` (`idHashtag`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_participante_has_hashtag_participante1`
    FOREIGN KEY (`participante_idparticipante`)
    REFERENCES `base_masterchef`.`participante` (`idparticipante`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;


-- -----------------------------------------------------
-- Table `base_masterchef`.`sentimento`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `base_masterchef`.`sentimento` (
  `idTipo` INT(11) NOT NULL AUTO_INCREMENT,
  `nome` VARCHAR(20) NOT NULL,
  PRIMARY KEY (`idTipo`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;


-- -----------------------------------------------------
-- Table `base_masterchef`.`local`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `base_masterchef`.`local` (
  `idLocal` INT(11) NOT NULL AUTO_INCREMENT,
  `cidade` VARCHAR(100) NULL,
  `estado` VARCHAR(100) NULL,
  `pais` VARCHAR(100) NULL,
  PRIMARY KEY (`idLocal`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `base_masterchef`.`tweet`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `base_masterchef`.`tweet` (
  `idTweet` INT(11) NOT NULL AUTO_INCREMENT,
  `texto` VARCHAR(140) NULL,
  `data` DATETIME NULL,
  `usuario` VARCHAR(50) NULL,
  `idLocal` INT(11) NOT NULL,
  `sentimento_idTipo` INT(11) NOT NULL,
  `retweet` INT(11) NULL,
  `favorito` INT(11) NULL,
  `episodio` VARCHAR(2) NOT NULL,
  PRIMARY KEY (`idTweet`, `sentimento_idTipo`, `idLocal`),
  INDEX `fk_tweet_sentimento1_idx` (`sentimento_idTipo` ASC),
  INDEX `fk_tweet_local1_idx` (`idLocal` ASC),
  CONSTRAINT `fk_tweet_sentimento1`
    FOREIGN KEY (`sentimento_idTipo`)
    REFERENCES `base_masterchef`.`sentimento` (`idTipo`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_tweet_local1`
    FOREIGN KEY (`idLocal`)
    REFERENCES `base_masterchef`.`local` (`idLocal`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;


-- -----------------------------------------------------
-- Table `base_masterchef`.`participante_has_tweet`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `base_masterchef`.`participante_has_tweet` (
  `participante_idparticipante` INT(11) NOT NULL,
  `tweet_idTweet` INT(11) NOT NULL,
  PRIMARY KEY (`participante_idparticipante`, `tweet_idTweet`),
  INDEX `fk_participante_has_tweet_tweet1_idx` (`tweet_idTweet` ASC),
  INDEX `fk_participante_has_tweet_participante1_idx` (`participante_idparticipante` ASC),
  CONSTRAINT `fk_participante_has_tweet_participante1`
    FOREIGN KEY (`participante_idparticipante`)
    REFERENCES `base_masterchef`.`participante` (`idparticipante`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_participante_has_tweet_tweet1`
    FOREIGN KEY (`tweet_idTweet`)
    REFERENCES `base_masterchef`.`tweet` (`idTweet`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;


-- -----------------------------------------------------
-- Table `base_masterchef`.`tweet_has_hashtag`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `base_masterchef`.`tweet_has_hashtag` (
  `tweet_idTweet` INT(11) NOT NULL,
  `hashtag_idHashtag` INT(11) NOT NULL,
  PRIMARY KEY (`tweet_idTweet`, `hashtag_idHashtag`),
  INDEX `fk_tweet_has_hashtag_hashtag1_idx` (`hashtag_idHashtag` ASC),
  INDEX `fk_tweet_has_hashtag_tweet1_idx` (`tweet_idTweet` ASC),
  CONSTRAINT `fk_tweet_has_hashtag_hashtag1`
    FOREIGN KEY (`hashtag_idHashtag`)
    REFERENCES `base_masterchef`.`hashtag` (`idHashtag`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_tweet_has_hashtag_tweet1`
    FOREIGN KEY (`tweet_idTweet`)
    REFERENCES `base_masterchef`.`tweet` (`idTweet`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;

