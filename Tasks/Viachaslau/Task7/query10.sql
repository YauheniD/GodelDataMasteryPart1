UPDATE T2
SET ListPrice = ListPrice + 5,
       ModifiedDate = CURRENT_TIMESTAMP
FROM (
       SELECT TOP 10 *
       FROM tempdb.dbo.Product
       WHERE ListPrice != 0
       ORDER BY ListPrice
	   ) AS T2
;
