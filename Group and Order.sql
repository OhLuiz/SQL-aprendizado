-- Funções de agragaçã Group BY SUM, COUNT, AVG, MIN, MAX
USE AdventureWorksDW2019
GO
select  
ProductKey
from FactResellerSales
group by ProductKey
order by 1

select 
title
from [dbo.DimEmployee]
group by Title

select 
DepartmentName
from [dbo.DimEmployee]
group by DepartmentName
order by 1