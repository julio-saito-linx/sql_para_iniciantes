-- pizza ligada aos ingredientes pela pizza_ingrediente
select * from pizza
join pizza_ingrediente on Pizza_id = pizza.id
join ingrediente on pizza_ingrediente.ingrediente_id = ingrediente.id
where pizza.Nome = 'Muçarela';