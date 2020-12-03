--Query  2
SELECT DISTINCT
       person.BusinessEntityID,
       person.FirstName,
       person.LastName,
       ad.City
FROM Person.Person AS person
INNER JOIN Person.BusinessEntityAddress bea 
        ON (person.BusinessEntityID = bea.BusinessEntityID)
INNER JOIN Person.Address AS ad
        ON bea.AddressID = ad.AddressID
WHERE ad.City = 'Bellevue'
ORDER BY person.BusinessEntityID
;
