--Query 6
WITH T5 (OrderDate, RowNumber)
AS
(
    SELECT 
        YEAR(OrderDate),
        COUNT(DISTINCT cc.CustomerID) 
    FROM Sales.Customer AS cc
    JOIN Sales.SalesOrderHeader AS ssoh 
        ON (cc.CustomerID = ssoh.CustomerID )
    GROUP BY YEAR(OrderDate)
    
)
SELECT
    OrderDate,
    RowNumber
FROM T5
WHERE RowNumber > 10000
;
