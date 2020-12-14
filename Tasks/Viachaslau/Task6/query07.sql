SELECT CustomerID,
       SalesOrderID,
       SubTotal,
       SubTotal - LAG(SubTotal, 1, 0) OVER (PARTITION BY CustomerID ORDER BY SalesOrderID) AS diffprev,
       SubTotal - LEAD(SubTotal, 1, 0) OVER (PARTITION BY CustomerID ORDER BY SalesOrderID) AS diffprev
FROM Sales.SalesOrderHeader
;
