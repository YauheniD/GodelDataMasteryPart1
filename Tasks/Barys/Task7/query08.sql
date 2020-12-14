--Task 8
SELECT
USE tempdb
;

SELECT * INTO dbo.Product FROM AdventureWorks2019.Production.Product
;

ALTER TABLE dbo.Product ADD RowID INT
;

UPDATE P
SET P.RowID = RN.NewRowNum
FROM dbo.Product P
JOIN 
	(
		SELECT 
			ProductID,
			ROW_NUMBER() OVER (ORDER BY ProductID) AS NewRowNum
		FROM dbo.Product
	) RN
	ON RN.ProductID = P.ProductID
;
