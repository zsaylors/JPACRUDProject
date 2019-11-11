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
  `top_quote` VARCHAR(255) NULL,
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
INSERT INTO `memes` (`id`, `top_quote`, `bottom_quote`, `img_url`, `font_color`, `generated_img`, `generated_data`, `animal`) VALUES (1, NULL, NULL, 'https://memeswillsaveus.files.wordpress.com/2016/09/no_frisbee_dog.jpg', '#ffffff', NULL, NULL, 'dog');
INSERT INTO `memes` (`id`, `top_quote`, `bottom_quote`, `img_url`, `font_color`, `generated_img`, `generated_data`, `animal`) VALUES (2, 'IT\'S A', 'GUINEA SAURUS REX!', 'https://i.ytimg.com/vi/yHCBx3_r2-I/hqdefault.jpg', '#60a9ff', NULL, NULL, 'other');
INSERT INTO `memes` (`id`, `top_quote`, `bottom_quote`, `img_url`, `font_color`, `generated_img`, `generated_data`, `animal`) VALUES (3, NULL, NULL, 'https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcS9lQrMXT7m33-EFAcuHxF_hGJsQjiCThFzoljtgcqvuedDtuPy', '#ffffff', NULL, NULL, 'giraffe');
INSERT INTO `memes` (`id`, `top_quote`, `bottom_quote`, `img_url`, `font_color`, `generated_img`, `generated_data`, `animal`) VALUES (4, 'we have the best memes', 'belive me', 'https://cdn.playbuzz.com/cdn//3347d1d6-e96d-4791-870d-3ef8883c810e/bd1ca2d8-29bd-4f63-9d33-5f8c6aba4582.jpg', '#d5e83f', NULL, NULL, 'dog');
INSERT INTO `memes` (`id`, `top_quote`, `bottom_quote`, `img_url`, `font_color`, `generated_img`, `generated_data`, `animal`) VALUES (5, NULL, NULL, 'https://i.ibb.co/q9H3f9y/Photo-on-6-8-19-at-10-07-AM-2.jpg', '#ffffff', NULL, NULL, 'dog');
INSERT INTO `memes` (`id`, `top_quote`, `bottom_quote`, `img_url`, `font_color`, `generated_img`, `generated_data`, `animal`) VALUES (6, 'ayyyyyyyy', 'lmao', 'https://i.kym-cdn.com/entries/icons/mobile/000/014/178/AyyyLmao.jpg', '#ffffff', NULL, NULL, 'other');
INSERT INTO `memes` (`id`, `top_quote`, `bottom_quote`, `img_url`, `font_color`, `generated_img`, `generated_data`, `animal`) VALUES (7, 'nope.', 'not today.', 'https://i.pinimg.com/originals/df/3e/47/df3e47ec566db33dbff3ec990b7f9e46.jpg', '#ffffff', NULL, NULL, 'other');
INSERT INTO `memes` (`id`, `top_quote`, `bottom_quote`, `img_url`, `font_color`, `generated_img`, `generated_data`, `animal`) VALUES (8, 'Proof', 'earth is not flat', 'https://i.imgur.com/JP6qdcM.jpg', '#d5e83f', NULL, NULL, 'cat');
INSERT INTO `memes` (`id`, `top_quote`, `bottom_quote`, `img_url`, `font_color`, `generated_img`, `generated_data`, `animal`) VALUES (9, NULL, NULL, 'http://geeeply.com//img/user/gif/4/1/5/3/415342172122408.gif', '#ffffff', NULL, NULL, 'giraffe');
INSERT INTO `memes` (`id`, `top_quote`, `bottom_quote`, `img_url`, `font_color`, `generated_img`, `generated_data`, `animal`) VALUES (10, 'yaaar!', '', 'https://media3.giphy.com/media/3oEduVGyuRGuZXaqys/giphy.gif', '#c12626', NULL, NULL, 'cat');
INSERT INTO `memes` (`id`, `top_quote`, `bottom_quote`, `img_url`, `font_color`, `generated_img`, `generated_data`, `animal`) VALUES (11, 'i belive', 'i can fly', 'https://media.giphy.com/media/FDHDP7DREKSlYtHm43/source.gif', '#f478ac', NULL, NULL, 'dog');
INSERT INTO `memes` (`id`, `top_quote`, `bottom_quote`, `img_url`, `font_color`, `generated_img`, `generated_data`, `animal`) VALUES (12, 'bork', 'bork     bork', 'https://i.ytimg.com/vi/qSTIKkena24/maxresdefault.jpg', '#ffffff', NULL, NULL, 'dog');

COMMIT;

