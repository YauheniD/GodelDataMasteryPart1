--Query 8
DROP VIEW IF EXISTS Sales.vCustOrders;
GO
CREATE VIEW Sales.vCustOrders
AS
SELECT SOH.CustomerID,
       YEAR(SOH.OrderDate) year,
       SUM(SOD.OrderQty)   TotalQty
FROM Sales.SalesOrderHeader SOH
INNER JOIN Sales.SalesOrderDetail SOD
        ON SOD.SalesOrderID = SOH.SalesOrderID
GROUP BY SOH.CustomerID, YEAR(SOH.OrderDate)
GO
SELECT *
FROM Sales.vCustOrders
;
