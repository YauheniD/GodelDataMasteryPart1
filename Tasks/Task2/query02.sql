SELECT TOP 37 Person.BusinessEntityID,
       Person.FirstName,
       Person.LastName,
       Address.City
FROM Person.Person AS Person
INNER JOIN Person.BusinessEntityAddress AS BusinessEntityAddress
       ON Person.BusinessEntityID = BusinessEntityAddress.BusinessEntityID
INNER JOIN Person.Address AS Address
       ON BusinessEntityAddress.AddressID = Address.AddressID
WHERE Address.City = 'Bellevue'
ORDER BY Person.BusinessEntityID
;
