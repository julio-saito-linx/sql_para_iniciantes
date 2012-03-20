-- pizza ligada aos ingredientes pela pizza_ingrediente
select 
    pizza.Nome as 'Nome da Pizza',
    ingrediente.Nome as 'Ingredientes'
from
    pizza
        join
    pizza_ingrediente ON Pizza_id = pizza.id
        join
    ingrediente ON pizza_ingrediente.ingrediente_id = ingrediente.id
order by pizza.Nome;