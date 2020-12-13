--Query 11
DROP TRIGGER IF EXISTS trg_UpdateTimeEntry
CREATE TRIGGER trg_UpdateTimeEntry
ON tempdb.dbo.Product
AFTER UPDATE
AS
    UPDATE tempdb.dbo.Product
    SET ModifiedDate = GETDATE()
    WHERE ProductID IN (SELECT DISTINCT ProductID FROM Inserted)


UPDATE tempdb.dbo.Product
SET ListPrice = 
    CASE
        WHEN ProductSubcategoryID = 1 THEN ListPrice + 5
        WHEN ProductSubcategoryID = 2 THEN ListPrice + 10
        WHEN ProductSubcategoryID = 3 THEN ListPrice - 5
    END
WHERE ProductSubcategoryID IN (1,2,3)
;
