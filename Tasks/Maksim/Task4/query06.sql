--Query 6
WITH tab
AS (
    SELECT DISTINCT
           YEAR(OrderDate) Year,
           CustomerID
    FROM Sales.SalesOrderHeader
    )
SELECT tab.Year,
       COUNT(tab.CustomerID) count
FROM tab
GROUP BY tab.Year
HAVING  COUNT(tab.CustomerID) > 10000
ORDER BY tab.Year
;
