select *
from vendas.dbo.Acessos
select *
from vendas.dbo.Usuarios
select *
from vendas.dbo.Compras
--inner join traz os dados que são identicos nas tabelas
--fazer a separação de quem fez as compras fisicas, online, só cadastrou e acessou
select distinct 
u.id,
u.user_name,
c.price
from vendas.dbo.Usuarios as u 
join vendas.dbo.Acessos as a on u.id = a.id
join vendas.dbo.Compras as c on u.id = c.user_id

--
select *
from vendas.dbo.Acessos

--Quem comprou online e acessou
select distinct 
t1.user_id,
t2.user_id,
t1.user_name
from vendas.dbo.Acessos as t1
inner join vendas.dbo.Compras as t2 on t1.user_id = t2.user_id

--Quem somente acessou
select distinct *
from vendas.dbo.Acessos as t1
left join vendas.dbo.compras as t2 on t1.user_id = t2.user_id
where t2.user_id is null

--Compras na loja fisica e sem acesso
select distinct *
from vendas.dbo.Acessos as t1
right join vendas.dbo.compras as t2 on t1.user_id = t2.user_id
where t1.user_id is null

--Sem acessos e compras, apenas cadastro
select distinct *
from vendas.dbo.Usuarios as t1
left join vendas.dbo.compras as t2 on t1.id = t2.user_id
left join vendas.dbo.Acessos as t3 on t1.id = t3.user_id
where t2.user_id is null and t3.user_id is null

----Sem acessos e compras, apenas cadastro
select distinct *
from vendas.dbo.acessos as t1
left join vendas.dbo.compras as t2 on t1.user_id = t2.user_id
where t2.user_id is null 