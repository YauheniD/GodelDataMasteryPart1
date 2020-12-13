--Query 7
SELECT
    ssoh.CustomerID,
    ssoh.SalesOrderID,
    ssoh.SubTotal,
    COALESCE(ssoh.SubTotal - LAG(ssoh.SubTotal) OVER(ORDER BY ssoh.CustomerID, ssoh.SalesOrderID), ssoh.SubTotal) AS diffprev,
    ssoh.SubTotal - LEAD(ssoh.SubTotal) OVER(ORDER BY ssoh.CustomerID, ssoh.SalesOrderID) AS diffnext
FROM Sales.SalesOrderHeader AS ssoh
;
