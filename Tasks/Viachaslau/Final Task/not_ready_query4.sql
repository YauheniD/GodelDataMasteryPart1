--something wrong with joins
SELECT DISTINCT PC.Name,
       SUM(ListPrice) OVER (PARTITION BY PC.Name) AS CategoryTotal,
       SUM(ListPrice) OVER() AS OverallTotal,
	   CAST(((CAST(SUM(ListPrice) OVER(PARTITION BY PC.Name) AS FLOAT) / (CAST(SUM(ListPrice) OVER() AS FLOAT)))) * 100 AS FLOAT) AS CategoryPercentage

FROM Production.ProductCategory AS PC
INNER JOIN Production.ProductSubcategory AS PS
       ON PC.ProductCategoryID = PS.ProductCategoryID
INNER JOIN Production.Product AS P
       ON P.ProductSubcategoryID = PS.ProductSubcategoryID
INNER JOIN Sales.SalesOrderDetail AS OD
       ON OD.ProductID = P.ProductID
INNER JOIN Sales.SalesOrderHeader AS OH
       ON OH.SalesOrderID = OD.SalesOrderID
WHERE OH.OrderDate BETWEEN '06/01/2014'
              AND '12/31/2014'
