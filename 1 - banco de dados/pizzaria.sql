#DROP DATABASE pizzaDB;  #somente execute isto para recriar o banco
CREATE DATABASE pizzaDB;

CREATE TABLE IF NOT EXISTS `pizzaDB`.`Pizza` (
  `id` INT NOT NULL AUTO_INCREMENT ,
  `Nome` VARCHAR(45) NULL ,
  `Preco` DECIMAL(8,2) NULL ,
  PRIMARY KEY (`id`) );

CREATE  TABLE IF NOT EXISTS `pizzaDB`.`Ingrediente` (
  `id` INT NOT NULL AUTO_INCREMENT ,
  `Nome` VARCHAR(45) NULL ,
  PRIMARY KEY (`id`) );

CREATE  TABLE IF NOT EXISTS `pizzaDB`.`Pizza_Ingrediente` (
  `Pizza_id` INT NOT NULL ,
  `Ingrediente_id` INT NOT NULL ,
  PRIMARY KEY (`Pizza_id`, `Ingrediente_id`) ,
  INDEX `fk_Pizza_Ingrediente_Ingrediente1` (`Ingrediente_id` ASC) ,
  INDEX `fk_Pizza_Ingrediente_Pizza` (`Pizza_id` ASC) ,
  CONSTRAINT `fk_Pizza_Ingrediente_Pizza`
    FOREIGN KEY (`Pizza_id` )
    REFERENCES `pizzaDB`.`Pizza` (`id` )
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Pizza_Ingrediente_Ingrediente1`
    FOREIGN KEY (`Ingrediente_id` )
    REFERENCES `pizzaDB`.`Ingrediente` (`id` )
    ON DELETE NO ACTION
    ON UPDATE NO ACTION);


INSERT INTO `pizzaDB`.`Pizza` (`id`, `Nome`, `Preco`) VALUES (1, 'Muçarela', 10);
INSERT INTO `pizzaDB`.`Pizza` (`id`, `Nome`, `Preco`) VALUES (2, 'Portuguesa', 20);
INSERT INTO `pizzaDB`.`Pizza` (`id`, `Nome`, `Preco`) VALUES (3, 'Calabreza', 12);


INSERT INTO `pizzaDB`.`Ingrediente` (`id`, `Nome`) VALUES (1, 'queijo');
INSERT INTO `pizzaDB`.`Ingrediente` (`id`, `Nome`) VALUES (2, 'calabreza');
INSERT INTO `pizzaDB`.`Ingrediente` (`id`, `Nome`) VALUES (3, 'cebola');
INSERT INTO `pizzaDB`.`Ingrediente` (`id`, `Nome`) VALUES (4, 'ovo');
INSERT INTO `pizzaDB`.`Ingrediente` (`id`, `Nome`) VALUES (5, 'azeitona');
INSERT INTO `pizzaDB`.`Ingrediente` (`id`, `Nome`) VALUES (6, 'molho de tomate');

# muçarela
INSERT INTO `pizzaDB`.`Pizza_Ingrediente` (`Pizza_id`, `Ingrediente_id`) VALUES (1, 6);
INSERT INTO `pizzaDB`.`Pizza_Ingrediente` (`Pizza_id`, `Ingrediente_id`) VALUES (1, 1);

# portuguesa
INSERT INTO `pizzaDB`.`Pizza_Ingrediente` (`Pizza_id`, `Ingrediente_id`) VALUES (2, 6);
INSERT INTO `pizzaDB`.`Pizza_Ingrediente` (`Pizza_id`, `Ingrediente_id`) VALUES (2, 3);
INSERT INTO `pizzaDB`.`Pizza_Ingrediente` (`Pizza_id`, `Ingrediente_id`) VALUES (2, 4);
INSERT INTO `pizzaDB`.`Pizza_Ingrediente` (`Pizza_id`, `Ingrediente_id`) VALUES (2, 5);

# calabreza
INSERT INTO `pizzaDB`.`Pizza_Ingrediente` (`Pizza_id`, `Ingrediente_id`) VALUES (3, 6);
INSERT INTO `pizzaDB`.`Pizza_Ingrediente` (`Pizza_id`, `Ingrediente_id`) VALUES (3, 2);
