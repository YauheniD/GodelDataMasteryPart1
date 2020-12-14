--Task 12
MERGE AdventureWorks2019.Production.Product AS TARGET
USING  tempdb.dbo.Product AS SOURCE
ON TARGET.ProductID = SOURCE.ProductID
WHEN
	MATCHED 
	AND 
	TARGET.ModifiedDate != SOURCE.ModifiedDate
THEN UPDATE SET 
	TARGET.ListPrice = SOURCE.ListPrice,
	TARGET.ModifiedDate = SOURCE.ModifiedDate
WHEN NOT MATCHED BY TARGET
THEN INSERT 
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
        ModifiedDate)
VALUES  
	( 
		SOURCE.Name,
        SOURCE.ProductNumber,
        SOURCE.MakeFlag,
        SOURCE.FinishedGoodsFlag,
        SOURCE.Color,
        SOURCE.SafetyStockLevel,
        SOURCE.ReorderPoint,
        SOURCE.StandardCost,
        SOURCE.ListPrice,
        SOURCE.Size,
        SOURCE.SizeUnitMeasureCode,
        SOURCE.WeightUnitMeasureCode,
        SOURCE.Weight,
        SOURCE.DaysToManufacture,
        SOURCE.ProductLine,
        SOURCE.Class,
        SOURCE.Style,
        SOURCE.ProductSubcategoryID,
        SOURCE.ProductModelID,
        SOURCE.SellStartDate,
        SOURCE.SellEndDate,
        SOURCE.DiscontinuedDate,
        SOURCE.rowguid,
        GETDATE())
WHEN NOT MATCHED BY SOURCE
THEN DELETE
OUTPUT
	DELETED.*,
	INSERTED.*
;
