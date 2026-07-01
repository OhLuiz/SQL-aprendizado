select 
SalesOrderNumber
,YEAR(OrderDate) as 'ano'
from AdventureWorksDW2019.dbo.FactResellerSales

select 
YEAR(OrderDate) ano
,count(case when ExtendedAmount < 3000 then 1 end) as 'Venda baixa'
,count(case when ExtendedAmount >= 3000 then 1 end) as 'Venda alta'
 
from AdventureWorksDW2019.dbo.FactResellerSales
group by YEAR(OrderDate)
order by 1

------

select 
Month(OrderDate) mes
,count(case when ExtendedAmount < 3000 then 1 end) as 'Venda baixa'
,count(case when ExtendedAmount >= 3000 then 1 end) as 'Venda alta' 
from AdventureWorksDW2019.dbo.FactResellerSales
where YEAR(OrderDate) = 2012

group by Month(OrderDate)
order by 1
