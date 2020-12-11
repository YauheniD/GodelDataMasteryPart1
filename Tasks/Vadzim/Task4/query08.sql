--Query 8
DROP VIEW IF EXISTS Sales.vCustOrders
CREATE VIEW Sales.vCustOrders
AS
(
    SELECT DISTINCT
        cc.CustomerID,
        YEAR(OrderDate) AS YEAR,
        COUNT(*) OVER (PARTITION BY cc.CustomerID, YEAR(OrderDate) ) AS COUNT 
    FROM Sales.Customer AS cc
    JOIN Sales.SalesOrderHeader AS ssoh ON (cc.CustomerID = ssoh.CustomerID )
    
)
SELECT *
FROM Sales.vCustOrders
ORDER BY CustomerID
;
