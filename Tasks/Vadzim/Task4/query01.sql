--Query 1
SELECT
    sc.CustomerID,
    MAX(ssoh.OrderDate) AS MaxOrderDate
FROM Sales.Customer AS sc
JOIN Sales.SalesOrderHeader AS ssoh 
    ON (sc.CustomerID = ssoh.CustomerID)
GROUP BY sc.CustomerID
ORDER BY sc.CustomerID
;
