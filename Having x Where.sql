-- having filtros de agrupamento
--Where filtro de colunas
--having diltro agruppamentos

select 
EmployeeKey
,SUM(ExtendedAmount) as soma
from FactResellerSales
group by EmployeeKey
having SUM(ExtendedAmount) > 4000000

select 
EmployeeKey
,SUM(ExtendedAmount) as soma
from dbo.FactResellerSales
where EmployeeKey in ('281', '288')
group by EmployeeKey
having Sum(ExtendedAmount) > 10000

select 
FirstName,
Count(FirstName) as quantidade
from [dbo.DimEmployee]
where Gender = 'F' -- filtrar colunas
group by FirstName
having COUNT(FirstName) > 3 -- filtrar funções de agregação
