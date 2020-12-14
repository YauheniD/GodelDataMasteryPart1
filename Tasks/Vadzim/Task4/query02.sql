--Query 2
WITH Customers_CTE (CustomerID, OrderDate)
AS
(
    SELECT
        sc.CustomerID,
        MAX(ssoh.OrderDate) AS MaxOrderDate
    FROM Sales.Customer AS sc
    JOIN Sales.SalesOrderHeader AS ssoh 
        ON (sc.CustomerID = ssoh.CustomerID)
    GROUP BY sc.CustomerID
    
)
SELECT
    ssoh.SalesOrderID,
    cc.CustomerID,
    cc.OrderDate,
    ssoh.SalesPersonID
FROM Customers_CTE AS cc
JOIN Sales.SalesOrderHeader AS ssoh 
    ON (cc.CustomerID = ssoh.CustomerID AND cc.OrderDate = ssoh.OrderDate)
ORDER BY cc.CustomerID
;
