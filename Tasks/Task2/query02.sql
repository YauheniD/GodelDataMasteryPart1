--Query 2
SELECT DISTINCT
    P.BusinessEntityID,
    P.FirstName,
    P.LastName,
    A.City
FROM Person.Person P
JOIN Person.BusinessEntityAddress B 
    ON P.BusinessEntityID=B.BusinessEntityID
JOIN Person.Address A 
    ON B.AddressID=A.AddressID
WHERE A.City = 'Bellevue'
;
