--Task 6
SELECT 
	CustomerID,
    SalesOrderID,
    SubTotal,
    RANK() OVER(PARTITION BY CustomerID ORDER BY SubTotal ) AS rnk,
    DENSE_RANK() OVER(PARTITION BY CustomerID ORDER BY SubTotal) AS drnk
FROM Sales.SalesOrderHeader
;
