--Task#6
SELECT DISTINCT
       [soh].[CustomerID],
       [BikeName] = [pr].[Name],
       [soh].[OrderDate],
       [soh].[OnlineOrderFlag]
FROM [Sales].[SalesOrderHeader] [soh]
     INNER JOIN [Sales].[SalesOrderDetail] [sod] ON [sod].[SalesOrderID] = [soh].[SalesOrderID]
     INNER JOIN [Production].[Product] [pr] ON [pr].[ProductID] = [sod].[ProductID]
     INNER JOIN [Production].[ProductSubcategory] [psc] ON [psc].[ProductSubcategoryID] = [pr].[ProductSubcategoryID]
     INNER JOIN [Production].[ProductCategory] [pc] ON [pc].[ProductCategoryID] = [psc].[ProductCategoryID]
WHERE [soh].[OrderDate] = '2013-01-01 00:00:00.000'
  AND [soh].[OnlineOrderFlag] = 1
  AND [pc].[Name] = 'Bikes'
 ORDER BY [soh].[CustomerID], [BikeName]
;
