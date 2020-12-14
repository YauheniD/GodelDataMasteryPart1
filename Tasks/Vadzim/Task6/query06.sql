--Query 6
SELECT
    ssoh.CustomerID,
    ssoh.SalesOrderID,
    ssoh.SubTotal,
    RANK() OVER (partition by CustomerID  order by SubTotal) AS rnk,
    DENSE_RANK() OVER (partition by CustomerID  order by SubTotal) AS drnk
FROM Sales.SalesOrderHeader AS ssoh
;
