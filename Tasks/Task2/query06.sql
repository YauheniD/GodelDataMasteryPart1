--Query 6
SELECT 
    SH.CustomerID,
    P.Name as BikeName,
    SH.OrderDate,
    SH.OnlineOrderFlag
FROM AdventureWorks2019.Sales.SalesOrderHeader SH
JOIN AdventureWorks2019.Sales.SalesOrderDetail SD 
    ON SD.SalesOrderID = SH.SalesOrderID
JOIN AdventureWorks2019.Production.Product P 
    ON P.ProductID = SD.ProductID
JOIN AdventureWorks2019.Production.ProductSubcategory PS 
    ON P.ProductSubcategoryID = PS.ProductSubcategoryID
JOIN AdventureWorks2019.Production.ProductCategory PC 
    On PC.ProductCategoryID = PS.ProductCategoryID
WHERE 
    SH.OrderDate = '2013-01-01'
    AND 
    SH.OnlineOrderFlag = 1
    AND 
    PC.Name='Bikes'
ORDER BY SH.CustomerID
;
