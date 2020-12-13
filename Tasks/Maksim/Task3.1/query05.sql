--Query  5
SELECT SOD.SalesOrderID
FROM Sales.SalesOrderDetail SOD
GROUP BY SOD.SalesOrderID
HAVING SUM(SOD.UnitPrice)>24999
ORDER BY SOD.SalesOrderID
;
