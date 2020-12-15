--Query 10
SET IDENTITY_INSERT tempdb.dbo.Product ON
INSERT INTO tempdb.dbo.Product(ProductID,
    Name,
    ProductNumber,
    MakeFlag,
    FinishedGoodsFlag,
    Color,
    SafetyStockLevel,
    ReorderPoint,
    StandardCost,
    ListPrice,
    Size,
    SizeUnitMeasureCode,
    WeightUnitMeasureCode,
    Weight,
    DaysToManufacture,
    ProductLine,
    Class,
    Style,
    ProductSubcategoryID,
    ProductModelID,
    SellStartDate,
    SellEndDate,
    DiscontinuedDate,
    rowguid,
    ModifiedDate)
SELECT 
    ProductID,
    Name,
    ProductNumber,
    MakeFlag,
    FinishedGoodsFlag,
    Color,
    SafetyStockLevel,
    ReorderPoint,
    StandardCost,
    ListPrice + 5,
    Size,
    SizeUnitMeasureCode,
    WeightUnitMeasureCode,
    Weight,
    DaysToManufacture,
    ProductLine,
    Class,
    Style,
    ProductSubcategoryID,
    ProductModelID,
    SellStartDate,
    SellEndDate,
    DiscontinuedDate,
    rowguid,
    GETDATE() 
FROM AdventureWorks2019.Production.Product
WHERE ProductID IN (SELECT DISTINCT ssod.ProductID
    FROM AdventureWorks2019.Sales.SalesOrderDetail AS ssod
    JOIN AdventureWorks2019.Sales.SalesOrderHeader AS ssoh 
        ON (ssod.SalesOrderID = ssoh.SalesOrderID)
    JOIN(
    SELECT TOP(10) 
        ssod.ProductID,
        MIN(ssod.LineTotal) AS TotalPrice
    FROM AdventureWorks2019.Sales.SalesOrderDetail AS ssod
    JOIN AdventureWorks2019.Sales.SalesOrderHeader AS ssoh 
        ON (ssod.SalesOrderID = ssoh.SalesOrderID)
    GROUP BY ssod.ProductID
    ORDER BY TotalPrice ) AS X ON (X.ProductID = ssod.ProductID)
)
SET IDENTITY_INSERT tempdb.dbo.Product OFF
;
