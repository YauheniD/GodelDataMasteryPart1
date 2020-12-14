WITH T1
AS (
       SELECT DISTINCT YEAR(OrderDate) AS OrderYear,
              COUNT(CustomerID) OVER (PARTITION BY YEAR(OrderDate)) AS NumberOfCustomers
       FROM Sales.SalesOrderHeader
       )
SELECT OrderYear,
       NumberOfCustomers
FROM T1
WHERE NumberOfCustomers > 10000
;
