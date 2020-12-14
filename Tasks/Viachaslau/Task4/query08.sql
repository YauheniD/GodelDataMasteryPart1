/*CREATE VIEW vCustOrders AS (
SELECT DISTINCT CustomerID, YEAR(OrderDate) AS OrderYear, SUM(OrderQty) OVER(PARTITION BY CustomerID ORDER BY YEAR(OrderDate)) AS OrderQty
FROM Sales.SalesOrderHeader AS OH
LEFT JOIN Sales.SalesOrderDetail AS OD
ON OH.SalesOrderID = OD.SalesOrderID)
GO*/
SELECT *
FROM dbo.vCustOrders
ORDER BY CustomerID
;
