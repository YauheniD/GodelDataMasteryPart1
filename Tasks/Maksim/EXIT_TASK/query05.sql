--Query  5
SELECT PC.Name,
       AVG(Product.ListPrice) AveragePrice,
       COUNT(*) ProductsCount
FROM Production.ProductCategory PC
INNER JOIN Production.ProductSubcategory PS
        ON PC.ProductCategoryID = PS.ProductCategoryID
INNER JOIN Production.Product
        On PS.ProductSubcategoryID = Product.ProductSubcategoryID
GROUP BY PC.Name
ORDER BY AveragePrice DESC
;
