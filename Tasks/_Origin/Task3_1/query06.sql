--¹ 6. Show total UnitPriceof each SalesOrderID in the year 2005.
SELECT TOP 10 soh.SalesOrderID, SUM(LineTotal) AS TotalPrice
FROM  Sales.SalesOrderDetail sod 
JOIN Sales.SalesOrderHeader soh
  ON soh.SalesOrderID = sod.SalesOrderID   
WHERE YEAR(soh.OrderDate) = 2011
GROUP BY soh.SalesOrderID 
ORDER BY TotalPrice DESC
;
