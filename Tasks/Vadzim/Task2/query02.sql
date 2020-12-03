--Query 2
SELECT DISTINCT
    pp.BusinessEntityID,
    pp.FirstName,
    pp.LastName,
    pa.City
FROM Person.BusinessEntityAddress AS pbea
JOIN Person.Person AS pp 
    ON (pbea.BusinessEntityID = pp.BusinessEntityID)
JOIN Person.Address AS pa 
    ON (pbea.AddressID = pa.AddressID)
WHERE pa.City = 'Bellevue'
;
