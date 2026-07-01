select 
SalesOrderNumber,
OrderQuantity,
UnitPrice,
SalesAmount
from FactResellerSales

where SalesAmount between 5000 and 10000
and OrderQuantity >10
order by 4

--QUERO APRENDER A ADICIONAR COLUNA NA TABELA
