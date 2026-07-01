--Função Count serve para contar 
select 
DepartmentName
,COUNT(DepartmentName) as quantidade
from [dbo.DimEmployee]
group by DepartmentName

select 
Title
,COUNT(Title) as quantidade
From [dbo.DimEmployee]
group by Title

select 
ProductKey
,COUNT(ProductKey) as quantidade_venda
from FactResellerSales
group by ProductKey