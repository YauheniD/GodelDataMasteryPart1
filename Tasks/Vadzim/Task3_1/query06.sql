--Query 6
SELECT TOP(10)
    ssod.SalesOrderID,
    MAX(ssod.LineTotal) AS TotalPrice
FROM Sales.SalesOrderDetail AS ssod
JOIN Sales.SalesOrderHeader AS ssoh ON (ssod.SalesOrderID = ssoh.SalesOrderID)
WHERE YEAR(ssoh.OrderDate) = 2011
GROUP BY ssod.SalesOrderID
ORDER BY TotalPrice DESC
;
