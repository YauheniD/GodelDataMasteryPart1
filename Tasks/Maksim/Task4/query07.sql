--Query 7
WITH tab
AS (
    SELECT DISTINCT
           YEAR(OrderDate) Year,
           CustomerID
    FROM Sales.SalesOrderHeader
    )
SELECT tab.Year,
       COUNT(tab.CustomerID) count,
       ISNULL(LAG(COUNT(tab.CustomerID)) OVER (ORDER BY tab.Year),0) PrvNumCusts,
       ISNULL(COUNT(tab.CustomerID) - LAG(COUNT(tab.CustomerID)) OVER (ORDER BY tab.year),0) growth
FROM tab
GROUP BY tab.Year
ORDER BY tab.Year
;
