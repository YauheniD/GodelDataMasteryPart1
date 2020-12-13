WITH C
AS (
       SELECT TOP 10 Name,
              ListPrice
       FROM tempdb.dbo.Product
       WHERE ListPrice != 0
       ORDER BY ListPrice
       )
DELETE
FROM C

SELECT *
FROM tempdb.dbo.Product
;
