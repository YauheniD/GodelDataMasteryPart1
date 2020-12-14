--Query 3
SELECT DISTINCT
    ppc.Name AS ProductCategory
FROM Production.ProductCategory AS ppc
JOIN Production.ProductSubcategory AS pps ON (ppc.ProductCategoryID = pps.ProductCategoryID)
JOIN Production.Product AS pp ON (pp.ProductSubcategoryID = pps.ProductSubcategoryID)
JOIN Sales.SalesOrderDetail AS ssod ON (ssod.ProductID = pp.ProductID)
JOIN Sales.SalesOrderHeader AS ssoh ON (ssoh.SalesOrderID = ssod.SalesOrderID)
WHERE 
    SSOH.OrderDate BETWEEN '2014-06-01' AND '2014-12-31'
ORDER BY ProductCategory
;
