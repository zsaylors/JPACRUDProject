-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema memesdb
-- -----------------------------------------------------
DROP SCHEMA IF EXISTS `memesdb` ;

-- -----------------------------------------------------
-- Schema memesdb
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `memesdb` DEFAULT CHARACTER SET utf8 ;
USE `memesdb` ;

-- -----------------------------------------------------
-- Table `memes`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `memes` ;

CREATE TABLE IF NOT EXISTS `memes` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `top_quote` VARCHAR(45) NULL,
  `bottom_quote` VARCHAR(255) NULL,
  `img_url` TEXT(1000) NULL,
  `font_color` SET('#ffffff', '#73c36d', '#c12626', '#60a9ff', '#f478ac', '#d5e83f') NOT NULL DEFAULT '#ffffff',
  `generated_img` TEXT(1000) NULL,
  `generated_data` JSON NULL,
  `animal` SET('dog', 'cat', 'goat', 'giraffe', 'lion', 'headgehog', 'penguin', 'other') NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB;

SET SQL_MODE = '';
DROP USER IF EXISTS groot@localhost;
SET SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';
CREATE USER 'groot'@'localhost' IDENTIFIED BY 'iamgroot';

GRANT SELECT, INSERT, TRIGGER, UPDATE, DELETE ON TABLE * TO 'groot'@'localhost';

SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;

-- -----------------------------------------------------
-- Data for table `memes`
-- -----------------------------------------------------
START TRANSACTION;
USE `memesdb`;
INSERT INTO `memes` (`id`, `top_quote`, `bottom_quote`, `img_url`, `font_color`, `generated_img`, `generated_data`, `animal`) VALUES (1, 'Not Today', 'I\'m tired', NULL, '#ffffff', NULL, NULL, NULL);
INSERT INTO `memes` (`id`, `top_quote`, `bottom_quote`, `img_url`, `font_color`, `generated_img`, `generated_data`, `animal`) VALUES (2, 'cats', 'pushing', 'https://i.ytimg.com/vi/ccK3usCWmTo/maxresdefault.jpg', '#ffffff', NULL, NULL, NULL);

COMMIT;

