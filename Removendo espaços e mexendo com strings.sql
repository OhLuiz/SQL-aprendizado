--LTRIM -TIRA ESPAÇOS A ESQUERDA
--RTRIM -TIRA ESPAÇOS A DIREITA
--REPLICATE
--REVERSE

select 
'edmilson' as normal,
'      edmilson' as es_direita,
LTRIM('      edmilson') AS CORRETO,
'edmilson         ' as es_esquerda,
RTRIM('edmilson         ') as correto,
'     edmilson       ' as es_esce,
RTRIM(LTRIM('     edmilson       ')) as correto

SELECT TOP 10
LTRIM(FirstName) AS FIRSTNAME,
LASTNAME,
CONCAT(FIRSTNAME,' ' ,LASTNAME) AS 'NOME COMPLETO'
FROM AdventureWorksDW2019.dbo.DimEmployee

--FUNÇÕES REPLICATE E REVERSE
select 
REPLICATE('edmilson',2) --ARGUMENTO, QUANTAS VEZES QUER REPLICAR
,REVERSE('edmilson')