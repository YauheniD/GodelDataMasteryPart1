--Query 4
WITH Row_T
AS (
    SELECT SalesOrderID,
           OrderDate,
           CustomerID,
           ROW_NUMBER() OVER (ORDER BY OrderDate, SalesPersonID) rownum
    FROM Sales.SalesOrderHeader)
SELECT *
FROM Row_T
WHERE Row_T.rownum < 101
      AND
      Row_T.rownum > 9
;
