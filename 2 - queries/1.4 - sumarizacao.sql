select * from pizza;
-- selecionar só a coluna preco
select preco from pizza;
-- somar todos os precos
select sum(preco) from pizza;
-- somar duas pizzas filtrando pelo id;
select sum(preco) from pizza where id = 1 or id = 2;
-- somar duas pizzas por nome;
select sum(preco) from pizza where nome = 'Muçarela'or nome = 'Calabreza';
