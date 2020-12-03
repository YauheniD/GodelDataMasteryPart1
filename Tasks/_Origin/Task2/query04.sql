--Task#4
SELECT 
	p.[BusinessEntityID],
	p.[LastName],
	p.[FirstName]
FROM [Person].[Person] p
    --INNER JOIN [Person].[BusinessEntity] be ON be.[BusinessEntityID] = p.[BusinessEntityID]
    LEFT JOIN [Person].[BusinessEntityAddress] bea ON bea.[BusinessEntityID] = p.[BusinessEntityID]
    LEFT JOIN [Person].[AddressType] at ON bea.[AddressTypeID] = at.[AddressTypeID]
WHERE at.[Name] <> 'Home' OR bea.[BusinessEntityID] IS NULL
ORDER BY p.[BusinessEntityID]
;
