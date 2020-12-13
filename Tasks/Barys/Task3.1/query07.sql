--Query 7
SELECT DISTINCT
    YEAR(SOH.OrderDate) AS Year,
    SOH.SalesOrderID,
    SOH.CustomerID,
    SOH.TotalDue,
    SUM(SOH.TotalDue) OVER() AS TotalBusinessSales,
    SUM(SOH.TotalDue) OVER(PARTITION BY YEAR(SOH.OrderDate)) AS CustomerSalesOverYear,
    SUM(SOH.TotalDue) OVER(PARTITION BY C.CustomerID) AS TotalCustomerSales
FROM AdventureWorks2019.Sales.SalesOrderHeader SOH
JOIN AdventureWorks2019.Sales.Customer C ON (SOH.CustomerID = C.CustomerID)
JOIN AdventureWorks2019.Sales.SalesTerritory ST ON (C.TerritoryID = ST.TerritoryID)
WHERE
    ST.Name = 'Northeast'
ORDER BY CustomerID, Year
;
