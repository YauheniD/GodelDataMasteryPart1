--TASK  1
SELECT 
    SOH.SalesOrderID,
    SOH.OrderDate,
    SOH.CustomerID
FROM Sales.SalesOrderHeader AS SOH
WHERE SOH.OrderDate =
    (
    SELECT MIN(SOH2.OrderDate)
    FROM Sales.SalesOrderHeader AS SOH2
    )
;
