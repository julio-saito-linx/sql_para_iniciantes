DROP DATABASE IF EXISTS pizzaDB;
CREATE DATABASE pizzaDB;

USE pizzaDB;

CREATE TABLE IF NOT EXISTS `Pizza` (
  `id` INT NOT NULL AUTO_INCREMENT ,
  `Nome` VARCHAR(45) NULL ,
  `Preco` DECIMAL(8,2) NULL ,
  PRIMARY KEY (`id`) );

CREATE  TABLE IF NOT EXISTS `Ingrediente` (
  `id` INT NOT NULL AUTO_INCREMENT ,
  `Nome` VARCHAR(45) NULL ,
  PRIMARY KEY (`id`) );

CREATE  TABLE IF NOT EXISTS `Pizza_Ingrediente` (
  `Pizza_id` INT NOT NULL ,
  `Ingrediente_id` INT NOT NULL ,
  PRIMARY KEY (`Pizza_id`, `Ingrediente_id`) ,
  INDEX `fk_Pizza_Ingrediente_Ingrediente1` (`Ingrediente_id` ASC) ,
  INDEX `fk_Pizza_Ingrediente_Pizza` (`Pizza_id` ASC) ,
  CONSTRAINT `fk_Pizza_Ingrediente_Pizza`
    FOREIGN KEY (`Pizza_id` )
    REFERENCES `Pizza` (`id` )
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Pizza_Ingrediente_Ingrediente1`
    FOREIGN KEY (`Ingrediente_id` )
    REFERENCES `Ingrediente` (`id` )
    ON DELETE NO ACTION
    ON UPDATE NO ACTION);


INSERT INTO `Pizza` (`id`, `Nome`, `Preco`) VALUES (1, 'Muçarela', 10);
INSERT INTO `Pizza` (`id`, `Nome`, `Preco`) VALUES (2, 'Portuguesa', 20);
INSERT INTO `Pizza` (`id`, `Nome`, `Preco`) VALUES (3, 'Calabreza', 12);


INSERT INTO `Ingrediente` (`id`, `Nome`) VALUES (1, 'queijo');
INSERT INTO `Ingrediente` (`id`, `Nome`) VALUES (2, 'calabreza');
INSERT INTO `Ingrediente` (`id`, `Nome`) VALUES (3, 'cebola');
INSERT INTO `Ingrediente` (`id`, `Nome`) VALUES (4, 'ovo');
INSERT INTO `Ingrediente` (`id`, `Nome`) VALUES (5, 'azeitona');
INSERT INTO `Ingrediente` (`id`, `Nome`) VALUES (6, 'molho de tomate');

# muçarela
INSERT INTO `Pizza_Ingrediente` (`Pizza_id`, `Ingrediente_id`) VALUES (1, 6);
INSERT INTO `Pizza_Ingrediente` (`Pizza_id`, `Ingrediente_id`) VALUES (1, 1);

# portuguesa
INSERT INTO `Pizza_Ingrediente` (`Pizza_id`, `Ingrediente_id`) VALUES (2, 6);
INSERT INTO `Pizza_Ingrediente` (`Pizza_id`, `Ingrediente_id`) VALUES (2, 3);
INSERT INTO `Pizza_Ingrediente` (`Pizza_id`, `Ingrediente_id`) VALUES (2, 4);
INSERT INTO `Pizza_Ingrediente` (`Pizza_id`, `Ingrediente_id`) VALUES (2, 5);

# calabreza
INSERT INTO `Pizza_Ingrediente` (`Pizza_id`, `Ingrediente_id`) VALUES (3, 6);
INSERT INTO `Pizza_Ingrediente` (`Pizza_id`, `Ingrediente_id`) VALUES (3, 2);
