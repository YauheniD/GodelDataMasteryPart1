--Query  4
SELECT DISTINCT PC.Name,
       SUM(SOD.LineTotal) OVER (PARTITION BY PC.Name) CategoryTotal,
       SUM(SOD.LineTotal) OVER () AS OverallTotal,
       (SUM(product.ListPrice) OVER (PARTITION BY PC.Name) * 100) / SUM(product.ListPrice) OVER ()  CategoryPercentage
FROM Production.ProductCategory PC
INNER JOIN Production.ProductSubcategory PS
       ON PC.ProductCategoryID = PS.ProductCategoryID
INNER JOIN Production.Product product
       ON product.ProductSubcategoryID = PS.ProductSubcategoryID
INNER JOIN Sales.SalesOrderDetail AS SOD
       ON SOD.ProductID = product.ProductID
INNER JOIN Sales.SalesOrderHeader AS SOH
       ON SOH.SalesOrderID = SOD.SalesOrderID
WHERE SOH.OrderDate BETWEEN  CONVERT(DATETIME, '2014-06-01', 101)  AND  CONVERT(DATETIME, '2014-12-31', 101)
;
