--Query 11
SELECT 
    sc.CustomerID,
    smro.SalesOrderID ,
    smro.OrderDate ,
    smro.SalesPersonID
FROM Sales.Customer AS sc
CROSS APPLY Sales.MostRecentOrders(sc.CustomerID, 3)  AS smro
ORDER BY CustomerID
;
