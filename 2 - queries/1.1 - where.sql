# pesquisa todos ingredientes
select * from ingrediente;

# pesquisa apenas com nome ovo
select * from ingrediente where nome = 'ovo';

# apenas que comecem com a letra 'c'
select * from ingrediente where nome like 'c%';

# que contenha a letra a
select * from ingrediente where nome like '%a%';

