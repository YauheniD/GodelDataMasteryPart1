--Query 5
SELECT DISTINCT
    ppc.Name AS CategoryName,
    AVG(pp.ListPrice) OVER(PARTITION BY ppc.Name) AS AveragePrice,
    COUNT(*) OVER(PARTITION BY ppc.Name) AS ProductsCount
FROM Production.Product AS pp
JOIN Production.ProductSubcategory AS pps 
    ON (pp.ProductSubcategoryID = pps.ProductSubcategoryID)
JOIN Production.ProductCategory AS ppc 
    ON (ppc.ProductCategoryID = pps.ProductCategoryID)
ORDER BY AveragePrice DESC
;
