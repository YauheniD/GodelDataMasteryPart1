SELECT CustomerID,
       Production.Product.Name AS BikeName,
       OrderDate,
       OnlineOrderFlag
FROM Sales.SalesOrderHeader
LEFT JOIN Sales.SalesOrderDetail
       ON Sales.SalesOrderHeader.SalesOrderID = Sales.SalesOrderDetail.SalesOrderID
LEFT JOIN Production.Product
       ON Sales.SalesOrderDetail.ProductID = Production.Product.ProductID
LEFT JOIN Production.ProductSubcategory
       ON Production.Product.ProductSubcategoryID = Production.ProductSubcategory.ProductSubcategoryID
WHERE OrderDate = '01/01/2013'
       AND OnlineOrderFlag = 1
       AND Production.ProductSubcategory.ProductCategoryID = 1
ORDER BY CustomerID
;
