--Query 7
WITH CTE (OrderDate, RowNumber, rn)
AS
(
    SELECT 
        YEAR(OrderDate),
        COUNT(DISTINCT cc.CustomerID) ,
        ROW_NUMBER() OVER ( ORDER BY  YEAR(OrderDate)) AS rn
    FROM Sales.Customer AS cc
    JOIN Sales.SalesOrderHeader AS ssoh 
        ON (cc.CustomerID = ssoh.CustomerID )
    GROUP BY YEAR(OrderDate)
    
)
SELECT
    c.OrderDate,
    c.RowNumber,
    p.RowNumber,
    c.RowNumber - p.RowNumber
FROM CTE AS c
LEFT JOIN CTE AS p 
    ON (p.rn + 1 = c.rn)
;
