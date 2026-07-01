-- Função Like
-- Começa com and = like 'and%'
-- termina com na = like '%na'
-- tem em algum lugar no nome = like '%ja%'
-- limitar caracteres = like '%ja_' a quantidade de underline é a quantidade de letras

select *

From [dbo.DimEmployee]
where FirstName like '%ja'

order by FirstName