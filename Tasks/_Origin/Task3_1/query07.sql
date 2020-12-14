--# 7.Show individual order records spendings for customers within Northeast Territory along with Total Customer Sales Over Year, Total Sales for custemer over all years and the grand total of all sales for this region. 
SELECT CustomerID,
       YEAR(OrderDate) AS Year,
       SalesOrderID,
       TotalDue,
       SUM(TotalDue) OVER (PARTITION BY CustomerID, YEAR(OrderDate)) AS 'Total Customer Sales Over Year',
       SUM(TotalDue) OVER (PARTITION BY CustomerID) AS 'Total Customer Sales',
       SUM(TotalDue) OVER () AS 'Total Business Sales'     
FROM Sales.SalesOrderHeader soh
JOIN Sales.SalesTerritory st ON st.TerritoryID = soh.TerritoryID
WHERE Name = 'Northeast'
ORDER BY CustomerID,
         YEAR(OrderDate)
;
