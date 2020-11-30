SELECT Person.Person.BusinessEntityID, 
		Person.Person.LastName, 
		Person.Person.FirstName
FROM Person.Person
LEFT JOIN Person.BusinessEntityAddress
		ON Person.Person.BusinessEntityID = Person.BusinessEntityAddress.BusinessEntityID
LEFT JOIN Person.Address
		ON Person.BusinessEntityAddress.AddressID = Person.Address.AddressID
WHERE Person.Address.AddressID IS NULL OR Person.BusinessEntityAddress.AddressTypeID != 2
ORDER BY Person.Person.BusinessEntityID;