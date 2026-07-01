--Sempre começamos com o comando SELECT, depois escolhemos as colunas que queremos analisar, depois a tabela que queremos analisar e por fim colocamos um filtro para escolher quais linhas queremos analisar.
select top (10) --NESSE TOP ESCOLHO QUANTAS LINHAS QUERO ANALISAR
FirstName -- DESSA FORMA ESCOLHO AS COLUNAS QUE QUERO ANALISAR
, LastName
, Title
, HireDate
From dbo.DimEmployee --ESCOLHO A TABELA QUE QUERO ANALISAR

