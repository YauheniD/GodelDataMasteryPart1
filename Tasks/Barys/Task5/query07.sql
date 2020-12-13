--Task 7
SELECT 
    CustomerID,
    SalesOrderID,
    SubTotal,
    SubTotal - LAG(SubTotal) OVER(PARTITION BY CustomerID ORDER BY SubTotal ) AS diffprev,
    SubTotal - LEAD(SubTotal) OVER(PARTITION BY CustomerID ORDER BY SubTotal) AS diffnext
FROM Sales.SalesOrderHeader
;
