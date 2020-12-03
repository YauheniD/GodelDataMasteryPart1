--Task#3
SELECT DISTINCT
       [c].[CustomerID],
       [CustomerFullName] = [p].[FirstName] + ' ' + ISNULL([p].[MiddleName] + ' ', '') + [p].[LastName],
       SalesOrderID,
       OrderDate
FROM [Sales].[Customer] [c]
     LEFT JOIN [Person].[Person] [p] ON [p].[BusinessEntityID] = [c].[PersonID]
     LEFT JOIN [Sales].[SalesOrderHeader] [soh] ON [soh].[CustomerID] = [c].[CustomerID]
WHERE OrderDate = '2013-01-01 00:00:00.000' OR [soh].[CustomerID] IS NULL
ORDER BY [c].[CustomerID]
;
