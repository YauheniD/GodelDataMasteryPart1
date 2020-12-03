--Task 2
SELECT [SalesOrderID],
       [OrderDate],
       [TotalDue]
FROM [Sales].[SalesOrderHeader]
WHERE YEAR([OrderDate]) = 2011
  AND EOMONTH([OrderDate]) = [OrderDate]
  AND [TotalDue] < 1000
;
