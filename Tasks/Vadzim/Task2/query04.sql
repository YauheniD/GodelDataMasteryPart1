--Query 4
SELECT
    pp.BusinessEntityID,
    pp.LastName,
    pp.FirstName
FROM Person.Person AS pp
WHERE 
    pp.BusinessEntityID NOT IN (SELECT BusinessEntityID FROM Person.BusinessEntityAddress) 
    OR
    pp.BusinessEntityID IN (SELECT BusinessEntityID FROM Person.BusinessEntityAddress 
    WHERE AddressTypeID IN (SELECT AddressTypeID FROM Person.AddressType
    WHERE Name != 'Home'))
ORDER BY pp.BusinessEntityID
;
