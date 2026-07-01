--Função Case (Caso quando) criando nova coluna adicional

--case =  caso
--when = quando
--then  = então
--else = senão


select
EnglishProductSubcategoryName as sub_categoria
,case
when EnglishProductSubcategoryName = 'Mountain Bikes'       then 'Sport'
when EnglishProductSubcategoryName = 'Forks'                then 'Casa'
when EnglishProductSubcategoryName = 'Headsets'             then 'Informática'

end as categoria

from AdventureWorksDW2019.dbo.DimProductSubcategory


select 
EnglishProductSubcategoryName
,case
when EnglishProductSubcategoryName in ('Mountain Bikes', 'Road Bikes', 'Touring Bikes', 'Handlebars', 'Bottom Brackets') then 'Sport'
else 'sem_categoria'
end as categoria
from AdventureWorksDW2019.dbo.DimProductSubcategory
order by 1

select 
EnglishProductSubcategoryName
,case
when EnglishProductSubcategoryName in ('Mountain Bikes', 'Road Bikes', 'Touring Bikes', 'Handlebars', 'Bottom Brackets') then 'Sport'
when EnglishProductSubcategoryName in ('Brakes', 'Forks', 'Fenders', 'Gloves') then 'Casa'
else 'sem_categoria'
end as categoria
from AdventureWorksDW2019.dbo.DimProductSubcategory
order by 1