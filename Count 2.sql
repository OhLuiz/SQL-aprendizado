select 
SalesOrderNumber as ordem_venda
,count(case when ExtendedAmount < 3000 then 1 end) Venda_baixa
,count(case when ExtendedAmount >= 3000 then 1 end) Venda_alta

from AdventureWorksDW2019.dbo.FactResellerSales
group by SalesOrderNumber


select 
SalesOrderNumber
,SalesAmount
from AdventureWorksDW2019.dbo.FactResellerSales
where SalesOrderNumber = 'SO43659'
order by 2

