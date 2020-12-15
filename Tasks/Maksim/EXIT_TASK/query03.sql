--Query  3
SELECT DISTINCT
       PC.Name
FROM Sales.SalesOrderHeader SOH
INNER JOIN Sales.SalesOrderDetail SOD
        ON SOH.SalesOrderID = SOD.SalesOrderID
INNER JOIN Production.Product product
        ON  SOD.ProductID = product.ProductID
INNER JOIN Production.ProductSubcategory PS
        On product.ProductSubcategoryID = PS.ProductSubcategoryID
INNER JOIN Production.ProductCategory PC
        ON PS.ProductCategoryID = PC.ProductCategoryID
WHERE SOH.OrderDate BETWEEN CONVERT(DATETIME, '2014-06-01', 101) AND  CONVERT(DATETIME, '2014-12-31', 101)
ORDER BY PC.Name
;
