--Task 10
SELECT [SalesOrderID],
       [OrderDate],
       DATENAME([dw], [OrderDate]) AS [Day Of Week Name]
FROM [Sales].[SalesOrderHeader]
WHERE DATEPART([dw], [OrderDate]) IN (1, 7)
AND YEAR([OrderDate]) = 2011
AND MONTH([OrderDate]) = 8
;
