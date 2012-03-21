-- join com a tabela pizza_ingrediente sem colocar o nome da tabela
select * from pizza
join Pizza_Ingrediente on Pizza_Id = Id
where id = 1;
-- buscando nome da pizza sem colocar pizza.nome
select nome from pizza;
-- usando pizza.nome
select pizza.nome from pizza;
-- join com a tabela pizza_ingrediente usando os nomes das tabelas
select pizza.*,pizza_ingrediente.* 
from pizza
join pizza_ingrediente on pizza.id = pizza_ingrediente.pizza_id
where pizza.nome = 'camarão';