--Task 10
WITH U AS
(
    SELECT TOP 10 *
    FROM dbo.Product
    WHERE 
        Product.FinishedGoodsFlag != 0
        AND
    ListPrice != 0
    ORDER BY ListPrice
)
INSERT INTO dbo.Product 
(
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
    ModifiedDate
)
SELECT
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
FROM U;
;
