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
JOIN Production.ProductCategory AS ppc
    ON (ppsc.ProductCategoryID = ppc.ProductCategoryID)
WHERE 
    ssoh.OrderDate = '2013-01-01'
    AND 
    ssoh.OnlineOrderFlag = 'True'
    AND
    ppc.Name = 'Bikes'
ORDER BY ssoh.CustomerID
;
