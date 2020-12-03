--Query 6
SELECT 
    ssoh.CustomerID,
    pp.Name,
    ssoh.OrderDate,
    ssoh.OnlineOrderFlag
FROM Sales.SalesOrderHeader AS ssoh
JOIN Sales.SalesOrderDetail AS ssod 
    ON (ssoh.SalesOrderID = ssod.SalesOrderID)
JOIN Production.Product AS pp 
    ON (ssod.ProductID = pp.ProductID)
JOIN Production.ProductSubCategory AS ppsc 
    ON (ppsc.ProductSubcategoryID = pp.ProductSubcategoryID)
WHERE 
    ssoh.OrderDate = '2013-01-01'
    AND 
    ssoh.OnlineOrderFlag = 'True'
    AND
    ppsc.ProductCategoryID IN (SELECT ProductCategoryID FROM Production.ProductCategory WHERE Name = 'Bikes')
ORDER BY ssoh.CustomerID
;
