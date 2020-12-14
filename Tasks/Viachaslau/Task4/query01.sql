SELECT CustomerID,
       MAX(OrderDate) AS 'OrderDate'
FROM Sales.SalesOrderHeader
GROUP BY CustomerID
ORDER BY CustomerID
;
