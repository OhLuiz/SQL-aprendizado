select 
ProductKey as 'chave do produto',
UnitPrice as 'preço unitário',
OrderQuantity as 'quantidade de vendas',
SalesAmount as 'total de vendas'
from FactResellerSales

where OrderQuantity <= 10
order by 3 
--Where com restrição de números