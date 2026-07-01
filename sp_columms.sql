select top(500)
[ProductKey]
,[UnitPrice] 
,[SalesOrderNumber]
,[SalesTerritoryKey]
,[OrderDateKey]
from AdventureWorksDW2019.dbo.FactResellerSales --Ao selecionar o texto do nome da tabela e dar ALT+F1 podemos ver as propriedades e ve o nome das colunas

EXEC sp_columns 'FactResellerSales' --Ao usar o sp_columns podemos ver as colunas da tabela, tipo de dados, se aceita nulo ou não, etc.