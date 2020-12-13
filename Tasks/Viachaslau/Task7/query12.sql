--seems like i misunderstood something

MERGE AdventureWorks2019.Production.Product AS TARGET
USING  tempdb.dbo.Product AS SOURCE
ON TARGET.ProductID = SOURCE.ProductID
WHEN MATCHED AND TARGET.ListPrice <> SOURCE.ListPrice OR TARGET.ModifiedDate <> SOURCE.ModifiedDate
THEN UPDATE SET TARGET.ListPrice = SOURCE.ListPrice, TARGET.ModifiedDate = SOURCE.ModifiedDate
WHEN NOT MATCHED BY TARGET
THEN INSERT (ListPrice, ModifiedDate) VALUES (SOURCE.ListPrice, SOURCE.ModifiedDate)
WHEN NOT MATCHED BY SOURCE
THEN DELETE
OUTPUT $action,
DELETED.ProductID
;
