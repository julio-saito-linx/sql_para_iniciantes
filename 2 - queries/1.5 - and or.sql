select * from ingrediente;

-- somente o que comecem com a letra c ou o
select * from ingrediente where nome like 'c%' or nome like 'o%';
select * from ingrediente where nome like '%a';
select * from ingrediente where nome like 'molho%';
select * from pizza;
select * from pizza where preco > 40;
select * from pizza where preco >= 40 and preco <= 44;
select preco from pizza;
select preco, nome from pizza;
select avg (preco) from pizza;
select count(preco) from pizza;
select max(preco) from pizza;
select min(preco) from pizza;
select * from pizza where preco >40 order by (preco) desc;
select * from pizza having preco = max(preco);
select * from pizza having preco = min(preco);