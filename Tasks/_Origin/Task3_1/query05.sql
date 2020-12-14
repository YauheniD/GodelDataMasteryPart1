-- # 5. Get the list of the SalesOrderID having total UnitPrice more than 25000 from Sales.SalesOrderDetail
SELECT SalesOrderID
FROM Sales.SalesOrderDetail
GROUP BY SalesOrderID
HAVING SUM(UnitPrice) > 25000
ORDER BY SalesOrderID
;
