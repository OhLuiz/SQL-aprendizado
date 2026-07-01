-- IN limitador de critérios
select *
from [dbo.DimEmployee]

where EmployeeKey in (2,5,7) -- com isso definimos restrição de valores na coluna escolhida
-- pode ser feito da mesma forma usando where e OR

-- IN limitador de critérios
select *
from [dbo.DimEmployee]

where FirstName not in ('Guy','Roberto','Thierry','Jossef') -- com isso definimos restrição de valores na coluna escolhida
and DepartmentName not in ('Marketing','Production')
-- pode ser feito da mesma forma usando where e OR
order by DepartmentName
