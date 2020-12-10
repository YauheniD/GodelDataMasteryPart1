--Task 11
SELECT 
    SOH.CustomerID,
    MRO.SalesOrderID,
    MRO.OrderDate,
    MRO.SalesPersonID
FROM Sales.SalesOrderHeader SOH
CROSS APPLY Sales.MostRecentOrders(SOH.CustomerID, 3) MRO
ORDER BY SOH.CustomerID
;
