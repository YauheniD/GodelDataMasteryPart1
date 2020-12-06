--Task 1
SELECT 
    [SalesOrderID],
    [OrderDate],
    [CustomerID]
FROM [AdventureWorks2019].[Sales].[SalesOrderHeader]
WHERE [OrderDate] = '2011-05-31'
;
