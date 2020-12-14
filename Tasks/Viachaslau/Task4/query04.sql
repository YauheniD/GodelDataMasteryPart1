WITH T1
AS (
       SELECT SalesOrderID,
              OrderDate,
              CustomerID,
              ROW_NUMBER() OVER (
                     PARTITION BY OrderDate ORDER BY SalesOrderID
                     ) AS rownum
       FROM Sales.SalesOrderHeader
       )
SELECT *
FROM T1
WHERE rownum BETWEEN 11 AND 100
;
