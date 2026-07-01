
select *
from AdventureWorksDW2019.dbo.FactResellerSales
order by 1
 --com o group by podemos fazer quase que um distinct e analisar o que queremos para cada valor diferente da coluna escolhida

select 
ProductKey,
OrderDateKey,
min(SalesAmount) as 'menor preco',
max(salesAmount) as 'maior preco',
avg(SalesAmount) as 'media de preco'
from AdventureWorksDW2019.dbo.FactResellerSales
group by OrderDateKey, ProductKey
order by 1 
-- todas vez que usar funções de agregação devvo usar Group by

Select 
PRODUCTKEY,
UnitPrice,
COUNT(ProductKey) as [Number of records], 
avg(SalesAmount) as [media of Sales]
from AdventureWorksDW2019.dbo.FactResellerSales
where SalesAmount > (Select avg(SalesAmount) From AdventureWorksDW2019.dbo.FactResellerSales)
group by ProductKey, UnitPrice
order by 4
--outra forma de usar funções de agregação

select *
from AdventureWorksDW2019.dbo.DimEmployee
where FirstName Like '[l-p]%' 
order by FirstName
--com a função like podemos procruar nomes que começam ou terminam com algo


