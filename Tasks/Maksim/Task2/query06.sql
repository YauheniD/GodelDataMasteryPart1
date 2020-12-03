--Query  6
SELECT DISTINCT
       Sales.SalesOrderHeader.CustomerID,
       product.Name as BikeName,
       Sales.SalesOrderHeader.OrderDate,
       Sales.SalesOrderHeader.OnlineOrderFlag
FROM Sales.SalesOrderHeader
LEFT JOIN Sales.SalesOrderDetail
       ON Sales.SalesOrderHeader.SalesOrderID = Sales.SalesOrderDetail.SalesOrderID
LEFT JOIN Production.Product as product
       ON Sales.SalesOrderDetail.ProductID = product.ProductID
WHERE Sales.SalesOrderHeader.OnlineOrderFlag = 1
  AND Sales.SalesOrderHeader.OrderDate = CONVERT(DATETIME, '20130101', 101)
  AND EXISTS
    (SELECT *
     FROM Production.ProductSubcategory
     WHERE Production.ProductSubcategory.ProductCategoryID = 1 
     AND 
     Production.ProductSubcategory.ProductSubcategoryID=product.ProductSubcategoryID)
ORDER BY 1
;
