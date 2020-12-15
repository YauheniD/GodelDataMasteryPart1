--Query 8
ALTER TABLE tempdb.dbo.Product ADD RowID INT NULL
;

UPDATE x
SET x.RowId = x.New
FROM (
      SELECT RowId, ROW_NUMBER() OVER (ORDER BY ProductID) AS New
      FROM tempdb.dbo.Product
      ) x
;
