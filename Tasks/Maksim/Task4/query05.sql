--Query 5
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
ORDER BY tab.Year
;
