select 
ProductKey
,SalesOrderNumber
,OrderQuantity
,UnitPrice
,ExtendedAmount
from FactResellerSales
where ExtendedAmount > 5000 -- com isso selciono apenas linhas que respeitem essa regra
