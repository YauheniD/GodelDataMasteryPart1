--Query 3
SELECT BusinessEntityID,
       FirstName,
       MiddleName,
       LastName
FROM Person.Person
WHERE LEN(LastName) - LEN(REPLACE(LastName,'t','')) >= 3
;
