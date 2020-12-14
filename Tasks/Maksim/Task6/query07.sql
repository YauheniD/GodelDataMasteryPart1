--Query  7
SELECT CustomerID,
       SalesOrderID,
       SubTotal,
       ISNULL(SubTotal - LAG(SubTotal) OVER(PARTITION BY CustomerID ORDER BY SalesOrderID) ,SubTotal) diffprev,
       ISNULL(SubTotal - LEAD(SubTotal) OVER(PARTITION BY CustomerID ORDER BY SalesOrderID),SubTotal) diffnext
FROM Sales.SalesOrderHeader
;
