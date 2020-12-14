--Query 6
SELECT TOP 10 
    SOD.SalesOrderID,
    SUM(SOD.UnitPrice * SOD.OrderQty) AS TotalPrice
FROM Sales.SalesOrderDetail SOD
JOIN Sales.SalesOrderHeader SOH 
    ON SOD.SalesOrderID=SOH.SalesOrderID
WHERE YEAR(SOH.OrderDate) = 2011
GROUP BY SOD.SalesOrderID
ORDER BY TotalPrice DESC
;
