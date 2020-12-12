--Query 7
SELECT DISTINCT
    ssoh.CustomerID,
    pr.Name
FROM Sales.Customer AS sc
JOIN Sales.SalesOrderHeader AS ssoh 
    ON sc.CustomerID=ssoh.CustomerID
JOIN Sales.SalesOrderDetail AS ssod 
    ON ssod.SalesOrderID=ssoh.SalesOrderID
JOIN Production.Product AS  pr 
    ON pr.ProductID=ssod.ProductID
WHERE pr.Name = 'Mountain-300 Black, 48'
ORDER BY ssoh.CustomerID
;
