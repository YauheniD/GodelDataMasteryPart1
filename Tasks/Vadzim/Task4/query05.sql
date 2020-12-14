--Query 5
SELECT 
    YEAR(OrderDate),
    COUNT(DISTINCT cc.CustomerID) 
FROM Sales.Customer AS cc
JOIN Sales.SalesOrderHeader AS ssoh 
    ON (cc.CustomerID = ssoh.CustomerID )
GROUP BY YEAR(OrderDate)
ORDER BY YEAR(OrderDate)
;
