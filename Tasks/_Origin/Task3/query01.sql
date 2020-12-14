SELECT 
    [SalesOrderID], 
    [OrderDate],
    [CustomerID] 
FROM [Sales].[SalesOrderHeader]
WHERE 
    [OrderDate] = (SELECT MIN([OrderDate]) FROM [Sales].[SalesOrderHeader])
;
