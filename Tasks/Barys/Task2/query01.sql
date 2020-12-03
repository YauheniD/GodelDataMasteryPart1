--Query 1
SELECT TOP 3 
    BusinessEntityID,
    FirstName,
    MiddleName,
    LastName
FROM Person.Person
UNION ALL
SELECT TOP 3
    BusinessEntityID,
    FirstName,
    MiddleName,
    LastName
FROM Person.Person
UNION ALL
SELECT TOP 3
    BusinessEntityID,
    FirstName,
    MiddleName,
    LastName
FROM Person.Person
ORDER BY BusinessEntityID
;
