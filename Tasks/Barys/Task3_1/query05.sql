--Query 5
SELECT 
    SalesOrderID
FROM Sales.SalesOrderDetail
GROUP BY SalesOrderID
HAVING SUM(UnitPrice) > 25000
ORDER BY SalesOrderID
;
