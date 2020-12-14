--Task 7
UPDATE  O
SET O.TerritoryID = SOH.TerritoryID
FROM dbo.Orders O
JOIN AdventureWorks2019.Sales.SalesOrderHeader SOH
    ON SOH.SalesOrderID = O.CustomerID
WHERE SOH.TerritoryID != O.TerritoryID
;
