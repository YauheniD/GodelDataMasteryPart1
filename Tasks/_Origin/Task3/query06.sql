SELECT DISTINCT 
       CustomerID,
       OrderDate
FROM Sales.SalesOrderHeader
WHERE YEAR(OrderDate) = 2011
  AND CustomerID NOT IN
    (
        SELECT CustomerID
        FROM Sales.SalesOrderHeader
        WHERE YEAR(OrderDate) <> 2011
    )
;
