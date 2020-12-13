SELECT TOP 10 SalesOrderID,
       SUM(UnitPrice) AS TotalPrice
FROM Sales.SalesOrderDetail
WHERE SalesOrderID IN (
              SELECT SalesOrderID
              FROM Sales.SalesOrderHeader
              WHERE YEAR(OrderDate) = 2011
              )
GROUP BY SalesOrderID
ORDER BY TotalPrice DESC
;
