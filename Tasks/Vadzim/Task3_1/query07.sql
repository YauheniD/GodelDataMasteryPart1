--Query 7
SELECT
    sc.CustomerID,
    YEAR(OrderDate) AS Year,
    SalesOrderID,
    TotalDue,
    SUM(TotalDue) OVER(PARTITION BY YEAR(OrderDate) ) AS CustomerSalesOverYear,
    SUM(TotalDue) OVER(PARTITION BY sc.CustomerID) AS TotalCustomerSales,
    SUM(TotalDue) OVER() AS TotalBusinessSales
FROM Sales.Customer AS sc
JOIN Sales.SalesOrderHeader AS ssoh ON (ssoh.CustomerID = sc.CustomerID)
JOIN Sales.SalesTerritory AS sst ON (sc.TerritoryID = sst.TerritoryID)
WHERE
    sst.Name = 'Northeast'
ORDER BY CustomerID, Year
;
