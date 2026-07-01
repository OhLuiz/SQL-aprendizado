--Join ou inner join = relaciona dados que tenham informações iguais se não tiverem informações iguais não retorna nada
--left join = prioriza tabela t1
--right join = prioriza tabela t2
--full join = retorna todos os dados das duas tabelas, mesmo que não tenham informações iguais
select *
from [e-comerce].dbo.Vendas as t1
join [e-comerce].dbo.Ordens as t2
on t1.id = t2.id

select *
from [e-comerce].dbo.Clientes as t1
full join [e-comerce].dbo.Ordens as t2
on t1.id = t2.customer_id
where t2.customer_id is null
order by 1
