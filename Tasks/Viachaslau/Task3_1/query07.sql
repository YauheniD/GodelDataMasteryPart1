SELECT CustomerID,
       YEAR(OrderDate) AS 'Year',
       SalesOrderID,
       TotalDue,
       SUM(TotalDue) OVER (PARTITION BY YEAR(OrderDate)) AS TotalCustomerSalesOverYear,
       SUM(TotalDue) OVER (PARTITION BY CustomerID) AS TotalCustomerSales,
       SUM(TotalDue) OVER (PARTITION BY Name) AS TotalBussinesSales
FROM Sales.SalesOrderHeader AS OH
LEFT JOIN Sales.SalesTerritory AS ST
       ON ST.TerritoryID = OH.TerritoryID
WHERE Name = 'Northeast'
ORDER BY CustomerID, 'Year'
;
