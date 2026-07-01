SELECT *
FROM DIMCUSTOMER
WHERE FIRSTNAME not in ('jon', 'Lauren', 'Carol')
and EnglishEducation NOT IN ('High School', 'Partial College')
and SpanishEducation NOT IN ('Professional', 'Gestión')

order by EnglishEducation
