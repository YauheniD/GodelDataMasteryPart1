--something wrong with joins

SELECT DISTINCT PROD_CAT.Name, SUM(ListPrice) OVER(PARTITION BY PROD_CAT.NAME) AS CategoryTotal 
FROM Sales.SalesOrderDetail AS OD
LEFT JOIN Production.Product AS PROD_PROD
ON PROD_PROD.ProductID = OD.ProductID
LEFT JOIN Production.ProductSubcategory AS PROD_SUBCAT
ON PROD_SUBCAT.ProductCategoryID = PROD_PROD.ProductSubcategoryID
LEFT JOIN Production.ProductCategory AS PROD_CAT
ON PROD_SUBCAT.ProductCategoryID = PROD_CAT.ProductCategoryID
/*LEFT JOIN Sales.SalesOrderHeader AS OH
ON OH.SalesOrderID = OD.SalesOrderID
WHERE OH.OrderDate BETWEEN '06/01/2014' AND '12/31/2014'*/