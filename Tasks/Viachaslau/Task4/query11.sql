SELECT DISTINCT OH.CustomerID,F.SalesOrderID,F.OrderDate,F.SalesPersonID FROM Sales.SalesOrderHeader AS OH
CROSS APPLY Sales.MostRecentOrders(OH.CustomerID,3) AS F
ORDER BY OH.CustomerID
;
