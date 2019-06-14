--Task#1
SELECT 
       BusinessEntityID, 
       FirstName, 
       MiddleName, 
       LastName
FROM [Person].[Person]
WHERE BusinessEntityID  IN (1,2,3)
UNION ALL
SELECT 
       BusinessEntityID, 
       FirstName, 
       MiddleName, 
       LastName
FROM [Person].[Person]
WHERE BusinessEntityID  IN (1,2,3)
UNION ALL
SELECT 
       BusinessEntityID, 
       FirstName, 
       MiddleName, 
       LastName
FROM [Person].[Person]
WHERE BusinessEntityID  IN (1,2,3)
ORDER BY BusinessEntityID;