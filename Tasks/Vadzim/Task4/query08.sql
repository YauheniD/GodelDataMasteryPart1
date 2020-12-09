--Query 8
CREATE VIEW vCustOrders
AS
(
    SELECT DISTINCT
        cc.CustomerID,
        YEAR(OrderDate) AS YEAR,
        COUNT(*) OVER (PARTITION BY cc.CustomerID, YEAR(OrderDate) ) AS COUNT 
    FROM Sales.Customer AS cc
    JOIN Sales.SalesOrderHeader AS ssoh 
        ON (cc.CustomerID = ssoh.CustomerID )
    
)
SELECT *
FROM vCustOrders
ORDER BY CustomerID
;
