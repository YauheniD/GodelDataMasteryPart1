--Task#2
SELECT DISTINCT
       bea.BusinessEntityID,
       FirstName,
       LastName,
       City
FROM [Person].[Person] [p]
     INNER JOIN [Person].[BusinessEntityAddress] [bea] ON [bea].[BusinessEntityID] = [p].[BusinessEntityID]
     INNER JOIN [Person].[Address] [a] ON [a].[AddressID] = [bea].[AddressID]
WHERE [City] = 'Bellevue'
ORDER BY bea.BusinessEntityID;