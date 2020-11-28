SELECT BusinessEntityID,
       FirstName,
       MiddleName,
       LastName
FROM Person.Person
WHERE LastName LIKE '%t%t%t%'
;
