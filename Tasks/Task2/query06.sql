SELECT CustomerID,
       P.Name AS BikeName,
       OrderDate,
       OnlineOrderFlag
FROM Sales.SalesOrderHeader AS OH
LEFT JOIN Sales.SalesOrderDetail AS OD
       ON OH.SalesOrderID = OD.SalesOrderID
LEFT JOIN Production.Product AS P
       ON OD.ProductID = P.ProductID
LEFT JOIN Production.ProductSubcategory AS PS
       ON P.ProductSubcategoryID = PS.ProductSubcategoryID
WHERE OH.OrderDate = '01/01/2013'
       AND OH.OnlineOrderFlag = 1
       AND PS.ProductCategoryID = 1
ORDER BY OH.CustomerID
;
