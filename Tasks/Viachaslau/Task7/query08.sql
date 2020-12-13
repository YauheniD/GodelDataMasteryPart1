USE tempdb;

IF OBJECT_ID('dbo.Product') IS NOT NULL
       DROP TABLE dbo.Product;

SELECT *
INTO dbo.Product
FROM AdventureWorks2019.Production.Product AS OH

ALTER TABLE dbo.Product ADD RowID INT

UPDATE T1
SET T1.RowID = T1.NewRowNum
FROM (
       SELECT RowID,
              ROW_NUMBER() OVER (
                     ORDER BY ProductID
                     ) AS NewRowNum
       FROM dbo.Product
       ) T1

SELECT *
FROM dbo.Product
;
