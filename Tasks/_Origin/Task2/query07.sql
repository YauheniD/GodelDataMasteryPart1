--Task#7
SELECT DISTINCT
       [c].[CustomerID],
       [CustomerFullName] = [p].[FirstName] + ' ' + ISNULL([p].[MiddleName] + ' ', '') + [p].[LastName],
       [Has Orders in 2013] = CASE WHEN soh.SalesOrderID IS NOT NULL THEN 'Yes' ELSE 'No' END  
FROM [Sales].[Customer] c
     INNER JOIN [Person].[Person] [p] ON [p].[BusinessEntityID] = [c].[PersonID]
     LEFT JOIN [Sales].[SalesOrderHeader] [soh] ON [soh].[CustomerID] = [c].[CustomerID] AND YEAR(OrderDate) = 2013
WHERE p.FirstName = 'Zoe'
ORDER BY [c].[CustomerID]
;
