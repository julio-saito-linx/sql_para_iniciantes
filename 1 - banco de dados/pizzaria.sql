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


INSERT INTO `Ingrediente` (`Nome`) VALUES ('Abacaxi');
INSERT INTO `Ingrediente` (`Nome`) VALUES ('Alho Frito');
INSERT INTO `Ingrediente` (`Nome`) VALUES ('Aspargo');
INSERT INTO `Ingrediente` (`Nome`) VALUES ('Atum');
INSERT INTO `Ingrediente` (`Nome`) VALUES ('Azeitona');
INSERT INTO `Ingrediente` (`Nome`) VALUES ('Bacon');
INSERT INTO `Ingrediente` (`Nome`) VALUES ('Banana');
INSERT INTO `Ingrediente` (`Nome`) VALUES ('Brócolis');
INSERT INTO `Ingrediente` (`Nome`) VALUES ('Calabresa');
INSERT INTO `Ingrediente` (`Nome`) VALUES ('Camarão');
INSERT INTO `Ingrediente` (`Nome`) VALUES ('Canela');
INSERT INTO `Ingrediente` (`Nome`) VALUES ('Carne de Esfiha');
INSERT INTO `Ingrediente` (`Nome`) VALUES ('Catupiri');
INSERT INTO `Ingrediente` (`Nome`) VALUES ('Cebola');
INSERT INTO `Ingrediente` (`Nome`) VALUES ('Cereja');
INSERT INTO `Ingrediente` (`Nome`) VALUES ('Champignon');
INSERT INTO `Ingrediente` (`Nome`) VALUES ('Chocolate ao Leite');
INSERT INTO `Ingrediente` (`Nome`) VALUES ('Chocolate branco');
INSERT INTO `Ingrediente` (`Nome`) VALUES ('Ervilha');
INSERT INTO `Ingrediente` (`Nome`) VALUES ('Figo');
INSERT INTO `Ingrediente` (`Nome`) VALUES ('Frango');
INSERT INTO `Ingrediente` (`Nome`) VALUES ('Frango Desfiado');
INSERT INTO `Ingrediente` (`Nome`) VALUES ('Goiabada');
INSERT INTO `Ingrediente` (`Nome`) VALUES ('Leite Condensado');
INSERT INTO `Ingrediente` (`Nome`) VALUES ('Lombinho Defumado');
INSERT INTO `Ingrediente` (`Nome`) VALUES ('Manjericão');
INSERT INTO `Ingrediente` (`Nome`) VALUES ('Milho');
INSERT INTO `Ingrediente` (`Nome`) VALUES ('Molho de Strogonoff');
INSERT INTO `Ingrediente` (`Nome`) VALUES ('Molho de Tomate');
INSERT INTO `Ingrediente` (`Nome`) VALUES ('Molho de pimenta da casa');
INSERT INTO `Ingrediente` (`Nome`) VALUES ('Mussarela');
INSERT INTO `Ingrediente` (`Nome`) VALUES ('Orégano');
INSERT INTO `Ingrediente` (`Nome`) VALUES ('Ovo Cozido');
INSERT INTO `Ingrediente` (`Nome`) VALUES ('Palmito');
INSERT INTO `Ingrediente` (`Nome`) VALUES ('Parmesão');
INSERT INTO `Ingrediente` (`Nome`) VALUES ('Peito de Perú Defumado');
INSERT INTO `Ingrediente` (`Nome`) VALUES ('Peperoni');
INSERT INTO `Ingrediente` (`Nome`) VALUES ('Presunto');
INSERT INTO `Ingrediente` (`Nome`) VALUES ('Provolone');
INSERT INTO `Ingrediente` (`Nome`) VALUES ('Pêssego');
INSERT INTO `Ingrediente` (`Nome`) VALUES ('Salame Italiano');
INSERT INTO `Ingrediente` (`Nome`) VALUES ('Tahine');
INSERT INTO `Ingrediente` (`Nome`) VALUES ('Tomate');
INSERT INTO `Ingrediente` (`Nome`) VALUES ('Tomate Seco');

INSERT INTO `Pizza` (`Nome`, `Preco`) VALUES ('Camarão', 63.25);
SET @lid := LAST_INSERT_ID();
INSERT INTO `Pizza_Ingrediente` (`Pizza_id`, `Ingrediente_id`) VALUES (@lid, (select id from ingrediente where nome = 'Molho de Tomate'));
INSERT INTO `Pizza_Ingrediente` (`Pizza_id`, `Ingrediente_id`) VALUES (@lid, (select id from ingrediente where nome = 'Mussarela'));
INSERT INTO `Pizza_Ingrediente` (`Pizza_id`, `Ingrediente_id`) VALUES (@lid, (select id from ingrediente where nome = 'Camarão'));
INSERT INTO `Pizza_Ingrediente` (`Pizza_id`, `Ingrediente_id`) VALUES (@lid, (select id from ingrediente where nome = 'Tomate'));
INSERT INTO `Pizza_Ingrediente` (`Pizza_id`, `Ingrediente_id`) VALUES (@lid, (select id from ingrediente where nome = 'Orégano'));
INSERT INTO `Pizza_Ingrediente` (`Pizza_id`, `Ingrediente_id`) VALUES (@lid, (select id from ingrediente where nome = 'Azeitona'));

INSERT INTO `Pizza` (`Nome`, `Preco`) VALUES ('Quatro queijos', 47.85);
SET @lid := LAST_INSERT_ID();
INSERT INTO `Pizza_Ingrediente` (`Pizza_id`, `Ingrediente_id`) VALUES (@lid, (select id from ingrediente where nome = 'Molho de Tomate'));
INSERT INTO `Pizza_Ingrediente` (`Pizza_id`, `Ingrediente_id`) VALUES (@lid, (select id from ingrediente where nome = 'Mussarela'));
INSERT INTO `Pizza_Ingrediente` (`Pizza_id`, `Ingrediente_id`) VALUES (@lid, (select id from ingrediente where nome = 'Parmesão'));
INSERT INTO `Pizza_Ingrediente` (`Pizza_id`, `Ingrediente_id`) VALUES (@lid, (select id from ingrediente where nome = 'Provolone'));
INSERT INTO `Pizza_Ingrediente` (`Pizza_id`, `Ingrediente_id`) VALUES (@lid, (select id from ingrediente where nome = 'Catupiri'));
INSERT INTO `Pizza_Ingrediente` (`Pizza_id`, `Ingrediente_id`) VALUES (@lid, (select id from ingrediente where nome = 'Orégano'));
INSERT INTO `Pizza_Ingrediente` (`Pizza_id`, `Ingrediente_id`) VALUES (@lid, (select id from ingrediente where nome = 'Azeitona'));

INSERT INTO `Pizza` (`Nome`, `Preco`) VALUES ('Atum', 37.85);
SET @lid := LAST_INSERT_ID();
INSERT INTO `Pizza_Ingrediente` (`Pizza_id`, `Ingrediente_id`) VALUES (@lid, (select id from ingrediente where nome = 'Molho de Tomate'));
INSERT INTO `Pizza_Ingrediente` (`Pizza_id`, `Ingrediente_id`) VALUES (@lid, (select id from ingrediente where nome = 'Mussarela'));
INSERT INTO `Pizza_Ingrediente` (`Pizza_id`, `Ingrediente_id`) VALUES (@lid, (select id from ingrediente where nome = 'Atum'));
INSERT INTO `Pizza_Ingrediente` (`Pizza_id`, `Ingrediente_id`) VALUES (@lid, (select id from ingrediente where nome = 'Cebola'));
INSERT INTO `Pizza_Ingrediente` (`Pizza_id`, `Ingrediente_id`) VALUES (@lid, (select id from ingrediente where nome = 'Orégano'));
INSERT INTO `Pizza_Ingrediente` (`Pizza_id`, `Ingrediente_id`) VALUES (@lid, (select id from ingrediente where nome = 'Azeitona'));

INSERT INTO `Pizza` (`Nome`, `Preco`) VALUES ('Calabresa', 27.85);
SET @lid := LAST_INSERT_ID();
INSERT INTO `Pizza_Ingrediente` (`Pizza_id`, `Ingrediente_id`) VALUES (@lid, (select id from ingrediente where nome = 'Molho de Tomate'));
INSERT INTO `Pizza_Ingrediente` (`Pizza_id`, `Ingrediente_id`) VALUES (@lid, (select id from ingrediente where nome = 'Mussarela'));
INSERT INTO `Pizza_Ingrediente` (`Pizza_id`, `Ingrediente_id`) VALUES (@lid, (select id from ingrediente where nome = 'Calabresa'));
INSERT INTO `Pizza_Ingrediente` (`Pizza_id`, `Ingrediente_id`) VALUES (@lid, (select id from ingrediente where nome = 'Cebola'));
INSERT INTO `Pizza_Ingrediente` (`Pizza_id`, `Ingrediente_id`) VALUES (@lid, (select id from ingrediente where nome = 'Orégano'));
INSERT INTO `Pizza_Ingrediente` (`Pizza_id`, `Ingrediente_id`) VALUES (@lid, (select id from ingrediente where nome = 'Azeitona'));

INSERT INTO `Pizza` (`Nome`, `Preco`) VALUES ('Mussarela', 48.85);
SET @lid := LAST_INSERT_ID();
INSERT INTO `Pizza_Ingrediente` (`Pizza_id`, `Ingrediente_id`) VALUES (@lid, (select id from ingrediente where nome = 'Molho de Tomate'));
INSERT INTO `Pizza_Ingrediente` (`Pizza_id`, `Ingrediente_id`) VALUES (@lid, (select id from ingrediente where nome = 'Mussarela'));
INSERT INTO `Pizza_Ingrediente` (`Pizza_id`, `Ingrediente_id`) VALUES (@lid, (select id from ingrediente where nome = 'Tomate'));
INSERT INTO `Pizza_Ingrediente` (`Pizza_id`, `Ingrediente_id`) VALUES (@lid, (select id from ingrediente where nome = 'Orégano'));
INSERT INTO `Pizza_Ingrediente` (`Pizza_id`, `Ingrediente_id`) VALUES (@lid, (select id from ingrediente where nome = 'Azeitona'));

INSERT INTO `Pizza` (`Nome`, `Preco`) VALUES ('Portuguesa', 57.85);
SET @lid := LAST_INSERT_ID();
INSERT INTO `Pizza_Ingrediente` (`Pizza_id`, `Ingrediente_id`) VALUES (@lid, (select id from ingrediente where nome = 'Molho de Tomate'));
INSERT INTO `Pizza_Ingrediente` (`Pizza_id`, `Ingrediente_id`) VALUES (@lid, (select id from ingrediente where nome = 'Mussarela'));
INSERT INTO `Pizza_Ingrediente` (`Pizza_id`, `Ingrediente_id`) VALUES (@lid, (select id from ingrediente where nome = 'Presunto'));
INSERT INTO `Pizza_Ingrediente` (`Pizza_id`, `Ingrediente_id`) VALUES (@lid, (select id from ingrediente where nome = 'Cebola'));
INSERT INTO `Pizza_Ingrediente` (`Pizza_id`, `Ingrediente_id`) VALUES (@lid, (select id from ingrediente where nome = 'Orégano'));
INSERT INTO `Pizza_Ingrediente` (`Pizza_id`, `Ingrediente_id`) VALUES (@lid, (select id from ingrediente where nome = 'Azeitona'));
INSERT INTO `Pizza_Ingrediente` (`Pizza_id`, `Ingrediente_id`) VALUES (@lid, (select id from ingrediente where nome = 'Ovo Cozido'));

INSERT INTO `Pizza` (`Nome`, `Preco`) VALUES ('Paulista', 47.85);
SET @lid := LAST_INSERT_ID();
INSERT INTO `Pizza_Ingrediente` (`Pizza_id`, `Ingrediente_id`) VALUES (@lid, (select id from ingrediente where nome = 'Molho de Tomate'));
INSERT INTO `Pizza_Ingrediente` (`Pizza_id`, `Ingrediente_id`) VALUES (@lid, (select id from ingrediente where nome = 'Mussarela'));
INSERT INTO `Pizza_Ingrediente` (`Pizza_id`, `Ingrediente_id`) VALUES (@lid, (select id from ingrediente where nome = 'Palmito'));
INSERT INTO `Pizza_Ingrediente` (`Pizza_id`, `Ingrediente_id`) VALUES (@lid, (select id from ingrediente where nome = 'Presunto'));
INSERT INTO `Pizza_Ingrediente` (`Pizza_id`, `Ingrediente_id`) VALUES (@lid, (select id from ingrediente where nome = 'Orégano'));
INSERT INTO `Pizza_Ingrediente` (`Pizza_id`, `Ingrediente_id`) VALUES (@lid, (select id from ingrediente where nome = 'Azeitona'));

INSERT INTO `Pizza` (`Nome`, `Preco`) VALUES ('Napolitana', 35.85);
SET @lid := LAST_INSERT_ID();
INSERT INTO `Pizza_Ingrediente` (`Pizza_id`, `Ingrediente_id`) VALUES (@lid, (select id from ingrediente where nome = 'Molho de Tomate'));
INSERT INTO `Pizza_Ingrediente` (`Pizza_id`, `Ingrediente_id`) VALUES (@lid, (select id from ingrediente where nome = 'Mussarela'));
INSERT INTO `Pizza_Ingrediente` (`Pizza_id`, `Ingrediente_id`) VALUES (@lid, (select id from ingrediente where nome = 'Presunto'));
INSERT INTO `Pizza_Ingrediente` (`Pizza_id`, `Ingrediente_id`) VALUES (@lid, (select id from ingrediente where nome = 'Orégano'));
INSERT INTO `Pizza_Ingrediente` (`Pizza_id`, `Ingrediente_id`) VALUES (@lid, (select id from ingrediente where nome = 'Azeitona'));

INSERT INTO `Pizza` (`Nome`, `Preco`) VALUES ('Lombinho', 47.85);
SET @lid := LAST_INSERT_ID();
INSERT INTO `Pizza_Ingrediente` (`Pizza_id`, `Ingrediente_id`) VALUES (@lid, (select id from ingrediente where nome = 'Molho de Tomate'));
INSERT INTO `Pizza_Ingrediente` (`Pizza_id`, `Ingrediente_id`) VALUES (@lid, (select id from ingrediente where nome = 'Mussarela'));
INSERT INTO `Pizza_Ingrediente` (`Pizza_id`, `Ingrediente_id`) VALUES (@lid, (select id from ingrediente where nome = 'Lombinho Defumado'));
INSERT INTO `Pizza_Ingrediente` (`Pizza_id`, `Ingrediente_id`) VALUES (@lid, (select id from ingrediente where nome = 'Parmesão'));
INSERT INTO `Pizza_Ingrediente` (`Pizza_id`, `Ingrediente_id`) VALUES (@lid, (select id from ingrediente where nome = 'Orégano'));
INSERT INTO `Pizza_Ingrediente` (`Pizza_id`, `Ingrediente_id`) VALUES (@lid, (select id from ingrediente where nome = 'Azeitona'));

INSERT INTO `Pizza` (`Nome`, `Preco`) VALUES ('Frango', 35.85);
SET @lid := LAST_INSERT_ID();
INSERT INTO `Pizza_Ingrediente` (`Pizza_id`, `Ingrediente_id`) VALUES (@lid, (select id from ingrediente where nome = 'Molho de Tomate'));
INSERT INTO `Pizza_Ingrediente` (`Pizza_id`, `Ingrediente_id`) VALUES (@lid, (select id from ingrediente where nome = 'Mussarela'));
INSERT INTO `Pizza_Ingrediente` (`Pizza_id`, `Ingrediente_id`) VALUES (@lid, (select id from ingrediente where nome = 'Frango Desfiado'));
INSERT INTO `Pizza_Ingrediente` (`Pizza_id`, `Ingrediente_id`) VALUES (@lid, (select id from ingrediente where nome = 'Catupiri'));
INSERT INTO `Pizza_Ingrediente` (`Pizza_id`, `Ingrediente_id`) VALUES (@lid, (select id from ingrediente where nome = 'Orégano'));
INSERT INTO `Pizza_Ingrediente` (`Pizza_id`, `Ingrediente_id`) VALUES (@lid, (select id from ingrediente where nome = 'Azeitona'));

INSERT INTO `Pizza` (`Nome`, `Preco`) VALUES ('Catuperú', 47.35);
SET @lid := LAST_INSERT_ID();
INSERT INTO `Pizza_Ingrediente` (`Pizza_id`, `Ingrediente_id`) VALUES (@lid, (select id from ingrediente where nome = 'Molho de Tomate'));
INSERT INTO `Pizza_Ingrediente` (`Pizza_id`, `Ingrediente_id`) VALUES (@lid, (select id from ingrediente where nome = 'Mussarela'));
INSERT INTO `Pizza_Ingrediente` (`Pizza_id`, `Ingrediente_id`) VALUES (@lid, (select id from ingrediente where nome = 'Peito de Perú Defumado'));
INSERT INTO `Pizza_Ingrediente` (`Pizza_id`, `Ingrediente_id`) VALUES (@lid, (select id from ingrediente where nome = 'Catupiri'));
INSERT INTO `Pizza_Ingrediente` (`Pizza_id`, `Ingrediente_id`) VALUES (@lid, (select id from ingrediente where nome = 'Orégano'));
INSERT INTO `Pizza_Ingrediente` (`Pizza_id`, `Ingrediente_id`) VALUES (@lid, (select id from ingrediente where nome = 'Azeitona'));

INSERT INTO `Pizza` (`Nome`, `Preco`) VALUES ('Califórnia', 38.85);
SET @lid := LAST_INSERT_ID();
INSERT INTO `Pizza_Ingrediente` (`Pizza_id`, `Ingrediente_id`) VALUES (@lid, (select id from ingrediente where nome = 'Molho de Tomate'));
INSERT INTO `Pizza_Ingrediente` (`Pizza_id`, `Ingrediente_id`) VALUES (@lid, (select id from ingrediente where nome = 'Mussarela'));
INSERT INTO `Pizza_Ingrediente` (`Pizza_id`, `Ingrediente_id`) VALUES (@lid, (select id from ingrediente where nome = 'Figo'));
INSERT INTO `Pizza_Ingrediente` (`Pizza_id`, `Ingrediente_id`) VALUES (@lid, (select id from ingrediente where nome = 'Abacaxi'));
INSERT INTO `Pizza_Ingrediente` (`Pizza_id`, `Ingrediente_id`) VALUES (@lid, (select id from ingrediente where nome = 'Pêssego'));
INSERT INTO `Pizza_Ingrediente` (`Pizza_id`, `Ingrediente_id`) VALUES (@lid, (select id from ingrediente where nome = 'Cereja'));

INSERT INTO `Pizza` (`Nome`, `Preco`) VALUES ('Brócolis', 39.85);
SET @lid := LAST_INSERT_ID();
INSERT INTO `Pizza_Ingrediente` (`Pizza_id`, `Ingrediente_id`) VALUES (@lid, (select id from ingrediente where nome = 'Molho de Tomate'));
INSERT INTO `Pizza_Ingrediente` (`Pizza_id`, `Ingrediente_id`) VALUES (@lid, (select id from ingrediente where nome = 'Mussarela'));
INSERT INTO `Pizza_Ingrediente` (`Pizza_id`, `Ingrediente_id`) VALUES (@lid, (select id from ingrediente where nome = 'Brócolis'));
INSERT INTO `Pizza_Ingrediente` (`Pizza_id`, `Ingrediente_id`) VALUES (@lid, (select id from ingrediente where nome = 'Catupiri'));
INSERT INTO `Pizza_Ingrediente` (`Pizza_id`, `Ingrediente_id`) VALUES (@lid, (select id from ingrediente where nome = 'Orégano'));
INSERT INTO `Pizza_Ingrediente` (`Pizza_id`, `Ingrediente_id`) VALUES (@lid, (select id from ingrediente where nome = 'Azeitona'));

INSERT INTO `Pizza` (`Nome`, `Preco`) VALUES ('Marguerita', 38.85);
SET @lid := LAST_INSERT_ID();
INSERT INTO `Pizza_Ingrediente` (`Pizza_id`, `Ingrediente_id`) VALUES (@lid, (select id from ingrediente where nome = 'Molho de Tomate'));
INSERT INTO `Pizza_Ingrediente` (`Pizza_id`, `Ingrediente_id`) VALUES (@lid, (select id from ingrediente where nome = 'Mussarela'));
INSERT INTO `Pizza_Ingrediente` (`Pizza_id`, `Ingrediente_id`) VALUES (@lid, (select id from ingrediente where nome = 'Manjericão'));
INSERT INTO `Pizza_Ingrediente` (`Pizza_id`, `Ingrediente_id`) VALUES (@lid, (select id from ingrediente where nome = 'Tomate'));
INSERT INTO `Pizza_Ingrediente` (`Pizza_id`, `Ingrediente_id`) VALUES (@lid, (select id from ingrediente where nome = 'Orégano'));
INSERT INTO `Pizza_Ingrediente` (`Pizza_id`, `Ingrediente_id`) VALUES (@lid, (select id from ingrediente where nome = 'Azeitona'));

INSERT INTO `Pizza` (`Nome`, `Preco`) VALUES ('Humita', 39.85);
SET @lid := LAST_INSERT_ID();
INSERT INTO `Pizza_Ingrediente` (`Pizza_id`, `Ingrediente_id`) VALUES (@lid, (select id from ingrediente where nome = 'Molho de Tomate'));
INSERT INTO `Pizza_Ingrediente` (`Pizza_id`, `Ingrediente_id`) VALUES (@lid, (select id from ingrediente where nome = 'Mussarela'));
INSERT INTO `Pizza_Ingrediente` (`Pizza_id`, `Ingrediente_id`) VALUES (@lid, (select id from ingrediente where nome = 'Milho'));
INSERT INTO `Pizza_Ingrediente` (`Pizza_id`, `Ingrediente_id`) VALUES (@lid, (select id from ingrediente where nome = 'Orégano'));
INSERT INTO `Pizza_Ingrediente` (`Pizza_id`, `Ingrediente_id`) VALUES (@lid, (select id from ingrediente where nome = 'Azeitona'));

INSERT INTO `Pizza` (`Nome`, `Preco`) VALUES ('Alho e óleo', 41.85);
SET @lid := LAST_INSERT_ID();
INSERT INTO `Pizza_Ingrediente` (`Pizza_id`, `Ingrediente_id`) VALUES (@lid, (select id from ingrediente where nome = 'Molho de Tomate'));
INSERT INTO `Pizza_Ingrediente` (`Pizza_id`, `Ingrediente_id`) VALUES (@lid, (select id from ingrediente where nome = 'Mussarela'));
INSERT INTO `Pizza_Ingrediente` (`Pizza_id`, `Ingrediente_id`) VALUES (@lid, (select id from ingrediente where nome = 'Alho Frito'));
INSERT INTO `Pizza_Ingrediente` (`Pizza_id`, `Ingrediente_id`) VALUES (@lid, (select id from ingrediente where nome = 'Orégano'));
INSERT INTO `Pizza_Ingrediente` (`Pizza_id`, `Ingrediente_id`) VALUES (@lid, (select id from ingrediente where nome = 'Azeitona'));

INSERT INTO `Pizza` (`Nome`, `Preco`) VALUES ('Mista', 41.85);
SET @lid := LAST_INSERT_ID();
INSERT INTO `Pizza_Ingrediente` (`Pizza_id`, `Ingrediente_id`) VALUES (@lid, (select id from ingrediente where nome = 'Molho de Tomate'));
INSERT INTO `Pizza_Ingrediente` (`Pizza_id`, `Ingrediente_id`) VALUES (@lid, (select id from ingrediente where nome = 'Mussarela'));
INSERT INTO `Pizza_Ingrediente` (`Pizza_id`, `Ingrediente_id`) VALUES (@lid, (select id from ingrediente where nome = 'Presunto'));
INSERT INTO `Pizza_Ingrediente` (`Pizza_id`, `Ingrediente_id`) VALUES (@lid, (select id from ingrediente where nome = 'Frango Desfiado'));
INSERT INTO `Pizza_Ingrediente` (`Pizza_id`, `Ingrediente_id`) VALUES (@lid, (select id from ingrediente where nome = 'Orégano'));
INSERT INTO `Pizza_Ingrediente` (`Pizza_id`, `Ingrediente_id`) VALUES (@lid, (select id from ingrediente where nome = 'Azeitona'));

INSERT INTO `Pizza` (`Nome`, `Preco`) VALUES ('Madre', 42.85);
SET @lid := LAST_INSERT_ID();
INSERT INTO `Pizza_Ingrediente` (`Pizza_id`, `Ingrediente_id`) VALUES (@lid, (select id from ingrediente where nome = 'Molho de Tomate'));
INSERT INTO `Pizza_Ingrediente` (`Pizza_id`, `Ingrediente_id`) VALUES (@lid, (select id from ingrediente where nome = 'Mussarela'));
INSERT INTO `Pizza_Ingrediente` (`Pizza_id`, `Ingrediente_id`) VALUES (@lid, (select id from ingrediente where nome = 'Bacon'));
INSERT INTO `Pizza_Ingrediente` (`Pizza_id`, `Ingrediente_id`) VALUES (@lid, (select id from ingrediente where nome = 'Palmito'));
INSERT INTO `Pizza_Ingrediente` (`Pizza_id`, `Ingrediente_id`) VALUES (@lid, (select id from ingrediente where nome = 'Azeitona'));
INSERT INTO `Pizza_Ingrediente` (`Pizza_id`, `Ingrediente_id`) VALUES (@lid, (select id from ingrediente where nome = 'Orégano'));

INSERT INTO `Pizza` (`Nome`, `Preco`) VALUES ('Vegetal', 42.85);
SET @lid := LAST_INSERT_ID();
INSERT INTO `Pizza_Ingrediente` (`Pizza_id`, `Ingrediente_id`) VALUES (@lid, (select id from ingrediente where nome = 'Molho de Tomate'));
INSERT INTO `Pizza_Ingrediente` (`Pizza_id`, `Ingrediente_id`) VALUES (@lid, (select id from ingrediente where nome = 'Mussarela'));
INSERT INTO `Pizza_Ingrediente` (`Pizza_id`, `Ingrediente_id`) VALUES (@lid, (select id from ingrediente where nome = 'Palmito'));
INSERT INTO `Pizza_Ingrediente` (`Pizza_id`, `Ingrediente_id`) VALUES (@lid, (select id from ingrediente where nome = 'Aspargo'));
INSERT INTO `Pizza_Ingrediente` (`Pizza_id`, `Ingrediente_id`) VALUES (@lid, (select id from ingrediente where nome = 'Milho'));
INSERT INTO `Pizza_Ingrediente` (`Pizza_id`, `Ingrediente_id`) VALUES (@lid, (select id from ingrediente where nome = 'Brócolis'));
INSERT INTO `Pizza_Ingrediente` (`Pizza_id`, `Ingrediente_id`) VALUES (@lid, (select id from ingrediente where nome = 'Tomate'));
INSERT INTO `Pizza_Ingrediente` (`Pizza_id`, `Ingrediente_id`) VALUES (@lid, (select id from ingrediente where nome = 'Orégano'));
INSERT INTO `Pizza_Ingrediente` (`Pizza_id`, `Ingrediente_id`) VALUES (@lid, (select id from ingrediente where nome = 'Azeitona'));

INSERT INTO `Pizza` (`Nome`, `Preco`) VALUES ('Santa fé', 43.85);
SET @lid := LAST_INSERT_ID();
INSERT INTO `Pizza_Ingrediente` (`Pizza_id`, `Ingrediente_id`) VALUES (@lid, (select id from ingrediente where nome = 'Molho de Tomate'));
INSERT INTO `Pizza_Ingrediente` (`Pizza_id`, `Ingrediente_id`) VALUES (@lid, (select id from ingrediente where nome = 'Mussarela'));
INSERT INTO `Pizza_Ingrediente` (`Pizza_id`, `Ingrediente_id`) VALUES (@lid, (select id from ingrediente where nome = 'Brócolis'));
INSERT INTO `Pizza_Ingrediente` (`Pizza_id`, `Ingrediente_id`) VALUES (@lid, (select id from ingrediente where nome = 'Palmito'));
INSERT INTO `Pizza_Ingrediente` (`Pizza_id`, `Ingrediente_id`) VALUES (@lid, (select id from ingrediente where nome = 'Ervilha'));
INSERT INTO `Pizza_Ingrediente` (`Pizza_id`, `Ingrediente_id`) VALUES (@lid, (select id from ingrediente where nome = 'Catupiri'));
INSERT INTO `Pizza_Ingrediente` (`Pizza_id`, `Ingrediente_id`) VALUES (@lid, (select id from ingrediente where nome = 'Orégano'));
INSERT INTO `Pizza_Ingrediente` (`Pizza_id`, `Ingrediente_id`) VALUES (@lid, (select id from ingrediente where nome = 'Azeitona'));

INSERT INTO `Pizza` (`Nome`, `Preco`) VALUES ('Italiana', 43.85);
SET @lid := LAST_INSERT_ID();
INSERT INTO `Pizza_Ingrediente` (`Pizza_id`, `Ingrediente_id`) VALUES (@lid, (select id from ingrediente where nome = 'Molho de Tomate'));
INSERT INTO `Pizza_Ingrediente` (`Pizza_id`, `Ingrediente_id`) VALUES (@lid, (select id from ingrediente where nome = 'Mussarela'));
INSERT INTO `Pizza_Ingrediente` (`Pizza_id`, `Ingrediente_id`) VALUES (@lid, (select id from ingrediente where nome = 'Salame Italiano'));
INSERT INTO `Pizza_Ingrediente` (`Pizza_id`, `Ingrediente_id`) VALUES (@lid, (select id from ingrediente where nome = 'Orégano'));
INSERT INTO `Pizza_Ingrediente` (`Pizza_id`, `Ingrediente_id`) VALUES (@lid, (select id from ingrediente where nome = 'Azeitona'));

INSERT INTO `Pizza` (`Nome`, `Preco`) VALUES ('Maracatú', 45.85);
SET @lid := LAST_INSERT_ID();
INSERT INTO `Pizza_Ingrediente` (`Pizza_id`, `Ingrediente_id`) VALUES (@lid, (select id from ingrediente where nome = 'Molho de Tomate'));
INSERT INTO `Pizza_Ingrediente` (`Pizza_id`, `Ingrediente_id`) VALUES (@lid, (select id from ingrediente where nome = 'Mussarela'));
INSERT INTO `Pizza_Ingrediente` (`Pizza_id`, `Ingrediente_id`) VALUES (@lid, (select id from ingrediente where nome = 'Calabresa'));
INSERT INTO `Pizza_Ingrediente` (`Pizza_id`, `Ingrediente_id`) VALUES (@lid, (select id from ingrediente where nome = 'Champignon'));
INSERT INTO `Pizza_Ingrediente` (`Pizza_id`, `Ingrediente_id`) VALUES (@lid, (select id from ingrediente where nome = 'Orégano'));
INSERT INTO `Pizza_Ingrediente` (`Pizza_id`, `Ingrediente_id`) VALUES (@lid, (select id from ingrediente where nome = 'Azeitona'));

INSERT INTO `Pizza` (`Nome`, `Preco`) VALUES ('Pasqualina', 45.85);
SET @lid := LAST_INSERT_ID();
INSERT INTO `Pizza_Ingrediente` (`Pizza_id`, `Ingrediente_id`) VALUES (@lid, (select id from ingrediente where nome = 'Molho de Tomate'));
INSERT INTO `Pizza_Ingrediente` (`Pizza_id`, `Ingrediente_id`) VALUES (@lid, (select id from ingrediente where nome = 'Mussarela'));
INSERT INTO `Pizza_Ingrediente` (`Pizza_id`, `Ingrediente_id`) VALUES (@lid, (select id from ingrediente where nome = 'Bacon'));
INSERT INTO `Pizza_Ingrediente` (`Pizza_id`, `Ingrediente_id`) VALUES (@lid, (select id from ingrediente where nome = 'Provolone'));
INSERT INTO `Pizza_Ingrediente` (`Pizza_id`, `Ingrediente_id`) VALUES (@lid, (select id from ingrediente where nome = 'Parmesão'));
INSERT INTO `Pizza_Ingrediente` (`Pizza_id`, `Ingrediente_id`) VALUES (@lid, (select id from ingrediente where nome = 'Catupiri'));
INSERT INTO `Pizza_Ingrediente` (`Pizza_id`, `Ingrediente_id`) VALUES (@lid, (select id from ingrediente where nome = 'Orégano'));
INSERT INTO `Pizza_Ingrediente` (`Pizza_id`, `Ingrediente_id`) VALUES (@lid, (select id from ingrediente where nome = 'Azeitona'));

INSERT INTO `Pizza` (`Nome`, `Preco`) VALUES ('Da Casa', 51.85);
SET @lid := LAST_INSERT_ID();
INSERT INTO `Pizza_Ingrediente` (`Pizza_id`, `Ingrediente_id`) VALUES (@lid, (select id from ingrediente where nome = 'Molho de Tomate'));
INSERT INTO `Pizza_Ingrediente` (`Pizza_id`, `Ingrediente_id`) VALUES (@lid, (select id from ingrediente where nome = 'Mussarela'));
INSERT INTO `Pizza_Ingrediente` (`Pizza_id`, `Ingrediente_id`) VALUES (@lid, (select id from ingrediente where nome = 'Presunto'));
INSERT INTO `Pizza_Ingrediente` (`Pizza_id`, `Ingrediente_id`) VALUES (@lid, (select id from ingrediente where nome = 'Palmito'));
INSERT INTO `Pizza_Ingrediente` (`Pizza_id`, `Ingrediente_id`) VALUES (@lid, (select id from ingrediente where nome = 'Frango'));
INSERT INTO `Pizza_Ingrediente` (`Pizza_id`, `Ingrediente_id`) VALUES (@lid, (select id from ingrediente where nome = 'Ervilha'));
INSERT INTO `Pizza_Ingrediente` (`Pizza_id`, `Ingrediente_id`) VALUES (@lid, (select id from ingrediente where nome = 'Orégano'));
INSERT INTO `Pizza_Ingrediente` (`Pizza_id`, `Ingrediente_id`) VALUES (@lid, (select id from ingrediente where nome = 'Azeitona'));

INSERT INTO `Pizza` (`Nome`, `Preco`) VALUES ('Palmito', 51.85);
SET @lid := LAST_INSERT_ID();
INSERT INTO `Pizza_Ingrediente` (`Pizza_id`, `Ingrediente_id`) VALUES (@lid, (select id from ingrediente where nome = 'Molho de Tomate'));
INSERT INTO `Pizza_Ingrediente` (`Pizza_id`, `Ingrediente_id`) VALUES (@lid, (select id from ingrediente where nome = 'Mussarela'));
INSERT INTO `Pizza_Ingrediente` (`Pizza_id`, `Ingrediente_id`) VALUES (@lid, (select id from ingrediente where nome = 'Palmito'));
INSERT INTO `Pizza_Ingrediente` (`Pizza_id`, `Ingrediente_id`) VALUES (@lid, (select id from ingrediente where nome = 'Orégano'));
INSERT INTO `Pizza_Ingrediente` (`Pizza_id`, `Ingrediente_id`) VALUES (@lid, (select id from ingrediente where nome = 'Azeitona'));

INSERT INTO `Pizza` (`Nome`, `Preco`) VALUES ('Banana', 52.85);
SET @lid := LAST_INSERT_ID();
INSERT INTO `Pizza_Ingrediente` (`Pizza_id`, `Ingrediente_id`) VALUES (@lid, (select id from ingrediente where nome = 'Mussarela'));
INSERT INTO `Pizza_Ingrediente` (`Pizza_id`, `Ingrediente_id`) VALUES (@lid, (select id from ingrediente where nome = 'Banana'));
INSERT INTO `Pizza_Ingrediente` (`Pizza_id`, `Ingrediente_id`) VALUES (@lid, (select id from ingrediente where nome = 'Leite Condensado'));
INSERT INTO `Pizza_Ingrediente` (`Pizza_id`, `Ingrediente_id`) VALUES (@lid, (select id from ingrediente where nome = 'Canela'));

INSERT INTO `Pizza` (`Nome`, `Preco`) VALUES ('Tomate Seco', 56.10);
SET @lid := LAST_INSERT_ID();
INSERT INTO `Pizza_Ingrediente` (`Pizza_id`, `Ingrediente_id`) VALUES (@lid, (select id from ingrediente where nome = 'Molho de Tomate'));
INSERT INTO `Pizza_Ingrediente` (`Pizza_id`, `Ingrediente_id`) VALUES (@lid, (select id from ingrediente where nome = 'Mussarela'));
INSERT INTO `Pizza_Ingrediente` (`Pizza_id`, `Ingrediente_id`) VALUES (@lid, (select id from ingrediente where nome = 'Tomate Seco'));
INSERT INTO `Pizza_Ingrediente` (`Pizza_id`, `Ingrediente_id`) VALUES (@lid, (select id from ingrediente where nome = 'Azeitona'));
INSERT INTO `Pizza_Ingrediente` (`Pizza_id`, `Ingrediente_id`) VALUES (@lid, (select id from ingrediente where nome = 'Orégano'));

INSERT INTO `Pizza` (`Nome`, `Preco`) VALUES ('Chocolate Preto', 53.85);
SET @lid := LAST_INSERT_ID();
INSERT INTO `Pizza_Ingrediente` (`Pizza_id`, `Ingrediente_id`) VALUES (@lid, (select id from ingrediente where nome = 'Mussarela'));
INSERT INTO `Pizza_Ingrediente` (`Pizza_id`, `Ingrediente_id`) VALUES (@lid, (select id from ingrediente where nome = 'Chocolate ao Leite'));
INSERT INTO `Pizza_Ingrediente` (`Pizza_id`, `Ingrediente_id`) VALUES (@lid, (select id from ingrediente where nome = 'Leite Condensado'));
INSERT INTO `Pizza_Ingrediente` (`Pizza_id`, `Ingrediente_id`) VALUES (@lid, (select id from ingrediente where nome = 'Cereja'));

INSERT INTO `Pizza` (`Nome`, `Preco`) VALUES ('Bacon', 54.85);
SET @lid := LAST_INSERT_ID();
INSERT INTO `Pizza_Ingrediente` (`Pizza_id`, `Ingrediente_id`) VALUES (@lid, (select id from ingrediente where nome = 'Molho de Tomate'));
INSERT INTO `Pizza_Ingrediente` (`Pizza_id`, `Ingrediente_id`) VALUES (@lid, (select id from ingrediente where nome = 'Mussarela'));
INSERT INTO `Pizza_Ingrediente` (`Pizza_id`, `Ingrediente_id`) VALUES (@lid, (select id from ingrediente where nome = 'Bacon'));
INSERT INTO `Pizza_Ingrediente` (`Pizza_id`, `Ingrediente_id`) VALUES (@lid, (select id from ingrediente where nome = 'Tomate'));
INSERT INTO `Pizza_Ingrediente` (`Pizza_id`, `Ingrediente_id`) VALUES (@lid, (select id from ingrediente where nome = 'Azeitona'));
INSERT INTO `Pizza_Ingrediente` (`Pizza_id`, `Ingrediente_id`) VALUES (@lid, (select id from ingrediente where nome = 'Orégano'));

INSERT INTO `Pizza` (`Nome`, `Preco`) VALUES ('Champignon', 32.85);
SET @lid := LAST_INSERT_ID();
INSERT INTO `Pizza_Ingrediente` (`Pizza_id`, `Ingrediente_id`) VALUES (@lid, (select id from ingrediente where nome = 'Molho de Tomate'));
INSERT INTO `Pizza_Ingrediente` (`Pizza_id`, `Ingrediente_id`) VALUES (@lid, (select id from ingrediente where nome = 'Mussarela'));
INSERT INTO `Pizza_Ingrediente` (`Pizza_id`, `Ingrediente_id`) VALUES (@lid, (select id from ingrediente where nome = 'Champignon'));
INSERT INTO `Pizza_Ingrediente` (`Pizza_id`, `Ingrediente_id`) VALUES (@lid, (select id from ingrediente where nome = 'Tomate'));
INSERT INTO `Pizza_Ingrediente` (`Pizza_id`, `Ingrediente_id`) VALUES (@lid, (select id from ingrediente where nome = 'Azeitona'));
INSERT INTO `Pizza_Ingrediente` (`Pizza_id`, `Ingrediente_id`) VALUES (@lid, (select id from ingrediente where nome = 'Orégano'));

INSERT INTO `Pizza` (`Nome`, `Preco`) VALUES ('Picante', 25.85);
SET @lid := LAST_INSERT_ID();
INSERT INTO `Pizza_Ingrediente` (`Pizza_id`, `Ingrediente_id`) VALUES (@lid, (select id from ingrediente where nome = 'Molho de pimenta da casa'));
INSERT INTO `Pizza_Ingrediente` (`Pizza_id`, `Ingrediente_id`) VALUES (@lid, (select id from ingrediente where nome = 'Mussarela'));
INSERT INTO `Pizza_Ingrediente` (`Pizza_id`, `Ingrediente_id`) VALUES (@lid, (select id from ingrediente where nome = 'Tomate'));
INSERT INTO `Pizza_Ingrediente` (`Pizza_id`, `Ingrediente_id`) VALUES (@lid, (select id from ingrediente where nome = 'Azeitona'));
INSERT INTO `Pizza_Ingrediente` (`Pizza_id`, `Ingrediente_id`) VALUES (@lid, (select id from ingrediente where nome = 'Orégano'));

INSERT INTO `Pizza` (`Nome`, `Preco`) VALUES ('Peperoni', 56.10);
SET @lid := LAST_INSERT_ID();
INSERT INTO `Pizza_Ingrediente` (`Pizza_id`, `Ingrediente_id`) VALUES (@lid, (select id from ingrediente where nome = 'Molho de Tomate'));
INSERT INTO `Pizza_Ingrediente` (`Pizza_id`, `Ingrediente_id`) VALUES (@lid, (select id from ingrediente where nome = 'Mussarela'));
INSERT INTO `Pizza_Ingrediente` (`Pizza_id`, `Ingrediente_id`) VALUES (@lid, (select id from ingrediente where nome = 'Peperoni'));
INSERT INTO `Pizza_Ingrediente` (`Pizza_id`, `Ingrediente_id`) VALUES (@lid, (select id from ingrediente where nome = 'Tomate'));
INSERT INTO `Pizza_Ingrediente` (`Pizza_id`, `Ingrediente_id`) VALUES (@lid, (select id from ingrediente where nome = 'Azeitona'));
INSERT INTO `Pizza_Ingrediente` (`Pizza_id`, `Ingrediente_id`) VALUES (@lid, (select id from ingrediente where nome = 'Orégano'));

INSERT INTO `Pizza` (`Nome`, `Preco`) VALUES ('Peperoni extra', 52.10);
SET @lid := LAST_INSERT_ID();
INSERT INTO `Pizza_Ingrediente` (`Pizza_id`, `Ingrediente_id`) VALUES (@lid, (select id from ingrediente where nome = 'Molho de pimenta da casa'));
INSERT INTO `Pizza_Ingrediente` (`Pizza_id`, `Ingrediente_id`) VALUES (@lid, (select id from ingrediente where nome = 'Mussarela'));
INSERT INTO `Pizza_Ingrediente` (`Pizza_id`, `Ingrediente_id`) VALUES (@lid, (select id from ingrediente where nome = 'Peperoni'));
INSERT INTO `Pizza_Ingrediente` (`Pizza_id`, `Ingrediente_id`) VALUES (@lid, (select id from ingrediente where nome = 'Tomate'));
INSERT INTO `Pizza_Ingrediente` (`Pizza_id`, `Ingrediente_id`) VALUES (@lid, (select id from ingrediente where nome = 'Azeitona'));
INSERT INTO `Pizza_Ingrediente` (`Pizza_id`, `Ingrediente_id`) VALUES (@lid, (select id from ingrediente where nome = 'Orégano'));

INSERT INTO `Pizza` (`Nome`, `Preco`) VALUES ('Veronesa', 25.85);
SET @lid := LAST_INSERT_ID();
INSERT INTO `Pizza_Ingrediente` (`Pizza_id`, `Ingrediente_id`) VALUES (@lid, (select id from ingrediente where nome = 'Mussarela'));
INSERT INTO `Pizza_Ingrediente` (`Pizza_id`, `Ingrediente_id`) VALUES (@lid, (select id from ingrediente where nome = 'Goiabada'));
INSERT INTO `Pizza_Ingrediente` (`Pizza_id`, `Ingrediente_id`) VALUES (@lid, (select id from ingrediente where nome = 'Catupiri'));

INSERT INTO `Pizza` (`Nome`, `Preco`) VALUES ('Chocolate branco', 33.85);
SET @lid := LAST_INSERT_ID();
INSERT INTO `Pizza_Ingrediente` (`Pizza_id`, `Ingrediente_id`) VALUES (@lid, (select id from ingrediente where nome = 'Mussarela'));
INSERT INTO `Pizza_Ingrediente` (`Pizza_id`, `Ingrediente_id`) VALUES (@lid, (select id from ingrediente where nome = 'Chocolate branco'));
INSERT INTO `Pizza_Ingrediente` (`Pizza_id`, `Ingrediente_id`) VALUES (@lid, (select id from ingrediente where nome = 'Cereja'));

INSERT INTO `Pizza` (`Nome`, `Preco`) VALUES ('Árabe', 37.85);
SET @lid := LAST_INSERT_ID();
INSERT INTO `Pizza_Ingrediente` (`Pizza_id`, `Ingrediente_id`) VALUES (@lid, (select id from ingrediente where nome = 'Mussarela'));
INSERT INTO `Pizza_Ingrediente` (`Pizza_id`, `Ingrediente_id`) VALUES (@lid, (select id from ingrediente where nome = 'Carne de Esfiha'));
INSERT INTO `Pizza_Ingrediente` (`Pizza_id`, `Ingrediente_id`) VALUES (@lid, (select id from ingrediente where nome = 'Cebola'));
INSERT INTO `Pizza_Ingrediente` (`Pizza_id`, `Ingrediente_id`) VALUES (@lid, (select id from ingrediente where nome = 'Tahine'));
INSERT INTO `Pizza_Ingrediente` (`Pizza_id`, `Ingrediente_id`) VALUES (@lid, (select id from ingrediente where nome = 'Tomate'));
INSERT INTO `Pizza_Ingrediente` (`Pizza_id`, `Ingrediente_id`) VALUES (@lid, (select id from ingrediente where nome = 'Azeitona'));
INSERT INTO `Pizza_Ingrediente` (`Pizza_id`, `Ingrediente_id`) VALUES (@lid, (select id from ingrediente where nome = 'Orégano'));

INSERT INTO `Pizza` (`Nome`, `Preco`) VALUES ('Strogonoff', 36.85);
SET @lid := LAST_INSERT_ID();
INSERT INTO `Pizza_Ingrediente` (`Pizza_id`, `Ingrediente_id`) VALUES (@lid, (select id from ingrediente where nome = 'Molho de Tomate'));
INSERT INTO `Pizza_Ingrediente` (`Pizza_id`, `Ingrediente_id`) VALUES (@lid, (select id from ingrediente where nome = 'Mussarela'));
INSERT INTO `Pizza_Ingrediente` (`Pizza_id`, `Ingrediente_id`) VALUES (@lid, (select id from ingrediente where nome = 'Frango Desfiado'));
INSERT INTO `Pizza_Ingrediente` (`Pizza_id`, `Ingrediente_id`) VALUES (@lid, (select id from ingrediente where nome = 'Molho de Strogonoff'));
INSERT INTO `Pizza_Ingrediente` (`Pizza_id`, `Ingrediente_id`) VALUES (@lid, (select id from ingrediente where nome = 'Champignon'));
INSERT INTO `Pizza_Ingrediente` (`Pizza_id`, `Ingrediente_id`) VALUES (@lid, (select id from ingrediente where nome = 'Tomate'));
INSERT INTO `Pizza_Ingrediente` (`Pizza_id`, `Ingrediente_id`) VALUES (@lid, (select id from ingrediente where nome = 'Azeitona'));
INSERT INTO `Pizza_Ingrediente` (`Pizza_id`, `Ingrediente_id`) VALUES (@lid, (select id from ingrediente where nome = 'Orégano'));
