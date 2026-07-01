--Quando valor total maior que 5M então bateu a meta
select 
EmployeeKey
,Sum(ExtendedAmount) as 'total de vendas'
,case
when sum(ExtendedAmount) > 5000000 then 'Bateu a meta'
else 'meta não-batida'
end as resultado
from AdventureWorksDW2019.dbo.FactResellerSales
group by EmployeeKey

-- < 2M = Ruim
-- entre 2M e 5M = Média
-- >5M = promoção
select 
EmployeeKey
,Sum(ExtendedAmount) as 'total de vendas'
,case
	when sum(ExtendedAmount) < 2000000                   then 'Ruim'
	when sum(ExtendedAmount) between 2000000 and 5000000 then 'Médio'
	when sum(ExtendedAmount) > 5000000                   then 'Promoção' 
end as Perfil

from AdventureWorksDW2019.dbo.FactResellerSales
group by EmployeeKey
order by 2