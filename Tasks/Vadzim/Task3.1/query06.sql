--Query 6
SELECT 
	SalesOrderID,
	SUM(UnitPrice) AS TotalUnitPrice
FROM Sales.SalesOrderDetail
WHERE SalesOrderID IN (SELECT SalesOrderID FROM Sales.SalesOrderHeader WHERE YEAR(OrderDate) = 2005)
GROUP BY SalesOrderID
ORDER BY SalesOrderID
;
