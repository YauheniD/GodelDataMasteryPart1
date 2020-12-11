--Query 6
WITH T5 (OrderDate, CountofCustomers)
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
    CountofCustomers
FROM T5
WHERE CountofCustomers > 10000
;
